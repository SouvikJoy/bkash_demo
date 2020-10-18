import 'package:bkash_demo/Screens/SplashScreen/Spash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:bkash_demo/Widgets/Themes.dart';
import 'package:bkash_demo/Widgets/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bKash Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
