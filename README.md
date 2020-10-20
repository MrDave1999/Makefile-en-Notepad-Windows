# Makefile en Notepad++
En este documento se explica como ejecutar un makefile en notepad++ por medio de una tecla. De este modo podremos compilar y ejecutar (todo por medio de teclas) programas escritos en C de una forma sencilla y factible.

Usaremos este makefile para esta práctica:
```makefile
all:
	gcc main.o foo.o -o test

comp: main.o foo.o

main.o: main.c
	gcc -c main.c -o main.o

foo.o: foo.c
	gcc -c foo.c -o foo.o
```
Los siguientes pasos servirá para compilar un programa en C por medio de la tecla `F9`.

## Paso 1:

Le damos clic a la pestaña **Ejecutar**.
![paso1](https://github.com/MrDave1999/Makefile-en-Notepad/blob/main/img/paso1.JPG)

## Paso 2:

Le damos clic a la opción **Ejecutar**:
![paso2](https://github.com/MrDave1999/Makefile-en-Notepad/blob/main/img/paso2.JPG)

## Paso 3:

Escribimos el siguiente comando en el cuadro de texto y le damos en **Guardar**.
```
cmd /c cd C:\Users\syslan\Desktop\Test & make comp & pause
```
![paso3](https://github.com/MrDave1999/Makefile-en-Notepad/blob/main/img/paso3.JPG)

**Explicación del comando:**
- [cmd](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/cmd): Inicia una nueva instancia del intérprete de comandos (`cmd.exe`).
- [/c](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/cmd): Ejecuta el comando especificado por cadena y luego se detiene.
- [cd](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/cd): Muestra el directorio actual. En este caso, debemos especificar la ruta donde se encuentre nuestro proyecto (en el ejemplo es `C:\Users\syslan\Desktop\Test`).
- [pause](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/pause): Para que la consola no se cierre al instante :)

**Nota:** El `ampersand` se lo usa para escribir cada comando en una sola línea.
## Paso 4:

Le damos un nombre al comando (en este caso lo llamaré `Compiler`) y elegimos una tecla para compilar.
![paso4](https://github.com/MrDave1999/Makefile-en-Notepad/blob/main/img/paso4.JPG)

## Paso final:
Listo, el nombre del comando debería de aparecer de esta forma y le damos en `Compilar`:
![paso_final](https://github.com/MrDave1999/Makefile-en-Notepad/blob/main/img/paso_final.JPG)

De este modo podemos ejecutar el `makefile` sin la necesidad de hacerlo manualmente.

Ahora, faltaría configurar la tecla (podría el `F10`) para poder ejecutar el programa. Son exactamente los mismos pasos, lo que cambia es el comando del **paso 3**:
```
cmd /c cd C:\Users\syslan\Desktop\Test & make all & cmd /c start test & pause
```
El comando [start](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/start) ejecuta el `test.exe` en una nueva ventana.
