### Ejercicio 1
---

El INDEC ha generado información resumida sobre las operaciones de comercio exterior, a nivel de producto y mes,  ordenada por el mismo criterio, que se almacenó en un fichero con el siguiente formato: 

<ul class='fileul'>
	<li>Producto
	<li>Mes
	<li>Peso Neto (Kg)
	<li>Monto (USD)
	<li>Cantidad de operadores
</ul>

Importante: a partir de marzo de 2018, el sistema de consulta del INDEC permite realizar consultas de dichas operaciones,  siempre y cuando no se vulnere la normativa de secreto estadístico;  por ello, si la cantidad de operadores es menor a 5, no está permitido mostrar el peso, ni el valor (monto) de la operación y en su lugar, se debe mostrar la palabra "confidencial".

Teniendo en cuenta lo expresado en el párrafo anterior, confeccione un algoritmo que produzca:

1. Un listado de la información contenida en el archivo (todos los campos), para un producto determinado (que se debe ingresar)  
2. Al final muestre:
    1. El monto total recaudado
    2. Monto total de casos "confidenciales"
    3. Porcentaje de confidenciales sobre el total

### Ejercicio 2
---
	
Teniendo en cuenta el ejercicio anterior

1. Generar un fichero de salida que contenga los datos (ver formato de registro abajo) de todos los productos que hayan superado un cierto monto (que se debe ingresar) y que no sean "confidenciales".

<ul class='fileul'>
	<li>Producto
	<li>Mes
	<li>Peso Neto (Kg)
	<li>Monto (USD)
</ul>

2. Al final muestre
    1. El monto total recaudado
    2. Monto total de casos no "confidenciales"
    3. El mayor monto no "confidencial"

### Ejercicio 3
---

ProCreAr COMPRA es una línea de créditos hipotecarios destinada a familias de todo el territorio nacional, para que puedan acceder a la compra de su vivienda, nueva o usada.  
Los PARTICIPANTES que superen con éxito los cruces y validaciones de datos exigidos, conformarán el universo que se evaluará a fin de determinar quienes han sido seleccionados.
Como resultado del proceso de inscripción se ha generado un fichero secuencial, ordenado por CUIT, que contiene los siguientes datos: 

<ul class='fileul'>
	<li>CUIT
	<li>Edad
	<li>Ingreso Neto Grupo Familiar ($)
	<li>Ahorro ($)
	<li>Valor vivienda a comprar ($)
</ul>

Características de la línea 

- Personas que tengan entre 18 y 55 años de edad al momento de inscripción  
- Ingresos familiares netos mensuales: a partir de 2 y hasta 7 SMVM (Sueldo Mínimo Vital y Móvil=SMVM= $12.500)  
- Ahorro mínimo: 10% del valor de compra de la vivienda  
- Valor de la vivienda hasta 140.000 UVAs. (Valor UVA=37,45 al 14/06/2019)
 
Esquema de subsidios

- Familias con ingresos a partir de 2 y hasta 5 SMVyM, que adquieran una vivienda con un valor de hasta 90.000 UVAs podrán acceder a un SUBSIDIO de 18.000 UVAs
- Familias con ingresos a partir de 2 y hasta 5 SMVyM, que adquieran una vivienda con un valor mayor a 90.000 UVAs y hasta 100.000 UVAs, podrán acceder a un SUBSIDIO de quince mil 15.000 UVAs
- Familias con ingresos mayores a 5 y hasta 7 SMVyM, que adquieran una vivienda con un valor de hasta 100.000 UVAs, podrán acceder a un SUBSIDIO de 15.000 UVAs.
- Familias con ingresos a partir de 2 y hasta 7 SMVyM, que adquieran una vivienda con un valor mayor a 100.000 UVAs y hasta ciento 140.000 UVAs, podrán acceder a un SUBSIDIO de 10.000 UVAs

Se pide: 

1. Emitir un padrón donde conste para cada participante: si ha sido seleccionado o no y de cuánto será el subsidio (en UVAs) o, en caso de no ser seleccionado, debe mostrarse un mensaje indicando el motivo, con el siguiente formato:
CUIT – SELECCIONADO (SI/NO) – SUBSIDIO EN UVA/motivo de rechazo (edad fuera de rango, ingresos familiares insuficientes, ahorros insuficientes, valor de vivienda fuera del límite)
2. Al final informar, cantidad de personas que recibirán el beneficio y monto total (en $)


