import time
import pygetwindow as gw
import pyautogui
import win32gui
import win32con

# Esperar un tiempo antes de continuar
time.sleep(5)

# Minimizar la ventana de la línea de comandos (Activar solo si se instala Python desde la Microsoft Store <3)
#cmd_hwnd = win32gui.GetForegroundWindow()
#win32gui.ShowWindow(cmd_hwnd, win32con.SW_MINIMIZE)
#time.sleep(2)

# Obtener la ventana activa
ventana_activa = gw.getActiveWindow()

# Obtener el título de la ventana activa
titulo_pagina = ventana_activa.title

print(titulo_pagina)

# Poner en foco la ventana correspondiente al título de la página
ventana = gw.getWindowsWithTitle(titulo_pagina)[0]
ventana.activate()

# Esperar un poco antes de realizar las pulsaciones de teclas
time.sleep(3)

# Simular 5 pulsaciones de la tecla "Tab"
for _ in range(5):
    pyautogui.press('tab')

# Simular la pulsación de la tecla "Enter"
pyautogui.press('enter')

# Simular 2 pulsaciones de la tecla de flecha hacia abajo
for _ in range(2):
    pyautogui.press('down')

# Simular la pulsación de la tecla "Enter"
pyautogui.press('enter')

# Simular 4 pulsaciones de la tecla "Tab"
for _ in range(4):
    pyautogui.press('tab')

# Simular la pulsación de la tecla "Enter"
pyautogui.press('enter')

# Esperar un poco antes de cerrar la ventana
time.sleep(2)

# Cerrar la ventana
pyautogui.hotkey('ctrl', 'w')