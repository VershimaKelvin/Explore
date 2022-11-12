import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled4/core/usecase/usecase.dart';
import 'package:untitled4/domain/entity.dart';
import 'package:untitled4/domain/usecase.dart';

@lazySingleton
class CountryNotifier extends ChangeNotifier {
  CountryNotifier({
    required this.fetchCountriesUsecase,
  });

  final FetchCountriesUseCase fetchCountriesUsecase;


  List<CountryEntity>? countries;

  Future<void> fetchCountries(  
      BuildContext context,
      ) async {
    final response = await fetchCountriesUsecase(
      NoParams(),
    );
    response.fold(
          (l) {
        return false;
      },
          (r) {
            countries = r;
        notifyListeners();
      },
    );
  }

}
