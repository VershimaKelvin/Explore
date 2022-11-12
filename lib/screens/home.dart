import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/core/di/di_container.dart';
import 'package:untitled4/core/widgets/appbar.dart';
import 'package:untitled4/core/widgets/language_list.dart';
import 'package:http/http.dart' as http;
import 'package:untitled4/domain/entity.dart';
import 'package:untitled4/model/country_model.dart';
import 'package:untitled4/provider/country_notifier.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  final myController = TextEditingController();


  void _loadCountryData() {
    di<CountryNotifier>().fetchCountries(context);
  }

  @override
  initState(){
    Future.delayed(Duration.zero, _loadCountryData);
  }

  @override
  Widget build(BuildContext context) {
    final on = Provider.of<CountryNotifier>(context);
    return Scaffold(
      appBar: const AppbarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: myController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.grey[500],
                ),
                prefix: Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60,
                  height: 40,
                  child: ElevatedButton.icon(
                    onPressed: (){
                      showModalBottomSheet<void>(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        context: context,
                        backgroundColor:Colors.white,
                        barrierColor: Colors.grey.withOpacity(0.6),
                        isDismissible:false,
                        builder: (context){
                          return const LanguageList();
                        },);
                    },
                    icon: const Icon(Icons.language_outlined),
                    label: const Text('EN'),
                  ),
                ),
                SizedBox(
                  width: 60,
                  height: 40,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.filter_alt_outlined),
                    label: const Text('Filter'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Consumer<CountryNotifier>(
              builder: (BuildContext context, notifier,child) {
                return ListView.builder(
                  itemBuilder: (BuildContext context,int index ){
                    return Listtile(
                      country: on.countries![index],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Listtile extends StatelessWidget {
  const Listtile({
    Key? key, 
    required this.country,
  }) : super(key: key);

  final CountryEntity country;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Image(
        image: NetworkImage(''),
      ),
      title: Text(
          country.name.common
      ),
    );
  }
}
