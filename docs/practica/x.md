### Ejercicio 1
---

El Poder Judicial de la Provincia cuenta con un archivo donde almacena información sobre los expedientes que han ingresado durante este año. El formato de los registros es el siguiente:

**EXPEDIENTES** Ordenado por Jurisdicción, Fuero y Nro_Exped
<ul class='fileul'>
	<li class='clave'>Jurisdicción <a>1..6</a>
	<li class='clave'>Fuero <a>(P,C,F,A)</a>
	<li class='clave'>Nro_Exped <a>N(8)</a>
	<li>Caratula <a>N(8)</a>
	<li>Fecha Ingreso <a>Fecha</a>
	<li>Estado <a>1..3</a>
</ul>

Estado:

1. Iniciado
2. En proceso
3. Finalizado

Fuero: 

- P: Penal
- C: Civil y comercial
- F: Familiar
- A: Administrativo


Se solicita:  

1. Listar, para todos los expedientes del fuero “penal”: nro_expediente, carátula, fecha ingreso y estado. 
2. Además, para cada jurisdicción y fuero, y para toda la provincia: informar total de expedientes ingresados y finalizados, porcentaje de finalizados sobre el total ingresado.
3. Generar un fichero de salida que contenga para cada fuero de cada jurisdicción, el total de expedientes por estado, según el siguiente formato de registro:

<ul class='fileul'>
	<li class='clave'>Jurisdicción <a>1..6</a>
	<li class='clave'>Fuero <a>(P,C,F,A)</a>
	<li>Cant_Iniciados <a>N(4)</a>
	<li>Cant_EP <a>N(4)</a>
	<li>Cant_Fin <a>N(4)</a>
</ul>

### Ejercicio 2
---

Una prestigiosa empresa dedicada a la venta y servicios de posventa de motos en la ciudad de Resistencia decide contratarlo a usted, para generar informes que le ayuden en la toma de decisiones.
Para ello cuenta con un archivo secuencial que contiene datos históricos de reparaciones realizadas, con los siguiente detalle:
 
<ul class='fileul'>
	<li>Marca
	<li>Modelo
	<li>Año de Fabricacion
	<li>Patente
	<li>Fecha de Reparacion
	<li>Tipo de Reparacion
	<li>Costo
</ul>


El archivo esta ordenado por marca, modelo, año de fabricación, patente y fecha de reparación, pudiendo existir más de un registro por moto ( o patente).
El tipo de reparación puede ser: "mantenimiento por garantía", "mantenimiento preventivo" o "mantenimiento correctivo".

La información que la empresa solicita es la siguiente:

1. Para cada marca/modelo cual es la cantidad y el costo de reparación total. 
2. Cual es el monto total ingresado por cada tipo de reparación y cuál fue el que tuvo el mayor ingreso.


### Ejercicio 3
---

Teniendo en cuenta el mismo escenario que el Ejercicio 2

La información que la empresa solicita es la siguiente:

1. Dada una marca, listar para cada modelo/ año de fabricación, y total por marca, la cantidad y el costo total de reparaciones por mantenimiento correctivo.
2. Cuál es el modelo que mayor cantidad de reparaciones por mantenimiento correctivo recibió.

### Ejercicio 4
---

Una Empresa que distribuye productos farmacéuticos  dispone de un archivo secuencial con la siguiente información de su stock de productos, ordenado por laboratorio, código de producto y lote.

<ul class='fileul'>
	<li>Laboratorio <a>N(3)</a>
	<li>Codigo Producto <a>N(4)</a>
	<li>Lote <a>AN(5)</a>
	<li>Descripcion <a>AN(150)</a>
	<li>Cantidad <a>N(4)</a>
	<li>Fecha Vencimiento <a>Fecha</a>
</ul>

Hay varios registros para cada código de producto, con distintos números de lote, el cual es único.

La Empresa necesita:

1. Generar otro archivo de salida que contenga los lotes vencidos (cuya fecha de vencimiento sea posterior a la actual), con el siguiente formato:

<ul class='fileul'>
	<li>Laboratorio <a>N(3)</a>
	<li>Codigo Producto <a>N(4)</a>
	<li>Lote <a>AN(5)</a>
	<li>Cantidad <a>N(4)</a>
	<li>Fecha Vencimiento <a>Fecha</a>
</ul>

2. Mostrar por pantalla la cantidad total de productos vencidos por Laboratorio, Código de Producto y total General.
3. Al final informar cuál fue el laboratorio con mayor cantidad de productos vencidos.


### Ejercicio 5
---

El Ministerio de Salud Pública de la Nación posee información almacenada en un archivo secuencial producto de relevamiento realizado en Hospitales Públicos respecto a situación actual de casos de COVID-19.
Los datos se almacenan en registros con el siguiente formato:



**CasosCOVID19** Ordenado por COD_CIU, COD_HOSP y FCH_ANALISIS
<ul class='fileul'>
	<li class='clave'>COD_CIU <a>AN(4)</a>
	<li class='clave'>COD_HOSP <a>AN(4)</a>
	<li class='clave'>FCH_ANALISIS <a>Fecha</a>
	<li>VERIFICADOS <a>N(3)</a>
	<li>SOSPECHADOS <a>N(3)</a>
</ul>

Elaborar un algoritmo que permita:

1. Emitir un informe con el formato que se muestra a continuación, teniendo en cuenta datos del mes de Junio del año actual, en el cual se muestre, por cada ciudad y hospital los totales de casos verificados y sospechados:

| CIUDAD   |   HOSPITAL   |     TOTAL CASOS VERIFICADOS    |    TOTAL CASOS SOSPECHADOS |
|---|---|---|---|

Mostrar por pantalla la ciudad con mayor cantidad de casos sospechados.
