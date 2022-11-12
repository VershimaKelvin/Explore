import 'package:equatable/equatable.dart';
import 'package:untitled4/model/car_model.dart';
import 'package:untitled4/model/coat_of_arm_model.dart';
import 'package:untitled4/model/maps_model.dart';
import 'package:untitled4/model/name_model.dart';

class CountryEntity extends Equatable {
  const CountryEntity({
    required this.name,
    required this.tld,
    required this.cca2,
    required this.ccn3,
    required this.cca3,
    required this.cioc,
    required this.independent,
    required this.status,
    required this.unMember,
    required this.currencies,
    required this.idd,
    required this.capital,
    required this.altSpellings,
    required this.region,
    required this.subregion,
    required this.languages,
    required this.translations,
    required this.latlng,
    required this.landlocked,
    required this.borders,
    required this.area,
    required this.demonyms,
    required this.flag,
    required this.maps,
    required this.population,
    required this.gini,
    required this.fifa,
    required this.car,
    required this.timezones,
    required this.continents,
    required this.flags,
    required this.coatOfArms,
    required this.startOfWeek,
    required this.capitalInfo
  });

  final NameModel name;
  final List<String> tld;
  final String cca2;
  final String ccn3;
  final String cca3;
  final String cioc;
  final String independent;
  final String status;
  final String unMember;
  final Map<String,dynamic> currencies;
  final Map<String,dynamic> idd;
  final List<String> capital;
  final List<String> altSpellings;
  final String region;
  final String subregion;
  final Map<String,dynamic> languages;
  final Map<String,dynamic> translations;
  final List<dynamic> latlng;
  final bool landlocked;
  final List<dynamic> borders;
  final int area;
  final Map<String,dynamic> demonyms;
  final String flag;
  final MapsModel  maps;
  final String population;
  final Map<String,dynamic> gini;
  final String fifa;
  final CarModel  car;
  final List<dynamic> timezones;
  final List<dynamic> continents;
  final Map<String,dynamic> flags;
  final CoatOfArmModel coatOfArms;
  final String startOfWeek;
  final Map<String,dynamic> capitalInfo;

  @override
  List<Object?> get props => [
    name,
    tld,
    cca2,
    ccn3,
    cca3,
    cioc,
   independent,
    status,
    unMember,
    currencies,
    idd,
    capital,
   altSpellings,
    region,
    subregion,
    languages,
     translations,
     latlng,
    landlocked,
    borders,
    area,
    demonyms,
    flag,
    maps,
    population,
    gini,
    fifa,
    car,
    timezones,
    continents,
    flags,
    coatOfArms,
    startOfWeek,
    capitalInfo
  ];
}
