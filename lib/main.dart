import 'package:flutter/material.dart';
import 'package:untitled4/core/Theme/theme_config.dart';
import 'package:untitled4/screens/home.dart';



void main() {
  runApp(const App());
}




class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {


  @override
  initState(){
    super.initState();
    currentTheme.addListener(() {
      setState(){}
            }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //supportedLocales: L10n.all,
      useInheritedMediaQuery: true,
      title: 'Explore',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: currentTheme.currentTheme(),
      home: HomeScreen(),
    );
  }
}