### Ejercicio 4
---

Teniendo en cuenta el escenario anterior

Se pide: 

1. Emitir un padrón donde conste para cada participante: si ha sido seleccionado o no y de cuánto será el subsidio (en UVAs) o, en caso de no ser seleccionado, debe mostrarse un mensaje indicando el motivo, con el siguiente formato:
CUIT – SELECCIONADO (SI/NO) – SUBSIDIO EN UVA/motivo de rechazo (edad fuera de rango, ingresos familiares insuficientes, ahorros insuficientes, valor de vivienda fuera del límite)
2. Al final informar, cual es la cantidad total de inscripciones registradas y el valor promedio de ahorro (en $)


### Ejercicio 5
---

Una Empresa que distribuye productos farmacéuticos dispone de un archivo secuencial con la siguiente información de su stock de productos, ordenado por laboratorio, código de producto y lote.

<ul class='fileul'>
	<li>Laboratorio <a>N(3)</a>
	<li>Codigo_Producto <a>N(4)</a>
	<li>Lote <a>AN(5)</a>
	<li>Descripcion <a>AN(150)</a>
	<li>Cantidad <a>N(4)</a>
	<li>Fecha_Vencimiento <a>Fecha</a>	
</ul>

Hay varios registros para cada código de producto, con distintos números de lote, el cual es único.

La Empresa necesita generar otro archivo de salida que contenga los lotes vencidos (cuya fecha de vencimiento sea posterior a la actual), con el siguiente formato:

<ul class='fileul'>
	<li>Laboratorio <a>N(3)</a>
	<li>Codigo_Producto <a>N(4)</a>
	<li>Lote <a>AN(5)</a>
	<li>Cantidad <a>N(4)</a>
	<li>Fecha_Vencimiento <a>Fecha</a>	
</ul>

Al final informar cual fue el lote con mayor cantidad de productos vencidos, y a que laboratorio y código de producto pertenece

### Ejercicio 6
---

El Ministerio de Salud Pública de la Nación posee información almacenada en un archivo secuencial producto de relevamiento realizado en Hospitales Públicos respecto a situación actual de casos de COVID-19. Los datos se almacenan en registros con el siguiente formato:

**CasosCOVID19** Ordenado por COD_CIU, COD_HOSP y FCH_ANALISIS
<ul class='fileul'>
	<li class='clave'>COD_CIU <a>AN(4)</a>
	<li class='clave'>COD_HOSP <a>AN(4)</a>
	<li class='clave'>FCH_ANALISIS  <a>Fecha</a>
	<li>VERIFICADOS  <a>N(3)</a>
	<li>SOSPECHADOS <a>N(3)</a>	
</ul>


Elaborar un algoritmo que permita:

1. Emitir un informe con el formato que se muestra a continuación, teniendo en cuenta datos del mes de Junio del año actual:

`CIUDAD  ---    HOSPITAL   ---    FECHA DE ANALISIS   ---   CASOS VERIFICADOS `

Mostrar por pantalla la ciudad con mayor cantidad de casos sospechados.

### Ejercicio 7
---

El Poder Judicial de la Provincia cuenta con un archivo donde almacena información sobre los expedientes que han ingresado durante este año. El formato de los registros es el siguiente:


**Expedientes** Ordenado por Jurisdiccion, Fuero y Nro_Exped
<ul class='fileul'>
	<li class='clave'>Jurisdiccion <a>1..6</a>
	<li class='clave'>Fuero <a>(P,C,F,A)</a>
	<li class='clave'>Nro_Exped <a>N(8)</a>
	<li>Caratula <a>AN(250)</a>
	<li>Fecha_Ing <a>Fecha</a>
	<li>Estado <a>1..3</a>
</ul>

Estado: 1:Iniciado 2:En proceso 3:Finalizado  
Fuero: P: penal, C: civil y comercial, F: familiar, A: administrativo.

Se solicita:

1. Listar, para todos los expedientes del fuero “penal”: nro_expediente, caratula, fecha ingreso y estado.
2. Al final Informar
    1. Total de expedientes iniciados, en proceso y finalizados
    2. Porcentaje de finalizados sobre el total ingresado.
