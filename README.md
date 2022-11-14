



## Project Overview

<a href="">![Twitter URL](https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Ftwitter.com%2Fvershimakelvin)</a>
This is a country informative app built with flutter, it consumes an API from which data is gotten from, a list of country data with some information like population, capital, language, currency and other is displayed in the Country detail screen. The app supports both light and dark theme, with multiple languages


## Getting Started 🚀

This project contains only 1 flavor:

- development

To run development either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --target lib/main.dart

```

---
## CodeBase

The projects code base is structured in resemblance to clean architecture but not as detailed. With the initiative to make the app easily extensible, everything basically everything was abstracted and Single responsibility factor was put into mind to achieve this.
The project has 6 folders under the lib directory /lib, which are core,domain,model,provider,screens and services with each folder containing a file having a particular responsibility.
I have a datasource file in the service folder where i made my network call, i have a network folder in the core folder which has an api_requester file where i instantiated my dio package and configured it with the base_url, the network folder also have a network file where i checked for internet connectivity using the InternetConnectionChecker package.
Also, it has an error folder still in the core folder where i managed every possible errors, the error folder in turn has an error file and a failure file. In both of these files i handeled errors and failures such as NoInternetFailure, TimoutFailure, NoDataFailure and others.
i also have a constants folder where i created the base_url. The provider folder contains my provider class, the screens folder contains the app screens and a widget folder of some widgets i abstracted.

```
lib
├── core
│   ├-----constants
│   │      ├── network_client.dart
│   │
|   |-----di
│   |     ├── di_container.dart
│   │     └── di.container.config.dart
│   │     └── register_module.dart
│   │
│   │-----errors
│   |     ├── error.dart
│   │     └── failure.dart
│   │
│   │-----network
│   |     ├── api_requester.dart
│   │     └── network_info.dart
│   │
│   │-----Theme
│   |     ├── myTheme.dart
│   │     └── response.dart
│   │     └── theme_config.
│   │
│   │-----usecase
│   |     └──  usecase.dart
│   │     
│   │-----widgets
│   |     └──  appbar.dart
│   │ 
│   │ 
├── domain  
│   │-----repository
│   |     ├── country_repository.dart
│   │     └── country_repository.dart
│   │ 
│   │-----usecase
│   |     └──  fetch_countires_usecase.dart
│   │
│   │-----entity.dart
│   │ 
│   │
├── model 
│   │-----(all models can be found here)
│   │
│   │
├── provider
│   │-----country_notifier.dart
│   │
│   │
├── screens
│   │-----details_screen.dart
│   │-----home.dart
│   │
│   │
├── services
│   │-----data_source.dart

 
```

## Libraries Used
For this project i used a couple of libraries to achieve an easily extensible codebase and clean code writing. Here are some packages i used.

```sh
# Dio
  I usde Dio for network request
  
# internet_connection_checker
  A pure Dart library that checks for internet by opening a socket to a list of specified addresses, each with individual port and timeout

# json_annotation
  Classes and helper functions that support JSON code generation via the `json_serializable` package.
  
# equatable
  A Dart package that helps to implement value based equality without needing to explicitly override == and hashCode.

# provider
  A wrapper around InheritedWidget to make them easier to use and more reusable.
  
# json_serializable
  Automatically generate code for converting to and from JSON by annotating Dart classes.
  
# injectable
  Injectable is a convenient code generator for get_it.
  
# get_it: ^7.2.0
  Simple direct Service Locator that allows to decouple the interface from a concrete implementation and to access the concrete implementation from everywhere in your App

```
These some of the packages i used to achieve a clean code and structure

## Challenges faced
I faced a lot of challenges considering that i am not too good with some of these packages, i was getting an error using getIt that my classes arent registered when i had already registered, i spent a full day on this error, i wanted to give up but i persisted until i realized i had to run build runner build after manualling deleting the perviously generted .config file. Also, after i had created my model, i was getting an error like 'List<dynamic> is not a subtype of Map<Sting,dynamic>' it sounds like an easy error but i spent almost a whole day on it as well until i realised some of the field were not present in all maps so i had to make some nullable. so basically thats some of the challenges i faced.

## Features i would like to add
it would be nice if the app has like a couple of short videos on each country that shows a little bit on what the people of the country look like and their culture

## Appetize Link
