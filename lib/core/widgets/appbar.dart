import 'package:flutter/material.dart';
import 'package:untitled4/core/Theme/theme_config.dart';

class AppbarWidget extends StatefulWidget implements PreferredSizeWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();

  @override
  Size get preferredSize => throw UnimplementedError();
}

class _AppbarWidgetState extends State<AppbarWidget> {

  bool isLight = true;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Transform( 
          transform: Matrix4.translationValues(-20.0, 0.0, 0.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
          text: const TextSpan(
            text: 'Explore ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: '',
              fontWeight: FontWeight.w400,
            ),
            children: [
              TextSpan(
                text: '.',
                style: TextStyle(
                  color: Colors.red,
                  decoration: TextDecoration.underline,
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
      ),
              ],
          ),
        ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            onTap: (){
              !isLight;
              currentTheme.switchTheme();
            },
            child: Icon(
              isLight? Icons.light_mode_outlined : Icons.dark_mode_outlined,
            ),
          ),
        ),
      ],
    );
  }
}
