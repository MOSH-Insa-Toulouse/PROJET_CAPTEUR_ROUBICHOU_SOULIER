# Projet Capteur Graphite ROUBICHOU SOULIER
Bienvenue sur notre Github, découvrez notre travail !

# Sommaire
<!-- TOC depthFrom:2 -->
  - [1. Description](#1-description)
  - [2. Arduino](#2-arduino)
     - [2.1. Bibliothèques](#22-bibliothèques)
     - [2.2. Notre code Arduino](#22-notre-code-arduino)
  - [3. KICAD](#3-kicad)
  - [4. Application Android](#4-application-android)
     - [4.1. MIT App Inventor](#41-mit-app-inventor)
     - [4.2. Installer une application](#42-installer-une-application)
     - [4.3. Notre application](#43-notre-application)
  - [5. Bancs de test](#5-bancs-de-test)
     - [5.1. Première version](#51-première-version)
     - [5.2. Seconde version](#52-seconde-version)
  - [6. Problèmes rencontrés](#6-problèmes-rencontrés)
  - [7. Informations sur les auteurs](#7-informations-sur-les-auteurs)
<!-- /TOC -->

## 1. Description

Ce Git contient toutes les ressources nécessaires pour le projet capteur 2021 du Génie Physique de l'INSA de Toulouse. Ce projet à pour but le développement d'un **capteur de déformation** à bas coût et écoresponsable. Notre capteur exploite la dépendance entre la conductivité électrique et l’espace moyen entre les particules au sein d’un système granuleux. Le transport des électrons entre les nanoparticules de graphite est régi par l’effet tunnel. Ainsi, l’extension et la contraction du réseau percolé induit par un stress mécanique affectent la distance inter-particule et donc la conductivité électrique globale de la couche de graphite. L’écriture au crayon sur du papier permet la mise en place d’une couche de graphite présentant un réseau percolé. Sa déformation provoque une variation de résistance réversible et exploitable pour créer un extensomètre. Le conditionneur de notre capteur est un Shield comportant un circuit transimpédence ainsi que des interfaces pour un module bluetooth, une roue codeuse et un écran OLED. Ce dernier à été réalisé sur **KICAD**. Le code principal à été réalisé en C++ sur l'**IDE Arduino**. Un application téléphone à été développée sur **MIT App Inventor** pour communiquer et recevoir des données à distance, mais aussi pour contrôler les paramètres du capteur. Un banc de mesure réalisé en **impression 3D** nous permet à l'aide d'un servomoteur d'étudier la réponse en déformation de différents capteurs (dont la concentration en graphite varie).

**Code Arduino**

- Mesure la tension de sortie du circuit transimpédance
- Envoie la mesure de la tension en Bluetooth sur 1 octet
- Calcule la résistance du capteur de graphite connaissant la fonction de transfert du conditionneur
- Affiche les mesures de tension, de résistance et la fréquence d'acquisition choisie sur un écran oled 128x64
- Gère l'encodeur rotatoire pour changer la fréquence d'acquisition

**KICAD**

- PCB sous forme de Shield pour carte Arduino UNO
- Interface du capteur graphite via un circuit transimpédance
- Interface un module Bluetooth
- Interface un écran oled
- Interface un encodeur rotatoire

**Application**

- Récupère la mesure de tension
- Calcule la résistance du capteur de graphite connaissant la fonction de transfert du conditionneur
- Affiche la valeur de la résistance en MΩ
- Trace un graphique qui décrit l'évolution de la mesure de tension au cours du temps
- Mise à l'échelle automatique de l'ordonnée du graphique
- Possibilité de changer la fréquence d'acquisition (100 ou 20 Hz)
- Possibilité de mettre sur ON ou OFF l'application en temps réel

**Banc de test**

- Fonctionne avec un servomoteur
- Permet de générer des contraintes avec des consignes d'angles
- Permet une grande plage de contraintes
- Améliore la répétabilité des mesures
- Permet la mise en place de mesures autonomes
- Limite la déterioration des capteurs de graphite


## 2. Arduino

Comment installer l'IDE Arduino sur sa machine? Vous trouverez la réponse [ici](https://www.arduino.cc/en/software)

### 2.1 Bibliothèques

- Installez la bibliothèque "Adafruit GFX Library" [ici](https://github.com/adafruit/Adafruit-GFX-Library)
- Installez la bibliothèque "Adafruit SSD1306" [ici](https://github.com/adafruit/Adafruit_SSD1306)
- Installez la bibliothèque "Adafruit BusIOa" [ici](https://github.com/adafruit/Adafruit_BusIO)

Comment installer une bibliothèque Arduino? Vous trouverez la réponse [ici](https://www.arduino.cc/en/Guide/Libraries#how-to-install-a-library)

### 2.2. Notre code Arduino

Le code que nous avons développé permet de:
- Mesurer la tension de sortie du circuit transimpédance
- Envoyer la mesure de la tension en Bluetooth sur 1 octet
- Calculer la résistance du capteur de graphite connaissant la fonction de transfert du conditionneur
- Afficher les mesures de tension, de résistance et la fréquence d'acquisition choisie sur un écran oled 128x64
- Gèrer l'encodeur rotatoire pour changer la fréquence d'acquisition

**Notre code Arduino est à télécharger [ici](https://github.com/MOSH-Insa-Toulouse/PROJET_CAPTEUR_ROUBICHOU_SOULIER/blob/230c8323b89008d6615a6afa0b6356e3ce4d4a17/Code%20Arduino/Projet_Capteur.ino)** 

``` c++
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

///////////////////Bluetooth////////////////////////////////
#define rxPin 10
#define txPin 11
#define baudrate 9600
#define pin A0
int etat;
SoftwareSerial mySerial(rxPin,txPin);
String c = "b";

//////////////////////ROUE//////////////////////////////////
#define encoder0pinA 2
#define encoder0pinB 4
#define Switch 5
volatile unsigned int freq = 50;

/////////////////////FCT ECRAN/////////////////////////////
void OLED(String text, int x, int y,int size, boolean d) 
{
  display.setTextSize(size);
  display.setTextColor(WHITE);
  display.setCursor(x,y);
  display.println(text);
  
  if(d)
  {
    display.display();
  }
  //delay(100);
}

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

void setup() 
{
///////////////Bluetooth////////////////////////////////
Serial.begin(baudrate);
pinMode(rxPin,INPUT);
pinMode(txPin,OUTPUT);
  
pinMode(pin,INPUT);
mySerial.begin(baudrate); //bluetooth

///////////////OLED/////////////////////////////////////
display.begin(SSD1306_SWITCHCAPVCC, 0x3C);//Inititalisation de l'écran
display.display();
delay(2000);
display.clearDisplay(); 

//////////////ROUE/////////////////////////////////////
pinMode(encoder0pinA,INPUT);
digitalWrite(encoder0pinA,HIGH);
pinMode(encoder0pinB,INPUT);
digitalWrite(encoder0pinB,HIGH);
attachInterrupt(0,doEncoder, RISING);//intéruption lors du mouvement de la roue
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


delay(freq); ///Règle la fréquence d'aquisition et d'envoi
}
```

## 3. KICAD

Comment installer KICAD sur sa machine? La réponse se trouve [ici](https://www.kicad.org/)

## 4. Application Android

### 4.1. MIT App Inventor

Le site internet de création d'application MIT App Inventor est accessible en cliquant [ici](https://appinventor.mit.edu)

### 4.2. Installer une application

Comment installer un fichier .apk à partir d'un PC? La réponse se trouve [ici](https://fr.wikihow.com/installer-sur-un-Android-des-fichiers-APK-%C3%A0-partir-d%E2%80%99un-PC)

### 4.3. Notre application

Vous trouverez ci-dessous un aperçu de l'application que nous avons développé. Cette application permet de:
- Récupérer la mesure de tension
- Calculer la résistance du capteur de graphite connaissant la fonction de transfert du conditionneur
- Afficher la valeur de la résistance en MΩ
- Tracer un graphique qui décrit l'évolution de la mesure de tension au cours du temps
- Mettre à l'échelle automatique de l'ordonnée du graphique
- Changer la fréquence d'acquisition (100 ou 20 Hz)
- Mettre sur ON ou OFF l'application en temps réel

**Le code de notre application (.aia) est à télécharger [ici](https://github.com/MOSH-Insa-Toulouse/PROJET_CAPTEUR_ROUBICHOU_SOULIER/blob/26b40920e06c2dba8526cb9ba54827a0fe55c7c3/Application/ShieldcinqA_II.aia)**

<img src="https://github.com/MOSH-Insa-Toulouse/PROJET_CAPTEUR_ROUBICHOU_SOULIER/blob/d21327abb01d30de01a223b486101d84e5ce3184/Application/Aper%C3%A7u%20de%20l'application.jpg" width="350">

## 5. Bancs de test

### 5.1. Première version 

Notre première version du banc de test était une tour composée des cylindres de différents diamètres connus. Cette tour permet l'application de plusieurs contraintes à notre capteur. Cependant, ce banc conduisait à des déformations irréversibles de notre capteur. Aussi, ce banc n'était pas autonome et la reproductibilité n'était pas optimale.

![Banc_tour](https://github.com/MOSH-Insa-Toulouse/PROJET_CAPTEUR_ROUBICHOU_SOULIER/blob/bc074732179e62ec65d1d9f68e228f933a78b1da/Bancs%20de%20test/Banc_tour.jpg)

### 5.2. Seconde version 

Nous sommes donc passés à un banc de test fonctionnant avec un servomoteur. Ce dernier système permet de générer des contraintes avec des consignes d'angles et autorise, de ce fait, une grande plage de contraintes. Finalement ce banc de test est optimal car il permet la mise en place de mesures autonomes, améliore la répétabilité des mesures et limite la déterioration des capteurs de graphite.

![Banc_servo1](https://github.com/MOSH-Insa-Toulouse/PROJET_CAPTEUR_ROUBICHOU_SOULIER/blob/b976cd1678c3cf63028d5a895135fa7c54baf83e/Bancs%20de%20test/Banc_servo1.jpg)

![Banc_servo2](https://github.com/MOSH-Insa-Toulouse/PROJET_CAPTEUR_ROUBICHOU_SOULIER/blob/e755654e5a37c8409d6181bdfd030661f82570d9/Bancs%20de%20test/Banc_servo2.jpg)


**Les fichiers STL que nous avons créés sont à télécharger au ci-dessous:**

- Banc sous forme de tour [ici](https://github.com/MOSH-Insa-Toulouse/PROJET_CAPTEUR_ROUBICHOU_SOULIER/blob/9662f01d69eacdf1dfc96737585869e709ca6d86/Bancs%20de%20test/PieceCapteur3%20v1.stl)
- Banc avec servomoteur (pièce 1) [ici](https://github.com/MOSH-Insa-Toulouse/PROJET_CAPTEUR_ROUBICHOU_SOULIER/blob/e755654e5a37c8409d6181bdfd030661f82570d9/Bancs%20de%20test/Banc1%20v3.stl)
- Banc avec servomoteur (pièce 2)[ici](https://github.com/MOSH-Insa-Toulouse/PROJET_CAPTEUR_ROUBICHOU_SOULIER/blob/b976cd1678c3cf63028d5a895135fa7c54baf83e/Bancs%20de%20test/Banc2%20v1.stl)


## 6. Problèmes rencontrés


## 7. Informations sur les auteurs

**Jordi ROUBICHOU & Mathias SOULIER**

- Étudiants en 4 ième année du Génie Physique de l'INSA de Toulouse

- Mail : _roubicho@etud.insa-toulouse.fr_

- Mail : _msoulier@etud.insa-toulouse.fr_
