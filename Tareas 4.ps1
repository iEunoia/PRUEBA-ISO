#Tareas 4: Abrir,Cerrar Procesos#

##Comandos para ejecutar procesos:
Invoke-Item C:\Windows\system32\notepad.exe 
Start-Process Notepad.exe

##Comandos para terminar un proceso:
Get-Process -Name notepad | Stop-Process
Get-Process -Name notepad | ForEach-Object -Process {$_.Kill()}

##Además...:
##Abre todos los .txt de nuestra localización:
Invoke-Item *.txt

##Abrir un proceso y saber si responde o no:
$proc=[System.diagnostics.process]::Start("notepad")
$proc.responding
$proc.hasexited