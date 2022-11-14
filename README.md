<p align="center">
   <img src="assets/splash.png", width="200">
</p>
<h3 align="center">CountriesApp</>
<br/><br/>  
<div align="center">


<a href="">![Twitter URL](https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Ftwitter.com%2Fvershimakelvin)</a>
<a href="">![GitHub commit activity](https://img.shields.io/github/commit-activity/m/VershimaKelvin/Projerctwork)</a>

</div>


## Project Overview


This is a country informative app built with flutter, it consumes an API from which data is gotten from, a list of country data with some information like population, capital, language, currency and other is displayed in the Country detail screen. The app supports both light and dark theme, with multiple languages


## Getting Started 🚀

This project contains only 1 flavor:

- development

To run development either use the launch configuration in VSCode/Android Studio or use the following commands:

```sh
# Development
$ flutter run --target lib/main.dart

```

_\*CountriesApp works on iOS, Android, and Web._

---
## CodeBase

The projects code base is structured in resemblance to clean architecture but not as detailed. With the initiative to make the app easily extensible, everything basically everything was abstracted and Single responsibility factor was put into mind to achieve this.
The project has 6 folders under the lib directory /lib, which are core,domain,model,provider,screens and services with each folder containing a file having a particular responsibility.
I have a datasource file in the service folder where i made my network call, i have a network folder in the core folder which has an api_requester file where i instantiated my dio package and configured it with the base_url, the network folder also have a network file where i checked for internet connectivity using the InternetConnectionChecker package.
Also, it has an error folder still in the core folder where i managed every possible errors, the error folder in turn has an error file and a failure file. In both of these files i handeled errors and failures such as NoInternetFailure,TimoutFailure,NoDataFailure and others.
i also have a constants folder where i created the base_url. The provider folder contains my provider class, the screens folder contains the app screens and a widget folder of some widgets i abstracted and the.

## Pull request and Contribution
Anyone interested in this project can go ahead and fork it, all pull request will be attended to within 24 hours