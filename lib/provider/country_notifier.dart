import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled4/core/di/di_container.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled4/core/usecase/usecase.dart';
import 'package:untitled4/domain/entity.dart';
import 'package:untitled4/domain/usecase.dart';
import 'package:untitled4/screens/widgets/app_loading_pop_up.dart';

@lazySingleton
class CountryNotifier extends ChangeNotifier {
  CountryNotifier({
    required this.fetchCountriesUsecase,
  });

  final FetchCountriesUseCase fetchCountriesUsecase;
  List<CountryEntity>? countries;

  Future<void> fetchCountries(BuildContext context) async {

    final navigator = Navigator.of(context);
    unawaited(di<AppLoadingPopup>().show(context));

    print('usecase stated');

    final response = await fetchCountriesUsecase(NoParams());

    print('here is the response $response');
    navigator.pop();
    response.fold(
          (l) {
            print(l);
            Fluttertoast.showToast(
                msg: 'Somethings not right!',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 3,
                backgroundColor: Colors.grey.withOpacity(0.5),
                textColor: Colors.white,
                fontSize: 16.0
            );

        return false;
      },
          (r) {
            countries = r;
            print(countries);
            print('got to countries');
        notifyListeners();
      },
    );
  }

}
