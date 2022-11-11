import 'package:flutter/material.dart';
import 'package:untitled4/core/widgets/appbar.dart';
import 'package:untitled4/core/widgets/language_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
            ListView.builder(
              itemBuilder: (BuildContext context, int index){
                return const ListTile(
                  leading: Image(
                    image: NetworkImage(''),
                  ),
                  title: Text(''),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}