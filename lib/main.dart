import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/core/Theme/myTheme.dart';
import 'package:untitled4/core/Theme/theme_config.dart';
import 'package:untitled4/core/di/di_container.dart';
import 'package:untitled4/screens/home.dart';

import 'provider/country_notifier.dart';



Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<MyTheme>(
          create: (_) => di<MyTheme>(),
        ),
        ChangeNotifierProvider<CountryNotifier>(
          create: (_) => di<CountryNotifier>(),
        ),
      ],
      child:  const App()
    ),
  );
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
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MyTheme>(
      builder: (BuildContext context, value, Widget? child) {
        return MaterialApp(
          //supportedLocales: L10n.all,
          useInheritedMediaQuery: true,
          title: 'Explore',
          debugShowCheckedModeBanner: false,
          //theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: value.currentTheme(),
          home:HomeScreen(),
        );
      },
    );
  }
}