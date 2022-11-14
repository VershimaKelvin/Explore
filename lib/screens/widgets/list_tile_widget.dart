import 'package:flutter/material.dart';
import 'package:untitled4/domain/entity.dart';
import 'package:untitled4/screens/details_screen.dart';

class ListTileWidget extends StatelessWidget {
   ListTileWidget({
    Key? key,
    required this.country,
    required this.index,
  }) : super(key: key);

  final List<CountryEntity> country;
  int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailsScreen()),
        );
      },
      child: ListTile(
        // leading: Image(
        //   image: NetworkImage(country[index].flags.png),
        // ),
        title: Text(
            'country[index].name.official'
        ),
        subtitle:Text(
            'country[index].capital[0]'
        ),
      ),
    );
  }
}