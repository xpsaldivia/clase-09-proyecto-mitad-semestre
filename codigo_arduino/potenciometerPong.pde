// potenciometerPong
// por xpsaldivia, bifurcaria, kazelita
// v1.1.1 mayo 2022
// hecho con Arduino Uno y IDE 1.8.16
// basado en basado en ej_00_processing_recibe_numeros por montoyamoraga y PONG por nakul13

//declarar variables para paddle
int paddle_x = 140;
int paddle_len = 50;
int paddle_height = 15;

//declarar variables para ball
int vel_array[] = {-1, 1};
int ball_xvel = 3 * vel_array[int(random(0, 1))];
int ball_yvel = 3 * vel_array[int(random(0, 1))];
int ball_rad = 25;
int ball_xpos = int(random(0, 300));
int ball_ypos = int(random(0, 320));

//declarar variable game over
int game_over = 0;

// importar biblioteca para comunicacion serial
import processing.serial.*;

// declarar nueva variable puerto de clase Serial
Serial puerto;

// declarar variable para elegir puerto serial del Arduino
int numeroPuerto = 1;

// declarar variable para posición del paddle
float paddleAhora = 0;
float paddleAntes = 0;

void setup() {

  // crear lienzo de 400px ancho y 400px altura
  size(400, 400);

  // imprimir en consola todos los puertos seriales disponibles
  printArray(Serial.list());

  // abrir puerto serial correspondiente , a tasa de 9600 baud
  puerto = new Serial(this, Serial.list()[numeroPuerto], 9600);

  // generar un nuevo evento de lectura cuando se recibe caracter "nueva linea"
  puerto.bufferUntil('\n');
}


void draw() {
  

// crear background, paddle y ball
  if (game_over == 0) {
    background(0);
    fill(255);
    rect(paddle_x, height-paddle_height, paddle_len, paddle_height);
    ellipse(ball_xpos, ball_ypos, ball_rad, ball_rad);
    
    // código para usar con teclado
    //if (keyCode == LEFT) {
    //  if (paddle_x > 0) {
    //    paddle_x-=2;
    //  }
    // } else if (keyCode == RIGHT) {
    //  if (paddle_x < 270) {
    //    paddle_x+=2;
    //  }
    // }
    
    //crear variable posición del paddle
    paddle_x = (int)paddleAhora;

    //crear variable posición de la pelota
    //no la entendimos mucho
    ball_xpos += ball_xvel;
    ball_ypos += ball_yvel;

    if (ball_xpos < 3) {
      ball_xvel = 3;
    } else if (ball_xpos > (width-3)) {
      ball_xvel = -3;
    }

    if (ball_ypos < 3) {
      ball_yvel = 3;
    } else if (ball_ypos > (height-paddle_height-3)) {
      if ((ball_xpos > paddle_x) && (ball_xpos < (paddle_x+paddle_len))) {
        ball_yvel = -3;
      }
      // esto hace game over pero no lo usamos
      //else {
        // game_over = 1;
        //background(255);
        //textSize(48);
        //fill(0);
        //text("GAME OVER :(", 40, height/2);
      }
    }
  }
}

// evento serial
void serialEvent(Serial myPort) {

  // leer String ASCII hasta caracter nueva linea
  String entrada = myPort.readStringUntil('\n');

  // si entrada no esta vacia
  if (entrada != null) {

    // borrar caracteres blancos
    entrada = trim(entrada);

    // separar por comas y crear un float
    float[] datos = float(split(entrada, ","));
  
    // si el arreglo tiene al menos dos elementos, llegó bien
    if (datos.length >= 1) {
 
     // hacer que el valor recibido recién se haga viejo
     paddleAntes = paddleAhora;
     
     // actualizar actual con valor que lee el arduino
     paddleAhora = datos[0];
     
     //  mapear los valores recibidos
     //  paddle va desde x=0 hasta x=ancho de la pantalla menos largo del paddle, para que tope
     paddleAhora = map(paddleAhora, 0, 1023, 0, width - paddle_len);

      // este codigo era para una entrada de dos elementos
      // asignar elemento 1 de la entrada al diametro
      // y mapear desde rango [0,1023] a rango [0, width]
      // valorDiametro = map(datos[1], 0, 1023, 0, width);
    }
  }
}
