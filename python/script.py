import pandas as pd
import mysql.connector
import warnings
import subprocess  # Importar el módulo subprocess

# Ignorar advertencias
warnings.filterwarnings("ignore", category=UserWarning, module="openpyxl")

# Conectar a la base de datos MySQL
conexion = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="sisare"
)

cursor = conexion.cursor()

# Leer el archivo Excel
archivo_excel = 'C:/EXCEL/LISTAS OFICIALES.xlsx'
xls = pd.ExcelFile(archivo_excel)

# Definir las consultas SQL para insertar y actualizar
consulta_insercion = """
    INSERT INTO alumnos (grupo, especialidad, matricula, generacion, nombre, genero, cantidad_r, cantidad_s, cantidad_c)
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
"""

consulta_actualizacion = """
    UPDATE alumnos 
    SET grupo = %s, especialidad = %s, generacion = %s
    WHERE matricula = %s
"""

consulta_verificacion = "SELECT matricula FROM alumnos WHERE matricula = %s"

# Definir las columnas requeridas
columnas_requeridas = ['GRUPO', 'ESPECIALIDAD', 'NO. CONTROL', 'NOMBRE', 'GENERO']

# Recorrer cada hoja (cada grupo)
for hoja in xls.sheet_names:
    # Saltar la primera fila (skiprows=1)
    df = pd.read_excel(archivo_excel, sheet_name=hoja, skiprows=1)
    
    # Comprobar si las columnas necesarias existen en el archivo
    for columna in columnas_requeridas:
        if columna not in df.columns:
            raise KeyError(f"La columna '{columna}' no se encuentra en la hoja {hoja}. Verifica el archivo Excel.")

    # Limpiar los datos que vas a utilizar
    for index, fila in df.iterrows():
        try:
            # Eliminar espacios en medio del valor de la columna 'GRUPO'
            grupo = fila['GRUPO'].replace(" ", "")
            especialidad = fila['ESPECIALIDAD']  # Si no hay especialidad, puedes dejarlo vacío
            matricula = str(fila['NO. CONTROL']).replace(" ", "")  # Convertir a string y eliminar espacios
            nombre = fila['NOMBRE']
            genero = fila['GENERO']

            # Obtener los dos primeros dígitos de la matrícula como generación
            generacion = matricula[:2]  # Tomar solo los dos primeros caracteres

            # Iniciar los conteos en 0
            cantidad_r = 0
            cantidad_s = 0
            cantidad_c = 0
    
            # Verificar si la matrícula ya existe en la base de datos
            cursor.execute(consulta_verificacion, (matricula,))
            resultado = cursor.fetchone()

            if resultado:  # Si ya existe, actualizar
                cursor.execute(consulta_actualizacion, (grupo, especialidad, generacion, matricula))
            else:  # Si no existe, insertar
                cursor.execute(consulta_insercion, (grupo, especialidad, matricula, generacion, nombre, genero, cantidad_r, cantidad_s, cantidad_c))
        
        except Exception as e:
            print(f"Error al procesar la fila {index} en la hoja {hoja}: {e}")

# Confirmar los cambios y cerrar la conexión
conexion.commit()
cursor.close()
conexion.close()

print("Datos cargados exitosamente.")

# Llamar al segundo script
subprocess.run(["python", "C:/xampp/htdocs/SISARE/python/script2.py"])  # Asegúrate de poner la ruta correcta del script
