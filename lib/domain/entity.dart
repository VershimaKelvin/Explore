import 'package:equatable/equatable.dart';
import 'package:untitled4/model/car_model.dart';
import 'package:untitled4/model/coat_of_arm_model.dart';
import 'package:untitled4/model/currencies_model.dart';
import 'package:untitled4/model/flags_model.dart';
import 'package:untitled4/model/maps_model.dart';
import 'package:untitled4/model/name_model.dart';
import 'package:untitled4/model/postal_model.dart';

class CountryEntity extends Equatable {
  const CountryEntity({
    required this.name,
    required this.cca2,
     this.capital,
     this.region,
     this.subregion,
     this.population,
     this.continents,
     this.startOfWeek,
    this.timezones,
     this.landlocked,
    this.latlng,
    this.maps,
    this.flags,
    this.car,
    this.borders,
    this.coatOfArms,
    this.postalCode,



  });

  final NameModel name;
  final String cca2;
  final List? capital;
   final String? region;
   final String? subregion;
   final int? population;
   final List? continents;
   final String? startOfWeek;
   final List? timezones;
   final bool? landlocked;
  final List? latlng;
  final MapsModel?  maps;
  final FlagsModel? flags;
  final CarModel?  car;
  final List<String>? borders;
 final CoatOfArmModel? coatOfArms;
  final PostalModel? postalCode;



  @override
  List<Object?> get props => [
        name,
        cca2,
      capital,
      region,
      subregion,
     continents,
     startOfWeek,
     timezones,
     landlocked,
    latlng,
    maps,
    flags,
    car,
    borders,
  coatOfArms,
   postalCode,

      ];
}
