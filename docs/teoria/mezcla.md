# Mezcla

## __Características__

- Se aplica la “técnica de apareo”  
- Las estructuras de los ficheros deben tener un elemento común: la “clave de apareo” o “campo clave”  
- Los ficheros deben estar ordenados por el “campo clave”  

__Ficheros de entrada:__ por lo menos dos.  
__Ficheros de salida:__ uno (resultado de la combinación de los dos de entrada).

### Tipos de Mezcla

Caracteristicas 		| Directa		| Indirecta	|
------------------------|---------------|---------------|
Formato de los registros</br>de los Ficheros de entrada	| Igual									| Distinto 			|
Formato de los registros</br>del Fichero de Salida		| Igual al de los</br>Ficheros de Entrada	| Igual a Alguno</br>de los ficheros de entrada o </br> una combinacion de estos
Cantidad de registros</br>del Fichero de Salida		| Es igual a la sumatoria</br>de las cantidades</br>de los registros de los</br>ficheros de entrada	| No es posible predecir			|

### Ciclos de Apareo

#### __Incluyente__
```

Mientras (Clave1 <> HV) o (Clave2 <> HV) o .... (ClaveN <> HV) hacer  

		PROCESO

Fin Mientras

```

#### __Excluyente__

```

Mientras NFDA (Arch_1) y NFDA(Arch_2) hacer  

		PROCESO de registros comunes

Fin Mientras

Mientras NFDA (Arch_1) hacer     ** Uno de estos ciclos por cada fichero interviniente**
		
		PROCESO de Registros del Arch_1            

Fin Mientras

Mientras NFDA (Arch_2) hacer

		PROCESO de Registros del Arch_2

Fin Mientras

```

Si hay más de 2 ficheros se necesitarán más ciclos, además del ciclo principal. Por ej: para 3 ficheros se necesitarán 7 ciclos:  

1. Condición: NFDA (Arch_1) y NFDA (Arch_2) y NFDA (Arch_3) - Ciclo principal que procesa registros comunes.  
2. Condición: NFDA (Arch_1) y NFDA (Arch_2)  
3. Condición: NFDA (Arch_1) y NFDA (Arch_3)  
4. Condición: NFDA (Arch_2) y NFDA (Arch_3)  
5. Condición: NFDA (Arch_1)  
6. Condición: NFDA (Arch_2)  
7. Condición: NFDA (Arch_3)  
