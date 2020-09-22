### Ejercicio 1
---
La Municipalidad de Resistencia desea actualizar los valores de los terrenos luego de una rezonificacion de los mismos.
El valor final de cada terreno se calcula de la siguiente manera

Valor del Terreno = Superficie terreno (en M<sup>2</sup>) * valor del M<sup>2</sup> * coeficiente de incremento  

Para ello cuenta con la siguiente información: 

1. Un archivo maestro de los terrenos con los siguientes datos:

	<ul class='fileul'>
		<li>Nro_Terreno
		<li>Zona
		<li>Ubicacion
		<li>Superficie
		<li>Valor	
	</ul>

	Zona: codificadas de A a F  
	Ubicación: codificada de 1 a 10

2. Un arreglo V que contiene los valores del M<sup>2</sup> por zona.
3. Un archivo de movimientos


	<ul class='fileul'>
		<li>Nro_Terreno
		<li>Zona
		<li>Ubicacion
		<li>Superficie
		<li>Cod_Mov
	</ul>

Se solicita actualizar (Alta Baja y Modificacion) los valores del archivo maestro, teniendo en cuenta que los unicos valores que se pueden actualizar es la zona y su valor.