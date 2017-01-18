#Tareas 5: Hilos#
#�Qu� son? 
"Un proceso tiene miniprocesos que se llaman hilos, la raz�n de dividir un proceso en unidades m�s peque�as es que la mayoria de los procesos est�n realizando
varias acciones a la vez y puede que una de estas acciones se bloquee y podr�a dejar bloqueado todo el proceso"
"Un hilo (proceso ligero) es una unidad b�sica de utilizaci�n de la CPU, y consiste en un contador de programa, un juego de registros y un espacio de pila"
"Los hilos permiten la ejecuci�n concurrente de varias secuencias de instrucciones asociadas a diferentes funciones dentro de un mismo proceso, 
compartiendo un mismo espacio de direcciones y las mismas estructuras de datos del n�cleo."

##Ver los hilos:
Get-Process | Select-Object Threads

##Ver los hilos (Formato):
Get-Process | Select-Object Threads | Format-Custom
#De esta forma vemos mucha m�s informaci�n#

##Contar los hilos:
(Get-Process | Select-Object Threads).count

##Contar los hilos via Get-WmiObject:
(Get-WmiObject Win32_Thread).count

##Ver el ID de los hilos y el ID padre:
Get-WmiObject Win32_Process | Select-Object ParentProcessId,ProcessId

##Ver el proceso que ha creado a ese hilo:
Get-WmiObject Win32_Thread | select Handle,ProcessHandle

##Ordenas los hilos por orden de prioridad:
Get-WmiObject Win32_Thread | Select-Object Priority | Sort-Object Priority 