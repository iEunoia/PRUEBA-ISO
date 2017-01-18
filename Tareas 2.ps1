#Tareas 2: Primeros comandos#

##Seleccionas el nombre y el consumo de cpu de cada proceso:
Get-Process | Select-Object Name,CPU 

##Agrupas los procesos:
Get-Process | Group-Object

##Obtienes la fecha, el nombre y consumo de los procesos y los guardas en un documento txt:
Get-Date | Select-Object | Out-File C:\ISO\Documento.txt
Get-Process | Select-Object Name,CPU | Out-File C:\ISO\Documento.txt –Append

##Ruta dónde se ejecutan los procesos:
Get-Process -FileVersionInfo


