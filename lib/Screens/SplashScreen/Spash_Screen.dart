import 'package:bkash_demo/Widgets/Size%20Config.dart';
import 'package:flutter/material.dart';
import 'package:bkash_demo/Screens/SplashScreen/Components/Body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
