#include <SoftwareSerial.h>
#include <Arduino.h>
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

double sensorValue;
double sensorVolt;

/////////////////OLED//////////////////////////////////////
#define OLED_RESET 4
Adafruit_SSD1306 display(-1);

#define NUMFLAKES 10
#define XPOS 0
#define YPOS 1
#define DELTAY 2
#define LOGO16_GLCD_HEIGHT 32
#define LOGO16_GLCD_WIDTH  128 
////////////////////////////////////////////////////////////


///////////////////Bluetooth////////////////////////////////
#define rxPin 10
#define txPin 11
#define baudrate 9600
#define pin A0
int etat;

SoftwareSerial mySerial(rxPin,txPin);

String c = "b";
////////////////////////////////////////////////////////////


//////////////////////ROUE//////////////////////////////////
#define encoder0pinA 2
#define encoder0pinB 4
#define Switch 5

volatile unsigned int freq = 50;
///////////////////////////////////////////////////////////



/////////////////////FCT ECRAN/////////////////////////////
void OLED(String text, int x, int y,int size, boolean d) {

  display.setTextSize(size);
  display.setTextColor(WHITE);
  display.setCursor(x,y);
  display.println(text);
  if(d){
    display.display();
  }
  
  //delay(100);
}
///////////////////////////////////////////////////////////



////////////////////FCT ROUE//////////////////////////////
void doEncoder()
{

  if(digitalRead(encoder0pinB)==HIGH){
    freq=10;
  }
  else
  {
    freq=50;
    }
  }
/////////////////////////////////////////////////////////




void setup() 
{
///////////////Bluetooth////////////////////////////////
Serial.begin(baudrate);
pinMode(rxPin,INPUT);
pinMode(txPin,OUTPUT);
  
pinMode(pin,INPUT);
mySerial.begin(baudrate); //bluetooth
////////////////////////////////////////////////////////


///////////////OLED/////////////////////////////////////
display.begin(SSD1306_SWITCHCAPVCC, 0x3C);//Inititalisation de l'écran
display.display();
delay(2000);
  
display.clearDisplay(); 
///////////////////////////////////////////////////////


//////////////ROUE/////////////////////////////////////
pinMode(encoder0pinA,INPUT);
digitalWrite(encoder0pinA,HIGH);

pinMode(encoder0pinB,INPUT);
digitalWrite(encoder0pinB,HIGH);

attachInterrupt(0,doEncoder, RISING);//intéruption lors du mouvement de la roue
/////////////////////////////////////////////////////// 
}

void loop()
{ 
/////////////////CAPTEUR//////////////////////////////  
byte val=map(analogRead(pin),0,1024,0,127);

float f=1/(freq*0.001);

int R1= 100000;
int R2 = 1000;
int R3 = 100000;
int R5 = 10000;


sensorVolt = analogRead(pin)*0.004882814; //valeur en Volt

sensorValue = (1+R3/R2)*R1*(5/sensorVolt)-R1-R5;//valeur en Mohm
//Serial.println(sensorValue);
String vString = String(sensorVolt, 2); //transforme la donnée des volt en string
String RString =  String(sensorValue, 0); //transforme la donnée de résistance en string
String fString = String(f, 3); //transforme la donnée de la fréquence en string
////////////////////////////////////////////////////////


///////////////BLUETOOTH////////////////////////////////
if(mySerial.available()>0){
char data = mySerial.read();

String DataStr = String(data);
DataStr.trim();
Serial.println(DataStr);


if (c=!DataStr)
{
  c=DataStr;
  }

if (DataStr=="a")         ///
  {                       ///
  etat = 1;               ///
  }                       /// Mise à "ON" ou "OFF" de l'envoi des données par l'apk
else if (DataStr=="b")    ///
  {                       ///
   etat = 0;              ///
  }
else if (DataStr=="c")    ///
  {                       ///
  freq=10;                ///
  }                       ///
else if (DataStr=="d")    /// Choix de fréquence depuis l'apk
  {                       ///
  freq=50;                ///
  }                       ///
}

switch(etat)
{
  case 0:
  break;

  case 1:
  mySerial.write(val);     ///envoie la donnée à l'application
  Serial.print(val);
  break;
  }
/////////////////////////////////////////////////////


///////////////////OLED/////////////////////////////
display.clearDisplay();
 
OLED("Res(Mohm):          ", 20, 3, 1.9, false);
OLED(RString, 90, 3, 1, false); ///Ecriture de la resistance sur l'OLED
OLED("", 110, 3, 1, false);

OLED("Volt :     ", 20, 12, 1.9, false);
OLED(vString, 80, 12, 1, false); ///Ecriture de la tension sur l'OLED
OLED("V", 110, 12, 1, false);


OLED("Freq:          ", 20, 21, 1.9, false);
OLED(fString, 72, 21, 1.9, false);  ///Ecriture de la fréquence sur l'OLED
OLED("Hz", 110, 21, 1.9, false);

display.drawRect(1, 1, 126,31, WHITE); ///Met le rectangle autour de l'oled
display.display();
//////////////////////////////////////////////////


delay(freq); ///Règle la fréquence d'aquisition et d'envoi

}
