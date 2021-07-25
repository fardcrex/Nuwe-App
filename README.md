# Nuwe App

Proyecto de reto

![alt text](assets/capture_1.png "code")
![alt text](assets/capture_2.png "code")

## Comenzando 🚀

_Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para propósitos de desarrollo y pruebas._

### Pre-requisitos 📋

#### Tener instalado Flutter

### Instalación 🔧

### instalar dependencias

```
flutter pub get
```

## Ejecutando App ⚙️

### Ejecutar con datos mock (no es necesario integrarlo con Firebase)

```
flutter run --debug -t lib/main_mock.dart
```

#### para su version realase con datos mock

```
flutter run --release -t lib/main_mock.dart
```

### Para los servicios con Firebase descomentar linea en 'android\app\build.gradle' y configurar los google-services.json en los folders 'android\app\'

![alt text](assets/code.png "code")

### Ejecutar en modo producción

```
flutter run --release -t lib/main.dart
```

## Build 📦

### Crear el apk

```
flutter build apk -t lib/main.dart
```

## Construido con 🛠️

- [Redux](http://www.dropwizard.io/1.0.2/docs/) - Como manejador de estados para que otros devs que vengan del frontend con React se integren rápido.

![alt text](assets/redux.png "code")

- [pub](https://maven.apache.org/) - Manejador de dependencias
- [Firebase](https://firebase.google.com/) - Usado como base de datos y authenticacion
- [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) - como arquitectura de la app para escalar comodamente y alternar entre diferentes fuentes de datos rápidamente.

![alt text](assets/arquitectura.png "code")
![alt text](assets/folders.png "code")
