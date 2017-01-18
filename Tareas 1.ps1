#Tareas 1: Canalizaciones#

##Seleccionar objectos o propiedades: 
Select-Object (Propiedad)
Select-Object * #Selecciona todas las propiedades#
Ejemplo:
Get-Process | Select-Object ID  #Selecciona las ID's de los procesos#

##Agrupar objetos con propiedades similares:
Group-Object (Propiedad)
Ejemplo:
Get-Process | Group-Object Name #Agrupa los procesos cuyos nombres con los mismos#

##Ordenar los objetos:
"En este caso los podemos ordenar de diferentes formas"
Sort-Object (Propiedad)
Ejemplo:
Get-Process | Sort-Object Name #Ordena los procesos alfabeticamente#
Get-Process | Sort-Object Name -Descending #Ordena los procesos alfabeticamente de forma inversa#
"Al igual que -Desc encontramos más... Sólo tabulamos y observamos"

##Contar objetos:
.count
Ejemplo:
(Get-Process).count #Cuenta los procesos ejecutandose#

##Dar formato: 
"En este caso las dos principales formas que tendremos de dar formato seran:"
#1
Format-Custom
Ejemplo:
Get-Process | Select-Object Name | Format-Custom

#2
Out-GridView 
Ejemplo:
Get-Process | Select-Object Name,CPU | Out-GridView

##Localizar o filtrar objetos:
Where-Object (Objeto) ("-"+"Propiedad") (PropiedadEspecífica)
Ejemplo:
Get-Process | Where-Object Name -Like Chrome 
"Al igual que -Like encontramos más como -value... Sólo tabulamos y observamos"

##Guardar o leer contenido de un fichero:
#1 
Out-File
Ejemplo:
Get-Process | Select-Object Name | Out-File C:\ISO\Procesos.txt
"Guarda la información (Nombre) de los procesos"

#2 
Get-Content
Ejemplo:
Get-Content C:\ISO\Procesos.txt
"Lee la información de ese fichero"