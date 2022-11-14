import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/core/Theme/myTheme.dart';


class AppbarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();

  @override
  Size get preferredSize =>const Size.fromHeight(80);
}

class _AppbarWidgetState extends State<AppbarWidget> {

  bool isLight = true;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
        title: RichText(
        text: const TextSpan(
          text: 'Explore ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontFamily: 'Pacifico',
          ),
          children: [
            TextSpan(
        text: '.',
        style: TextStyle(
          color: Colors.red,
          fontSize: 23,
          fontWeight: FontWeight.w400,
        ),
            ),
          ],
        ),
      ),
      actions: [
        Consumer<MyTheme>(
          builder: (BuildContext context, value, Widget? child) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: IconButton(
                icon: Icon(
                  isLight? Icons.light_mode_outlined : Icons.dark_mode_outlined,
                  color: Colors.black,
                  size: 25,
                ),
                onPressed: () {
                  setState(() {
                    isLight=!isLight;
                  });
                  value.switchTheme();
                },

              ),
            );
          },
        ),
      ],
    );
  }
}
