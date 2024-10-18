import pandas as pd
import mysql.connector
from rapidfuzz import fuzz, process
import unicodedata
import re

# Función para eliminar tildes y convertir a mayúsculas
def normalizar_texto(texto):
    if isinstance(texto, str):
        texto = unicodedata.normalize('NFKD', texto).encode('ascii', 'ignore').decode('utf-8')
        return texto.upper() 
    return ''

# Función para validar el nombre completo
def validar_nombre_completo(nombre_completo):
    if not isinstance(nombre_completo, str):
        return ""  # Devolver vacío si no es una cadena

    # Verificar que solo contiene letras y espacios
    patron = re.compile(r"^[A-Za-zÁÉÍÓÚáéíóúÑñ\s]+$")
    if not patron.match(nombre_completo.strip()):
        return ""
    
    # Verificar que tiene al menos dos palabras
    palabras = nombre_completo.strip().split()
    if len(palabras) < 2:
        return ""
    
    return nombre_completo.strip()  # Devolver el nombre completo si es válido

# Conectar a la base de datos MySQL
conexion = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="sisare"
)

cursor = conexion.cursor()

# Definir la consulta para obtener los nombres y matrículas de la base de datos
consulta_nombres = "SELECT matricula, nombre FROM alumnos"
cursor.execute(consulta_nombres)
nombres_bd = cursor.fetchall()

# Normalizar los nombres en la base de datos
nombres_bd = [(matricula, normalizar_texto(nombre)) for matricula, nombre in nombres_bd]

# Ruta del archivo Excel con las respuestas
archivo_excel = 'C:/EXCEL/RESPUESTAS FORMULARIO.xlsx'

# Leer el archivo Excel con las respuestas
try:
    df = pd.read_excel(archivo_excel)
except FileNotFoundError:
    print(f"No se encontró el archivo: {archivo_excel}")
    exit()

# Limpiar y normalizar espacios y acentos de los nombres y apellidos
df['Apellido Paterno'] = df['Apellido Paterno'].str.strip().apply(normalizar_texto)
df['Apellido Materno'] = df['Apellido Materno'].str.strip().apply(normalizar_texto)
df['Nombre (s)'] = df['Nombre (s)'].str.strip().apply(normalizar_texto)

# Crear la columna del nombre completo en el DataFrame en mayúsculas
df['nombre_completo_excel'] = (df['Apellido Paterno'] + ' ' + df['Apellido Materno'] + ' ' + df['Nombre (s)']).str.upper()

# Consulta para actualizar los nombres del padre y la madre
consulta_actualizacion = """
    UPDATE alumnos 
    SET nombre_p = %s, nombre_m = %s
    WHERE matricula = %s
"""

# Recorrer cada fila del archivo Excel
for index, fila in df.iterrows():
    nombre_excel = fila['nombre_completo_excel']
    nombre_p = validar_nombre_completo(fila['Nombre completo del padre o tutor legal'])  # Validar nombre del padre
    nombre_m = validar_nombre_completo(fila['Nombre completo de la madre o tutor legal'])  # Validar nombre de la madre

    # Normalizar a mayúsculas si los nombres son válidos
    nombre_p = nombre_p.upper() if nombre_p else ""
    nombre_m = nombre_m.upper() if nombre_m else ""

    # Buscar el nombre más similar en la base de datos
    nombre_similar = process.extractOne(nombre_excel, [nombre[1] for nombre in nombres_bd], scorer=fuzz.ratio)

    # Si la similitud es suficientemente alta, por ejemplo mayor al 85%, actualizar los datos
    if nombre_similar and nombre_similar[1] >= 85:
        matricula = [nombre[0] for nombre in nombres_bd if nombre[1] == nombre_similar[0]][0]  # Obtener la matrícula
        print(f"Actualizando datos para: {nombre_excel} con similitud de {nombre_similar[1]}%")
        
        # Actualizar nombres del padre y madre
        try:
            cursor.execute(consulta_actualizacion, (nombre_p, nombre_m, matricula))
        except mysql.connector.Error as err:
            print(f"Error al actualizar datos para {nombre_excel}: {err}")

# Confirmar los cambios y cerrar la conexión
conexion.commit()
cursor.close()
conexion.close()

print("Actualización de nombres completada.")