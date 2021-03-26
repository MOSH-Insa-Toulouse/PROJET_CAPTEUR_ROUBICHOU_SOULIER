# Projet Capteur Graphite ROUBICHOU SOULIER
Bienvenue sur notre Github, découvrez notre travail !

# Sommaire
<!-- TOC depthFrom:2 -->
  - [1. Description](#1-description)
  - [2. Codes et DAO](#2-code-et-dao)
    - [2.1. Arduino](#21-arduino)
      - [2.1.1. Bibliothèques](#211-bibliothèques)
      - [2.1.2. Code Arduino](#212-code-arduino)
    - [2.2. KICAD](#22-kicad)
    - [2.3. Application Android](#23-application-android)
      - [2.3.1. MIT App Inventor](#231-mit-app-inventor)
      - [2.3.2. Installer une application](#231-installer-une-application)
    - [2.4. Banc de test](#24-banc-de-test)
  - [3. Problèmes rencontrés](#3-problèmes-rencontrés)
    - [3.1. Problème 1 :](#31-problèmes-1)
  - [4. Informations sur les auteurs](#4-informations-sur-les-auteurs)
<!-- /TOC -->

## 1. Description

Ce Git contient toutes les ressources nécessaires pour le projet capteur 2021 du G\'e9nie Physique de l'INSA de Toulouse. Ce projet à pour but le développement d'un **capteur de déformation** à bas coût et écoresponsable. Notre capteur exploite la dépendance entre la conductivité électrique et l’espace moyen entre les particules au sein d’un système granuleux. Le transport des électrons entre les nanoparticules de graphite est régi par l’effet tunnel. Ainsi, l’extension et la contraction du réseau percolé induit par un stress mécanique affectent la distance inter-particule et donc la conductivité électrique globale de la couche de graphite. L’écriture au crayon sur du papier permet la mise en place d’une couche de graphite présentant un réseau percolé. Sa déformation provoque une variation de résistance réversible et exploitable pour créer un extensomètre. Le conditionneur de notre capteur est un Shield comportant un circuit transimpédence ainsi que des interfaces pour un module bluetooth, une roue codeuse et un écran OLED. Ce dernier à été réalisé sur **KICAD**. Le code principal à été réalisé en C++ sur l'**IDE Arduino**. Un application téléphone à été développée sur **MIT App Inventor** pour communiquer et recevoir des données à distance, mais aussi pour contrôler les paramètres du capteur. Un banc de mesure réalisé en **impression 3D** nous permet à l'aide d'un servomoteur d'étudier la réponse en déformation de différents capteurs (dont la concentration en graphite varie).

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


## 2. Code et DAO

### 2.1. Arduino

Lien pour installer l'IDE Arduino sur sa machine : https://www.arduino.cc/en/software\

#### 2.1.1. Bibliothèques

À installer depuis l'IDE ou GitHub : 
- Adafruit GFX Library : https://github.com/adafruit/Adafruit-GFX-Library
- Adafruit SSD1306 : https://github.com/adafruit/Adafruit_SSD1306
- Adafruit BusIO : https://github.com/adafruit/Adafruit_BusIO

Comment installer une bibliothèque Arduino ? : https://www.arduino.cc/en/Guide/Libraries#how-to-install-a-library\

#### 2.1.2. Code Ardunio

Notre code Arduino est à télécharger au lien suivant: https://github.com/MOSH-Insa-Toulouse/PROJET_CAPTEUR_ROUBICHOU_SOULIER/blob/230c8323b89008d6615a6afa0b6356e3ce4d4a17/Code%20Arduino/Projet_Capteur.ino


### 2.2. KICAD

Lien pour installer KICAD sur sa machine : https://www.kicad.org/\


### 2.3. Application Android

Voici un aperçu de l'application que nous avons développé. Retrouvez le code de cette application (.aia) sure notre Github via le lien suivant:https://github.com/MOSH-Insa-Toulouse/PROJET_CAPTEUR_ROUBICHOU_SOULIER/blob/26b40920e06c2dba8526cb9ba54827a0fe55c7c3/Application/ShieldcinqA_II.aia

![Aperçu de l'application](https://github.com/MOSH-Insa-Toulouse/PROJET_CAPTEUR_ROUBICHOU_SOULIER/blob/d21327abb01d30de01a223b486101d84e5ce3184/Application/Aper%C3%A7u%20de%20l'application.jpg)

#### 2.3.1. MIT App Inventor

Lien du site internet de création d'application MIT App Inventor : https://appinventor.mit.edu\

#### 2.3.2. Installer une application

Aide pour installer un fichier .apk à partir d'un PC : https://fr.wikihow.com/installer-sur-un-Android-des-fichiers-APK-%C3%A0-partir-d%E2%80%99un-PC\


### 2.4. Banc de test


## 3. Problèmes rencontrés

### 3.1. Problème 1 : ...

**Description du problème**

**Solution**


## 4. Informations sur les auteurs

**Jordi ROUBICHOU**

Étudiant en 4 ième année du Génie Physique de l'INSA de Toulouse

Mail : roubicho@etud.insa-toulouse.fr

**Mathias SOULIER**

Étudiant en 4 ième année du Génie Physique de l'INSA de Toulouse

Mail : msoulier@etud.insa-toulouse.fr
