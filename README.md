# Projet Capteur Graphite ROUBICHOU SOULIER\
\
Bienvenue sur notre Github, d\'e9couvrez notre travail ! \
\
# Sommaire\
<!-- TOC depthFrom:2 -->\
  - [1. Description](#1-description)\
  - [2. Codes et DAO](#2-code-et-dao)\
    - [2.1. Arduino](#21-arduino)\
      - [2.1.1. Bibliothèques](#211-bibliothèques)\
    - [2.2. KICAD](#22-kicad)\
    - [2.3. Application Android](#23-application-android)\
      - [2.3.1. Installer l'application](#231-installer-lapplication)\
      - [2.3.2. Modifier l'application](#232-modifier-lapplication)\
    - [2.4. Banc de test](#24-banc-de-test)\
  - [3. Problèmes rencontrés](#3-problèmes-rencontrés)\
    - [3.1. Problème 1 :\
  - [4. Informations sur les auteurs](#4-informations-sur-les-auteurs)\
<!-- /TOC -->\
\
## 1. Description\
\
Ce Git contient toutes les ressources nécessaires pour le projet capteur 2021 du G\'e9nie Physique de l'INSA de Toulouse. Ce projet à pour but le développement d'un _capteur de déformation_ à bas coût et écoresponsable. Notre capteur exploite la dépendance entre la conductivité électrique et l’espace moyen entre les particules au sein d’un système granuleux. Le transport des électrons entre les nanoparticules de graphite est régi par l’effet tunnel. Ainsi, l’extension et la contraction du réseau percolé induit par un stress mécanique affectent la distance inter-particule et donc la conductivité électrique globale de la couche de graphite. L’écriture au crayon sur du papier permet la mise en place d’une couche de graphite présentant un réseau percolé. Sa déformation provoque une variation de résistance réversible et exploitable pour créer un extensomètre. Le conditionneur de notre capteur est un Shield comportant un circuit transimpédence ainsi que des interfaces pour un module bluetooth, une roue codeuse et un écran OLED. Ce dernier à été réalisé sur _KICAD_. Le code principal à été réalisé en C++ sur l'_IDE Arduino_. Un application téléphone à été développée sur _MIT App Inventor_ pour communiquer et recevoir des données à distance, mais aussi pour contrôler les paramètres du capteur. Un banc de mesure réalisé en _impression 3D_ nous permet à l'aide d'un servomoteur d'étudier la réponse en déformation de différents capteurs (dont la concentration en graphite varie).\
\
**Code Arduino**\
\
- Mesure la tension de sortie du circuit transimp\'e9dance\
- Envoie la mesure de la tension en Bluetooth sur 1 octet\
- Calcule la r\'e9sistance du capteur de graphite connaissant l'\'e9quation de transfert du conditionneur
- Affiche les mesures de tension, de r\'e9sistance et la fr\'e9quence d'acquisition choisie sur un \'e9cran oled 128x64\
- G\'e8re l'encodeur rotatoire pour changer la fr\'e9quence d'acquisition\
\
**KICAD**\
\
- PCB sous forme de Shield pour carte Arduino UNO
- Interface du capteur graphite via un circuit transimp\'e9dance\
- Interface un module Bluetooth\
- Interface un \'e9cran oled\
- Interface un encodeur rotatoire\
\
**Application**\
\
- R\'e9cup\'e8re la mesure de tension\
- Calcule la r\'e9sistance du capteur de graphite connaissant l'\'e9quation de transfert du conditionneur\
- Affiche la valeur de la r\'e9sistance en MΩ\
- Trace un graphique qui d\'e8crit l'\'e9volution de la mesure de tension au cours du temps\
- Mise \'e0 l'\'e9chelle automatique de l'ordonn\'e9e du graphique\
- Possibilit\'e9 de changer la fr\'e9quence d'acquisition (100 ou 20 Hz)\
- Possibilit\'e9 de mettre sur ON ou OFF l'application en temps r\'e9el\

**Banc de test**\
\
- Fonctionne avec un servomoteur
- Permet de g\'e9n\'e9rer des contraintes avec des consignes d'angles
- Permet une grande plage de contraintes
- Am\'e9liore la r\'e9p\'e9tabilit\'e9 des mesures
- Permet la mise en place de mesures autonomes
- Limite la d\'e9terioration des capteur de graphite

\
**DataSheet**\
\
\
## 2. Code et DAO\
\
### 2.1. Arduino\
\
Lien pour installer l'IDE Arduino sur sa machine : https://www.arduino.cc/en/software\
\
#### 2.1.1. Bibliothèques\
\
\'c0 installer depuis l'IDE ou GitHub : \
- Adafruit GFX Library : https://github.com/adafruit/Adafruit-GFX-Library\
- Adafruit SSD1306 : https://github.com/adafruit/Adafruit_SSD1306\
- Adafruit BusIO : https://github.com/adafruit/Adafruit_BusIO\
\
Comment installer une biblioth\'e8que Arduino ? : https://www.arduino.cc/en/Guide/Libraries#how-to-install-a-library\
\
### 2.2. KICAD\
\
Lien pour installer KICAD sur sa machine : https://www.kicad.org/\
\
### 2.3. Application Android\
\
#### 2.3.1. Installer l'application\
\
Lien pour installer un fichier .apk \'e0 partir d'un PC : https://fr.wikihow.com/installer-sur-un-Android-des-fichiers-APK-%C3%A0-partir-d%E2%80%99un-PC\
\
#### 2.3.2. Modifier l'application\
\
Pour modifier le code de l'application Android, vous pouvez utiliser le fichier en .aia dans MIT Inventor : https://appinventor.mit.edu/\
\
### 2.4. Banc de test\
\
## 3. Problèmes rencontrés\
\
### 3.1. Problème 1 : ...\
\
**Description du problème**\
\
**Solution**\
\
\
## 4. Informations sur les auteurs\
\
**Jordi ROUBICHOU**\
\
\'c9tudiant en 4\'e8me ann\'e9e du G\'e9nie Physique de l'INSA de Toulouse\
\
Mail : roubicho@etud.insa-toulouse.fr\
\
**Mathias SOULIER**\
\
\'c9tudiant en 4\'e8me ann\'e9e du G\'e9nie Physique de l'INSA de Toulouse\
\
Mail : msoulier@etud.insa-toulouse.fr}
