// potenciometerPong
// por xpsaldivia, bifurcaria, kazelita
// v1.1.1 mayo 2022
// hecho con Arduino Uno y IDE 1.8.16
// basado en arduino_envia_pulsador_potenciometro por montoyamoraga

// variable para pin potenciometro
const int pinPotenciometro = A0;

// variable para almacenar lectura analoga
int valorPotenciometro = 0;

void setup() {

  // iniciar comunicacion serial
  Serial.begin(9600);

}

void loop() {

  // leer valores digitales y analogos
  valorPotenciometro = analogRead(pinPotenciometro);

  // enviar valores por puerto serial
  // separados por coma y al final nueva linea
  Serial.print(valorPotenciometro);
  Serial.println("");

}
