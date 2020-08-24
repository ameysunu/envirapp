# Envirapp
<img src= "screenshots/envirapp.png">

An app that helps people understand how vital environment is and helps spread voice about how, we as humans are not conserving our resources.<br> <br>
[![Codemagic build status](https://api.codemagic.io/apps/5f36e976177fb1001d5baa0e/5f36e976177fb1001d5baa0d/status_badge.svg)](https://codemagic.io/apps/5f36e976177fb1001d5baa0e/5f36e976177fb1001d5baa0d/latest_build)
[![GitHub stars](https://img.shields.io/github/stars/ameysunu/envirapp?logo=github)](https://github.com/ameysunu/envirapp/stargazers)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Run
Install [Flutter](https://flutter.dev) and run 
```
flutter doctor
```
Make sure the requirements specified above are satisfied.

Navigate to project directory and run
```
flutter clean
``` 
This is to remove previous build and also to restore the app as per Flutter update.

Open the project in Android Studio or VSCode and make sure you have Flutter pre-requisites needed for running the app, including the Dart and Flutter extension and manually run the files. For iOS devices, open the project in XCode and navigate to iOS files and open up Runner.xcproj and set up team and signing on XCode and run the program. 

Certain issues might arise while running the app on macOS and XCode, hence first follow the clean command on project directory and then run

```
pod install
```
then run 
```
flutter build ios
```
After the commands are run, run the Runner on XCode.

## Screenshots
<img src= "screenshots/home.png" width="360" height="720" >   <img src= "screenshots/earth.png" width="360" height="720" >   <img src= "screenshots/water.png" width="360" height="720" >   <img src= "screenshots/energy.png" width="360" height="720" > 
