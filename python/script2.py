import pandas as pd
import mysql.connector
from rapidfuzz import fuzz, process
import unicodedata

# Función para eliminar tildes y convertir a mayúsculas
def normalizar_texto(texto):
    if isinstance(texto, str):
        texto = unicodedata.normalize('NFKD', texto).encode('ascii', 'ignore').decode('utf-8')
        return texto.upper()
    return ''

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

# Ruta del nuevo archivo Excel con las respuestas
archivo_excel = 'C:/Users/PC/OneDrive/Escritorio/Solicitud re ingreso 2024-1 (Respuestas) (1).xlsx'

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

# Combinar las columnas de apellido paterno, materno y nombre(s) para crear un nombre completo en el DataFrame
df['nombre_completo_excel'] = df['Apellido Paterno'] + ' ' + df['Apellido Materno'] + ' ' + df['Nombre (s)']

# Definir la consulta para actualizar los correos
consulta_actualizacion = """
    UPDATE alumnos 
    SET correo_p = %s, correo_m = %s
    WHERE matricula = %s
"""

# Recorrer cada fila del archivo Excel
for index, fila in df.iterrows():
    nombre_excel = fila['nombre_completo_excel']
    correo_p = fila['Correo electrónico del padre o tutor legal']  # Columna de correo del padre
    correo_m = fila['Correo electrónico de la madre o tutor legal']  # Columna de correo de la madre

    # Buscar el nombre más similar en la base de datos
    nombre_similar = process.extractOne(nombre_excel, [nombre[1] for nombre in nombres_bd], scorer=fuzz.ratio)

    # Si la similitud es suficientemente alta, por ejemplo mayor al 85%, actualizar los correos
    if nombre_similar and nombre_similar[1] >= 85:
        matricula = [nombre[0] for nombre in nombres_bd if nombre[1] == nombre_similar[0]][0]  # Obtener la matrícula
        print(f"Actualizando correos para: {nombre_excel} con similitud de {nombre_similar[1]}%")
        
        # Actualizar solo los correos del padre y madre
        try:
            cursor.execute(consulta_actualizacion, (correo_p, correo_m, matricula))
        except mysql.connector.Error as err:
            print(f"Error al actualizar correos para {nombre_excel}: {err}")

# Confirmar los cambios y cerrar la conexión
conexion.commit()
cursor.close()
conexion.close()

print("Actualización de correos completada.")
