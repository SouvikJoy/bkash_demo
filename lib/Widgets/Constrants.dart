import 'package:flutter/material.dart';
import 'package:bkash_demo/Widgets/Size Config.dart';

const kPrimaryColor = Color(0xFFE91E63);
const kPrimaryLightColor = Color(0xFFF8BBD0);
/*const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFF8BBD0), Color(0xFFE91E63)],
);*/

const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xDD000000);
const kNonTextColor = Color(0xFFFFFFFF);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
RegExp("/^(?:\+88|01)?\d{11}\r?\$/");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your mobile number";
const String kAddressNullError = "Please Enter your address";
const String kInvalidNumberError = "Please Enter Valid Number";

final otpInputDecoration = InputDecoration(
  contentPadding:
  EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
);

//OutlineInputBorder outlineInputBorder() {
  //return OutlineInputBorder(
    //borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    //borderSide: BorderSide(color: kNonTextColor),
  //);
//}
