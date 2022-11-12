import 'package:flutter/material.dart';
import 'package:light_carousel/light_carousel.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            LightCarousel(
              onImageChange: (p0, p1) {
                setState(() {
                  _currentIndex = p1 + 1;
                });
              },
              animationDuration: const Duration(seconds: 1),
              dotSpacing: 15,
              dotIncreaseSize: 1.2,
              animationCurve: Curves.fastOutSlowIn,
              dotSize: 10,
              dotColor: Colors.white.withOpacity(0.6),
              dotBgColor: Colors.transparent,
              dotVerticalPadding: 25,
              indicatorBgPadding: 0,
            ),
            const SizedBox(height: 10,),
            Row(
              children: const [
                Text('Population:  '),
                Text('',)
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              children: const [
                Text('Population:  '),
                Text('',)
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              children: const [
                Text('Population:  '),
                Text('',)
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              children: const [
                Text('Population:  '),
                Text('',)
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: const [
                Text('Population:  '),
                Text('',)
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              children: const [
                Text('Population:  '),
                Text('',)
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              children: const [
                Text('Population:  '),
                Text('',)
              ],
            ),
            const SizedBox(height: 5,),
            Row(
              children: const [
                Text('Population:  '),
                Text('',)
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: const [
                Text('Population:  '),
                Text('',)
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: const [
                Text('Population:  '),
                Text('',)
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: const [
                Text('Population:  '),
                Text('',)
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: const [
                Text('Population:  '),
                Text('',)
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: const [
                Text('Population:  '),
                Text('',)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
