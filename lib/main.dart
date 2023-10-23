import 'package:exam/Screens/HomeScreen.dart';
import 'package:exam/Screens/ThirdHomeScreen.dart';
import 'package:flutter/material.dart';

import 'Core/ApplicationTheme.dart';
import 'Layout/HomeLayout.dart';
import 'Screens/SecondHomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName : (context) => const HomeLayout(),
      },
      theme: ApplicationTheme.theme,
    );
  }

}