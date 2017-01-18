# Ya hemos visto lo que significa Powershell y su función # 
# A continuación veremos una serie de tareas en las que explicaremos los comandos # 

#Tareas 0: Comandos Básicos#

##Para conocer los comandos (CMDLETS) de los que dispone nuestra consola: 
Get-Command

##Para saber qué es lo que hace un comando:
Get-Help (Comando)
Ejemplo:
Get-Help Get-Process

##Para saber los alias de los CMDLETS: 
Get-Alias

##Para asignar alias a CMDLETS:
Set-Alias (CMDLET) -name (ALIAS)
Ejemplo
Set-Alias Get-Process -Name Procesos