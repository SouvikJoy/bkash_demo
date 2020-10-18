import 'package:bkash_demo/Screens/HomeScreen/HomeScreen.dart';
import 'package:bkash_demo/Screens/LoginwithPin/LoginWithPin.dart';
import 'package:bkash_demo/Screens/SignInScreen/Sign_In_Screen.dart';
import 'package:flutter/material.dart';
import 'package:bkash_demo/Screens/SplashScreen/Spash_Screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  LoginPin.routeName: (context) => LoginPin(),

};