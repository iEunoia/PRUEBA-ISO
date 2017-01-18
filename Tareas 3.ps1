#Tareas 3: WMI-OBJECT#

#Debemos entender lo que significa Get-WmiObject#
Get-WmiObject
#Es un CMLET que usamos para acceder a objetos WMI y, después, cómo usar objetos WMI para realizar acciones específicas#
#Podriamos decir que es una forma de profundizar más allá del Get-Process
#Para visualizar detalles o propiedades usaremos este CMDLET de la siguiente forma:
Get-WmiObject Win32_"INFORMACIÓN REQUERIDA" 
#Para ver todas las clases:
Get-WmiObject -List
#Es díficil de explicar por lo que lo estudiaremos con ejemplos#

##Ver los procesos:
Get-WmiObject Win32_Process

##Listar el ID padre de los procesos:
Get-WmiObject Win32_Process | Select-Object ProcessId,Name,ParentProcessId

##Ver la información de nuestro sistema operativo:
Get-WmiObject Win32_OperatingSystem | Select-Object *

##Ver la carga de nuestro procesador:
Get-WmiObject win32_processor | Select-Object LoadPercentage

##Seleccionas el Nombre, la ID del proceso y dónde se ejecuta, del proceso cuya ID es X, en este caso 652:
Get-WmiObject Win32_process | Where-Object ProcessId -eq 652 | Select-Object ProcessId,Name,CommandLine

##Ver la versión de nuestro sistema operativo:
Get-WmiObject Win32_process | Select-Object WindowsVersion