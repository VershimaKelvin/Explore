import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/core/di/di_container.dart';
import 'package:untitled4/core/widgets/appbar.dart';
import 'package:untitled4/core/widgets/language_list.dart';
import 'package:untitled4/provider/country_notifier.dart';
import 'package:untitled4/screens/details_screen.dart';
import 'package:untitled4/screens/widgets/list_tile_widget.dart';

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
  initState() {
    Future.delayed(Duration.zero, _loadCountryData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppbarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Consumer<CountryNotifier>(
          builder: (BuildContext context, countries, Widget? child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(9),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: TextField(
                          controller: myController,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true, //<-- SEE HERE
                            fillColor: Colors.grey[200],
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey[500],
                              size: 20,
                            ),
                            hintText: 'Search Country',
                            hintStyle: TextStyle(
                              color: Colors.grey[500],
                            ),

                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // Background color
                          ),
                          onPressed: () {
                            showModalBottomSheet<void>(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              context: context,
                              backgroundColor: Colors.white,
                              barrierColor: Colors.grey.withOpacity(0.6),
                              isDismissible: false,
                              builder: (context) {
                                return const LanguageList();
                              },
                            );
                          },
                          icon: const Icon(
                              Icons.language_outlined,
                            color: Colors.black,
                          ),
                          label: const Text(
                              'EN',
                            style: TextStyle(
                              color: Colors.black
                            ),
                          ),
                        ),
                      ),
                      SizedBox(

                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // Background color
                          ),
                          onPressed: () {},
                          icon: const Icon(
                              Icons.filter_alt_outlined,
                            color: Colors.black,
                          ),
                          label: const Text(
                              'Filter',
                            style: TextStyle(
                              color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                if (countries.countries?.isNotEmpty == true)
                Expanded(
                  child: ListView.builder(
                    itemCount:countries.countries!.length ,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DetailsScreen()),
                          );
                        },
                        child: ListTile(
                          // leading: Image(
                          //   image: null,
                          // ),
                          title:  Text(
                              countries.countries![index].name.official
                          ),
                          subtitle:Text(
                              'countries.countries![index].capital[0]'
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
