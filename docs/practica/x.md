# Repaso para el Parcial


## Secuencias


### 1. 
---
La galería de pintura y arte nacional, PINTA DE ARGENTINA, almacena información sobre los artistas y sus obras de arte en secuencias de caracteres. Durante todo el año, las obras de arte son expuestas en eventos de subasta y exposición, en los cuales se comercializan al público en general.  
A fin de año la Comisión Directiva de la Galería solicita que, a partir de toda esa información, se generen algunos informes.
Se debe tener en cuenta lo siguiente:  

* En la secuencia ARTISTAS, se almacena el nombre de cada artista, lugar de nacimiento, edad, estilo de arte ('R' – Renacentista, 'M' – Arte Moderno, 'B' – Barroco, 'S' – Surrealismo) y cantidad de obras por artista. 
* Los datos de cada artista están separados entre si por el símbolo '+' y finalizan con el símbolo '?'.
* En la secuencia OBRAS, se almacena el nombre de la obra,  el año en que fue hecha, su precio, precedido siempre del signo '$' (solo 3 digitos) y su estado ('V' – Vendido, 'R' – Reservado, 'U' – Obra Única).
* Todos los datos de las obras están separados por el símbolo ',' y finalizan con el símbolo '/'.
* El creador de cada obra se determina de acuerdo al dato 'cantidad de obras' de la secuencia ARTISTAS, por ej.: el autor RENE BARTOL tiene 2 obras, por lo cual las primeras 2 obras de la secuencia OBRAS le pertenecen, las siguientes 6, pertenecen a JUAN B JUSTO, etc.  

A continuación un ejemplo de ambas secuencias:

**SECUENCIA ARTISTAS**  
`RENE BARTOL+ROSARIO+34+M+2?JUAN B JUSTO+NEUQUEN+61+R+5?……..`

**SECUENCIAS OBRAS**  
`SOL Y PARANA,1997,$913,V/GRITO DE ESPERANZA,2003,$235,R/PENAS,1997,$781,V/……… `

A partir de lo expuesto anteriormente, se pide:  

1. Generar una secuencia de salida con información de los artistas Renacentistas. La secuencia debe contener el nombre del artista, su estilo de arte, seguido de sus obras (nombre y año de creación). Los datos correspondientes al mismo artista deben separarse entre sí con el signo '+' y finalizar con el signo '?'.  
2. Al final del proceso informar:  
	1. la mayor cantidad de obras vendidas por un artista.  
	2. el porcentaje de obras de artistas "renacentistas" sobre el total de obras.

### 2.
---

Rapido Toto es una empresa de transporte de pasajeros que ofrece sus servicios desde y hacia cerca de 100 localidades, a lo largo de todo el país. La misma cuenta con una secuencia de caracteres donde se encuentran grabados todos los pasajes vendidos durante el año 2016.

La secuencia tiene la siguiente estructura: al principio la fecha del pasaje (ddmmaaaa) seguido de un caracter que indica si el pasajero usó descuento de estudiante ('S') o no ('N'); a continuación sigue el apellido y nombre del pasajero. Separado por un guión ("-") se encuentran las localidades de origen y de destino representadas por dos caracteres cada una ("0103" representa un pasaje que va de 01-Buenos Aires a 03-Rosario, por ejemplo). Se usa el caracter “/” para separar un pasaje del siguiente.

Ejemplo: 
`01012016SJuan Pablo-2356/02012016NPablo Lopez-1001/*`

Rapido Toto requiere un algoritmo que cumpla con las siguientes consignas:

1. Genere una nueva secuencia con los orígenes y destinos (sin separación) de todos los pasajes de los meses de Enero y Febrero.
2. Informe la cantidad de pasajeros que arriban desde una localidad solicitada por el usuario.
3. Informe el porcentaje de pasajes que se vendieron con descuento a estudiantes.


## Corte


### 3.
---

El Banco NEA S.A. debe gestionar la información referida a las transacciones realizadas durante el año 2015. Para ello cuenta con un archivo donde almacena los siguientes datos:


**TRANSACCIONES** Ordenado por Mes, Cod_Tran, Cliente
<ul class='fileul'>
	<li class='clave'>Mes <a>N(2)</a>
	<li class='clave'>Cod_Tran <a>D | E | T </a>
	<li class='clave'>Cliente <a>N(13)</a>
	<li>Moneda <a>\$ | U\$S | Euro </a>
	<li>Monto <a>N(10,2)</a>
</ul>

> D - Deposito, E - Extraccion, T - Transferencia

Realice un algoritmo en pseudocódigo que permita:

1. El gerente solicita que se informe los montos totales que se realizaron por mes y por transacción. Además informar un total general. De al informe el formato que considere apropiado.
2. Gerar un archivo de salida con los totales depositados por Cliente durante el primer tirmestre del año:


**DEPOS** Ordenado por Mes, Cliente
<ul class='fileul'>
	<li class='clave'>Mes <a>N(2)</a>
	<li class='clave'>Cliente <a>N(13)</a>
	<li>Monto <a>N(10,2)</a>
</ul>