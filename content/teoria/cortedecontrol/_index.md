---

Title: "Corte de Control"
PageTitle: "Corte de Control"
Description: "Vamos a ver un poco de teoria sobre los cortes de control"
menu:
  main:
    parent: teoria
    weight: 520

    
---

#### Estructura del Corte de Control

Primero vamos a ver la estructura generica del algoritmo (o el esqueleto):

Definimos un registro que tiene 3 claves:

```
reg = Registro
   clave3: N(8)
   clave2: N(4)
   clave1: N(2)
   campo1: ("Si", "No")
   campo2: N(2)
   campo3: AN(50)
fin Registro
```

*Nota: de esta forma la clave3 es la de mayor peso, seguido por la clave2, y luego por la clave1.*


Ahora el archivo y la variable para recorrer:

```
Arch: Archivo de reg ordenado por clave3, clave2 y clave1
r: reg
```

Las variables que se van a ocupar son:
 - Resguardo de clave (Reg1, Reg2, Reg3)
 - Contadores y Acumuladores


<br/>

La subaccion corte_n va a tener las siguientes acciones:

```
subaccion corte_n es
  llamada al corte_n-1
  Emitir resultados del nivel
  Acumular totales al nivel superior
  Reiniciar totales de este nivel
  Resguardar la nueva clave
fin subaccion
```

*Nota: la primera accion no se va a realizar si estamos en el corte de menor peso.*

<br/>

Esqueleto del algoritmo:

```
Algoritmo
  Inicializar_archivos
  Inicializar_totalizadores
  Inicializar_resguardos
  
  Mientras NFDA(Arch) Hacer
    Tratar_corte
    Tratar_registro
    Leer_registro
  Fin Mientras
  
  Corte_3
  Emitir_totales
  cerrar_archivo
Fin accion
```

<br/>

Ahora la subaccion Tratar_corte:

```
Subaccion Tratar_Corte es
  Si r.clave3 <> Reg3 entonces
    Corte_3
  sino
    Si r.clave2 <> Reg2 entonces
       Corte_2
    sino
       Si r.clave1 <> Reg1 entonces
         Corte_1
       fin si
    fin si
  fin si
fin subaccion
```

*Nota: las subacciones: Inicializar, tratar_registro y Emitir_totales, no se escribieron dado a que dependen del enunciado.*



#### Un ejemplo

Ahora un ejemplo con el mismo archivo, con el siguiente enunciado:

"Se pide mostrar cuantas entradas existen en el archivo, discriminando por la clave1, clave2, clave3 y total general."

```
Accion ejemplo es
  Ambiente
    reg = Registro
      clave3: N(8)
      clave2: N(4)
      clave1: N(2)
      campo1: ("Si", "No")
      campo2: N(2)
      campo3: AN(50)
    fin Registro
    Arch : archivo de reg ordenado por clave3, clave2 y clave1
    r : reg
    Reg3: N(8)
    Reg2: N(4)
    Reg1: N(2)
    contt, cont3, cont2, cont1: entero

  subaccion inicializar es
    Abrir E/(Arch)
    leer(Arch, r)
    contt := 0
    cont3 := 0
    cont2 := 0
    cont1 := 0
    Reg3 := r.clave3
    Reg2 := r.clave2
    Reg1 := r.clave1
  Fin subaccion

  subaccion corte_1 es
    Esc("Para el ", Reg1, " existen: ", cont1)
    cont2 := cont2 + cont1
    cont1 := 0
    Reg1 := r.clave1
  fin subaccion

  subaccion corte_2 es
    corte_1
    Esc("Para el ", Reg2, " existen: ", cont2)
    cont3 := cont3 + cont2
    cont2 := 0
    Reg2 := r.clave2
  fin subaccion

  subaccion corte_3 es
    corte_2
    Esc("Para el ", Reg3, " existen: ", cont3)
    contt := contt + cont3
    cont3 := 0
    Reg3 := r.clave3
  fin subaccion

  Subaccion tratar_corte es
    Si r.clave3 <> Reg3 entonces
      corte_3
    sino
      si r.clave2 <> Reg2 entonces
        corte_2
      sino
        si r.clave1 <> Reg1 entonces
          corte_1
        fin si
      fin si
    fin si
  fin subaccion

  subaccion tratar_registro es
    cont1 := cont1 + 1
  Fin subaccion

  subaccion emitir_totales es
    Esc("El total general de entradas es: ", contt)
  fin subaccion

  Algoritmo
    Inicializar

    Mientras NFDA(Arch) hacer
      tratar_corte
      tratar_registro
      leer(Arch, r)
    Fin Mientras
    
    corte_3
    emitir_totales
    cerrar(arch)
fin accion
```

<br/>

##### Otro ejercicios

Manteniendo el mismo archivo pero cambiando un poco el enunciado:

1. Se pide mostrar cuantas entradas que tengan el campo1 = "Si" existen en el archivo, discriminando por la clave1, clave2, clave3 y total general.
2. Se pide mostrar cuantas entradas que tengan existen en el archivo, discriminando por la clave1, clave2 y clave3.
3. Se pide mostrar cuantas entradas que tengan existen en el archivo, discriminando por la clave2, clave3 y total general.
4. Se pide mostrar cuantas entradas poseen un numero mayores o iguales a 50 en el campo2 y cuantas entradas (en el campo2) se tienen menores a 50 del archivo, discriminando por la clave1, clave2, clave3 y total general.
5. Generar un archivo con el siguiente formato: Clave3, clave2, total de Si y total de No, para el archivo anterior explicado.

