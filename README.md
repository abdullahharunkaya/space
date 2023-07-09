# space

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.
The project is build on the flutter version (Channel stable, 3.0.4)
The project is build on the dart version (Dart version 2.17.5)

Project Architecture
The project is build on the Repository pattern architecture.

The project 4 layer

1. **View Layer** : This layer contains the UI.
2. **Bloc Layer** : This layer contains the bloc and the bloc event.
3. **Repo Layer** : This layer contains the repo and the repo event.
4. **Service Layer** : This layer contains the service and the service event.

We have three module in this project

1. **main** : This is the main module, which contains the other two module.
2. **splash** : This is the splash screen module
3. **home**    : This is the home screen module

Splash
This module contains the splash screen and the splash screen view.

Home
This module contains the home screen and the home screen view, service , repo, model and widgets.
1. **home screen** : This is the home screen which contains the list of the spaceX launch program.
2. **home screen view** : This is the view of the home screen which contains the list of the spaceX
launch program.
3. **service** : This is the service class which contains the api call for the spaceX launch
program.
4. **repo** : This is the repo class which contains the api call for the spaceX launch program.
5. **model** : This is the model class which contains the model for the spaceX launch program.
6. **widgets** : This is the widget class which contains the widget for the spaceX launch program.

Widget Tree

![img.png](img.png)