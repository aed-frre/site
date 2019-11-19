# Repaso para el 3er Parcial

### Ejercicio 1
---

Una empresa de remises posee una lista circular para realizar la asignación de los distintos turnos a los remiseros, la misma posee los siguientes datos.

<ul class='fileul'>
	<li>ID_remis <a>AN(8)</a>
	<li>Cuadras_Recorridas <a>N(8) </a>
	<li>Recaudado <a>N(8,2)</a>
	<li>Libre <a>S | N </a>
</ul>


> Los campos Cuadras Recorridas y Recaudado al inicio se encuentran en 0, y los valores del campo libre en “S”.

Se pide realizar un algoritmo interactivo que implemente las tres funcionalidades:

1. Cada vez que llama un cliente solicitando un remis, se le asigna el remis correspondiente a su turno de la lista circular, se muestra por pantalla el id del remis y se actualiza el campo del registro (Libre=”N”). Si el remis del turno correspondiente no está libre, entonces se toma el próximo de la lista. 
2. Cuando un remis llega a su destino, informa a la central el código de remis y cuantas cuadras recorrió, de esta forma el sistema calcular el total del viaje multiplicando la cantidad de cuadras por un factor (Si es menor a 20 cuadras es 5, si es hasta 40 cuadras es 4 y si es mayor a 40 el factor es 3), se disponibiliza al remis (libre=”S”), muestra por pantalla el costo del viaje y graba en una lista simplemente enlazada el viaje realizado (con los siguientes datos: Id Remis, cantidad de cuadras y costo del viaje)
3. Al finalizar el dia imprimir por pantalla el id remis, viajes realizados, Cuadras recorridas y Recaudación de cada uno, y además los totales de: viajes en el dia, cuadras recorridas y total de la recaudación. (considerar que siempre se llama al fin del día cuando todos los remises están libres).


### Ejercicio 2
---

1. Realizar un algoritmo recursivo que verifique que todos los dígitos de un número n sean impares, en caso afirmativo debe devolver un valor  verdadero, contrario falso (ejemplo: 57191 => verdadero, 33415 => falso).
2. Nombre las partes de un algoritmo recursivo?  Marque en el algoritmo del punto a).

### Ejercicio 3
---

Una empresa que se dedica a la venta de colchones posee el siguiente archivo secuencial con información de todas las ventas del último mes (cada entrada del archivo significa una venta), el mismo no se encuentra ordenado por ningún campo:

<ul class='fileul'>
	<li>ID <a>N(8)</a>
	<li>Tipo <a>N(8) </a>
	<li>Ganancia <a>N(18,2)</a>
	<li>Dimension X <a>N(3) </a>
	<li>Dimension Y <a>N(3) </a>
</ul>

El dato "tipo" no tiene un rango definido, ya que es un número asociado a los datos del proveedor, los cuales están almacenados en una lista simplemente encadenada ordenada por el campo tipo, con los siguientes datos:


<ul class='fileul'>
	<li>Tipo <a>N(8) </a>
	<li>Fabricante <a>AN(40)</a>
	<li>Modelo <a>AN(40) </a>
	<li>Comision <a>N(2) </a>
</ul>

La comisión es el porcentaje con el cual se queda la fabrica por el producto vendido.

Se pide:

1. Generar una lista simplemente encadenada que posea por lo menos los siguientes datos: Tipo, Fabricante, modelo y cantidad vendida en el último mes.
2. Realizar un top 5 con el fabricante que más cantidad vendió en el último mes.
3. Informar el total recaudado por la empresa (por cada venta se debe calcular: ganancia * ( 100 - comision )/100 ))


### Ejercicio 4
---

Escribir un algoritmo que dada una lista y un entero, reemplace aquéllos que son mayores que el entero de la lista por una sucesión de elementos menores o iguales que dicho entero manteniendo la suma total constante.

Por ejemplo si tenemos un elemento de la lista que es 10 y el entero es 3, debemos dividir el elemento en “3, 3, 3, 1”. Un ejemplo del algoritmo: si L = {2,5,2,6,4,1,9,6,3,2} y el entero es 4, la lista de salida debe quedar L = {2,4,1,2,4,2,4,1,4,4,1,4,2,3,2}.
