# clase-09-proyecto-mitad-semestre

## intsrucciones

* hacer login en GitHub.com
* entrar a este repositorio disponible en [https://github.com/aud5i022-2022-1/clase-09-proyecto-mitad-semestre](https://github.com/aud5i022-2022-1/clase-09-proyecto-mitad-semestre)
* hacer click en el botón "Fork" de este repositorio para copiarlo a tu cuenta personal.
* enviar el enlace de tu repositorio y la lista de integrantes a través de u-cursos al instructor.
* ahora puedes editar este archivo siguiendo este enlace [README.md](README.md) y haciendo click en el ícono de lápiz para editar.
* recomendación: grabar tus avances seguido, para que no pierdas tu avance, para esto, baja al final de la sección de edición, elige la opción " Commit directly to the main branch." luego haz click en el botón verde "Commit changes". repite esto cada vez que quieras grabar cambios.
* para subir imágenes, haz click en este enlace a la carpeta [imagenes/](imagenes/), luego haz click en el botón "Add files" y selecciona "Upload files". arrastra tus imágenes o añadelas con el enlace "choose your files". luego elige la opción "Commit directly to the main branch" y haz click en el botón verde "Commit changes"

## contenidos de este repositorio

* carpeta [codigo_arduino/](codigo_arduino/): carpeta para tener el codigo de tu proyecto
  * archivo [odigo_arduino/codigo_arduino.ino](codigo_arduino/codigo_arduino.ino) : debe incluir encabezado y comentarios describiendo tu proyecto
* carpeta [imagenes/](imagenes/): sube aquí las imágenes para tu proyecto.
  * archivo [/imagenes/00-ejemplo.jpg](/imagenes/00-ejemplo.jpg) como ejemplo.
* archivo [README.md](README.md)]: este mismo archivo, aquí escribe tus apuntes durante el proyecto.
* archivo [README.pdf](README.pdf): este archivo pero convertido a PDF, puedes borrarlo.

## ejemplos útiles

cada párrafo es una línea continua de texto. los puntos "." son para punto seguido.
esta línea está escrita en la siguiente línea en el archivo, pero se ve seguida a la anterior.

para hacer un nuevo párrafo, hay que dejar una línea en blanco entremedio.

* las
* listas
* son
* así
  * las sub-listas
  * son así
  * con dos espacios de indentación

los enlaces se hacen con corchetes y después paréntesis. el texto dentro de corchetes es lo que se ve en el enlace, y el texto dentro de paréntesis es dónde va ese enlace. les pido que sea el mismo texto. aquí ejemplos de enlaces a web y a otros archivos dentro de este repositorio.

* [https://www.wikipedia.org/](https://www.wikipedia.org/)
* [https://www.arduino.cc/](https://www.arduino.cc/)
* [imagenes/00-ejemplo.jpg](imagenes/00-ejemplo.jpg)
* [codigo_arduino/codigo_arduino.ino](codigo_arduino/codigo_arduino.ino)

para incluir imágenes que sean visibles en este documento, es igual que un enlace a una imagen, pero con un signo de exclamación antes de los corchetes "!", así:

![texto descripción de la foto](imagenes/00-ejemplo.jpg)

## borrador de muestra

a continuación les dejo un breve borrador con ejemplos, que si completan, tendrán todos los puntos de la pauta, suerte!

## acerca de

este proyecto de mitad de semestre fue hecho en el día martes 10 de mayo 2022, como parte del curso  aud5i022-2022-1.

los integrantes son [bifurcaria](https://github.com/bifurcaria), [xpsaldivia](https://github.com/xpsaldivia),[Kazelita](https://github.com/Kazelita)
## lista de materiales

los materiales son:

* Arduino Uno
* protoboard
* cables
* potenciómetro

## armado de circuito

estos son los pasos para armar el circuito.

primero hacemos X y se ve así.

![texto descripción de la foto](imagenes/00-ejemplo.jpg)

después hacemos Y y se ve así.

![texto descripción de la foto](imagenes/00-ejemplo.jpg)

## código para microcontrolador Arduino

el código está hecho para Arduino Uno, y está incluido en este repositorio aquí: [codigo_arduino/codigo_arduino.ino](codigo_arduino/codigo_arduino.ino).

este código está basado en los ejemplos de Arduino blabla y en los ejemplos de esta clase en los enlaces [bla](blabla) y [bla](blabla).

primero creamos las variables blabla para almacenar valores para blabla. la variabla bla es análoga en el rango blabla y la variable blabla es digital y tiene valores posibles 0 y 1.

primero en setup() hacemos que los pines X e Y sean entradas digitales, el pin Z sea salida digital, y abrimos la comunicación serial.

luego en loop() leemos las entradas y usamos la salida Z para lograr prender una luz LED.

## conclusiones

en este proyecto tuvimos los siguientes aprendizajes: 

*configuramos el potenciometro para un videojuego simple*

*utilizamos un potenciometro como mando para este*

se encotraron los siguientes problemas

por el tamaño de la pantalla a veces se crea el efecto que el cuadrado se sale de esta a medida que se mueve por mas tiempo

lo más difícil de este proyecto fue mapear los valores para que la perilla fuese de derecha a izquierda o viceversa

cometimos los siguientes errores durante el armado del circuito y en el código, y los solucionamos 
este proyecto lo vemos como la base para 

conectamos mal un cable  que debia ir en el puerto GND se soluciono conectandolo donde correspondia

en un principio el rectangulo en la posicion 0 no se visualizaba en la pantalla se soluciono agrendo y cambiando la variable int paddle a 140

a futuro agregar un contador que contara las veces seguidas en las que el rectangulo golpea la pelota.

