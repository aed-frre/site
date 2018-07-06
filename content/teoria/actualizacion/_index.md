---

Title: "Actualización"
PageTitle: "Actualización"
Description: "Vamos a ver un poco de teoria sobre los actualización"
menu:
  main:
    parent: teoria
    weight: 540

    
---


##### __Tipos de Actualización__

__POR LOTES__   
Varios registros de movimiento para un registro maestro.  

__UNITARIA__  
Un registro movimiento para un registro maestro.  

##### __Ficheros__

__Ficheros de entrada:__ por lo menos dos: MAESTRO Y MOVIMIENTOS.  
__Ficheros de salida:__ como mínimo uno.


###### __Tipos de Ficheros Maestros__

- Histórico
- Común o Normal

###### __Tipos de Ficheros de Movimientos__

- Actualización General o Combinado
- Actualización Parcial o Individual

###### __Tipos de Movimientos__

- Alta
- Baja
- Modificación


##### __Algoritmo Actualización Unitaria__

Utilizando ciclo incluyente
```
Accion Act_Uni es  
  Algoritmo  
    Abrir_Archivos
    Leer_Maestro
    Leer_Movimiento
    Mientras (Clave_Mae <> HV) o (Clave_Mov <> HV) hacer
      Si (Clave_Mae = Clave_Mov) entonces 
        Proceso_Iguales
      sino
        Si (Clave_Mae < Clave_Mov) entonces
          Reg_sal:= Reg_mae 
          Escribir(Arch_sal, Reg_sal)
          Leer_Maestro
        sino
          Proceso_Distintos
        Fin Si
      Fin Si
    Fin Mientras
    Cerrar_Archivos
Fin Accion
  
Subaccion Leer_Movimiento es
  Leer(Arch_mov, Reg_mov)
  Si FDA(Arch_mov) entonces
    Clave_mov:= HV
  Fin Si
Fin Subaccion
 
Subaccion Leer_Maestro es
  Leer(Arch_mae, Reg_mae)
  Si FDA(Arch_mae) entonces
    Clave_mae : = HV
  Fin Si
Fin Subaccion

Subacción Proceso_Iguales es
  Si Reg_mov.Cod_mov = 'ALTA' entonces
    Escribir('Error alta no existe')
    Reg_sal:= Reg_mae
    Escribir(Arch_sal, Reg_sal)
  Sino 
    Si (Reg_mov.Cod_Mov = 'MODIF') entonces 
      Proceso_Mod_Maestro
      Reg_sal : = Reg_mae
      Escribir(Arch_sal, Reg_sal)
    Sino // eliminación lógica
      Marcar_Registro
      Reg_sal:= Reg_mae
      Escribir(Arch_sal, Reg_sal)
    Fin Si
  Fin Si
  Leer_Maestro
  Leer_Movimiento
Fin Subacción.

Subaccion Proceso_Distintos es
  Si (Reg_mov.Cod_Mov = 'BAJA') entonces 
    Escribir('Error baja no existe')
  Sino 
    Si (Reg_mov.Cod_Mov = 'MODIF') entonces  
      Escribir('Error mofificación no existe')
    Sino // Asigna campo por campo, porque Reg_sal y Reg_mov tienen distinto formato
      Reg_sal.clave:= Reg_mov.clave
      Reg_sal.campo1:= Reg_mov.campo1
      Reg_sal.campo2:= Reg_mov.campo2
      ........
      Reg_sal.campoN:= Reg_mov.campoN
      Reg_sal.Marca_baja:= ''          
      Escribir(Arch_sal, Reg_sal)
    Fin Si
  Fin Si
  Leer_Movimiento
Fin Subaccion

Subaccion Proceso_Modif_Maestro es
  Si (Reg_Mov.campo1 <> '') entonces  
    Reg_mae.campo1:= Reg_mov.campo1
  Fin Si
  Si (Reg_Mov.campo2 <> '') entonces
    Reg_mae.campo2 := Reg_mov.campo2
  Fin Si
  Si (Reg_Mov.campo3 <> '') entonces
    Reg_mae.campo3 := Reg_mov.campo3
  Fin Si
    // ... y así sucesivamente para todos los campos del registro...
Fin Subaccion

Subaccion Marcar_Registro es
  Reg_mae.Marca_baja:= '*'     // en vez de asterisco, se puede asignar la fecha del día,
                                   o cualquier otro dato, según el problema //
Fin Subaccion


```
