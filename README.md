# single player pong game in processing

the following code shows the implementation of a basic pong game in processing v4.0b2. written for arduino uno and controlled with a potentiometer. the files in this repo are licensed under mit license.

## contenidos de este repositorio

* carpeta [codigo_arduino/](codigo_arduino/): contiene dos archivos, uno de arduino que envía los datos y otro de processing que los recibe.
  * archivo [potenciometerPong.ino](codigo_arduino/potenciometerPong.ino) : envía datos potenciómetro.
  * archivo [potenciometerPong.pde](codigo_arduino/potenciometerPong.pde) : recibe entrada de datos potenciómetro y convierte este input en la posición del paddle.
* carpeta [imagenes/](imagenes/): contiene las imágenes de cómo armar el circuito.
* archivo [README.md](README.md): documentación.
* archivo [README.pdf](README.pdf): este archivo pero convertido a PDF.

## acerca de

este proyecto de mitad de semestre fue hecho en el día martes 10 de mayo 2022, como parte del curso  aud5i022-2022-1.

las integrantes son [bifurcaria](https://github.com/bifurcaria), [xpsaldivia](https://github.com/xpsaldivia) y [Kazelita](https://github.com/Kazelita)

## lista de materiales

los materiales son:

* arduino uno
* protoboard 400 puntos
* potenciómetro
* cables dupont
* cable usb

## armado de circuito

estos son los pasos para armar el circuito.

conectar el potenciómetro de una sola vuelta a 5V y tierra. entre estas dos entradas, conectar un cable para su lectura análoga.

<img src="https://raw.githubusercontent.com/xpsaldivia/clase-09-proyecto-mitad-semestre/main/imagenes/IMG_20220510_170338.jpg" width="400"/>

así debiese verse el circuito completo conectado al arduino.

<img src="https://raw.githubusercontent.com/xpsaldivia/clase-09-proyecto-mitad-semestre/main/imagenes/IMG_20220510_170812.jpg" width="400"/>

## código para microcontrolador arduino y processing

el código está hecho para arduino uno, y está incluido en este repositorio aquí: [codigo_arduino/codigo_arduino.ino](codigo_arduino/codigo_arduino.ino).

este código está basado en [los ejemplos de la clase 08](https://github.com/montoyamoraga/aud5i022-2022-1/tree/main/clases/clase-08) por [montoyamoraga](https://github.com/montoyamoraga) y [PONG](https://github.com/nakul13/PONG) por [nakul13](https://github.com/nakul13/).

primero creamos variables de posición y ancho para los componentes del juego. también declaramos las variables paddleAhora y paddleAntes, que almacenarán la entrada análoga de datos del potenciómetro.

en setup() creamos un lienzo y abrimos la comunicación serial.

luego en loop() definimos el movimiento de ball y paddle, y hacemos que la posición del paddle dependa de la entrada de los datos provenientes del potenciómetro.

## conclusiones

en este proyecto tuvimos los siguientes aprendizajes:

* hicimos un videojuego simple en processing.
* configuramos un potenciómetro como mando para éste.

encontramos los siguientes problemas:

* el paddle se salía de la pantalla, pues al definir su posición no estaba considerado su tamaño.
* lo más difícil de este proyecto fue mapear los valores para el movimiento del paddle en el eje x.

cometimos los siguientes errores durante el armado del circuito y en el código:

* la posición del paddle no estaba definida, pues dependía de que el valor que arrojaba el potenciómetro fuese diferente del anterior.

este proyecto lo vemos como base para lograr:

* implementar un contador de veces consecutivas que el paddle golpea el circulo y asignarle un score.
* hacer funcionar el código de "game over" y agregar un botón de reiniciar.

