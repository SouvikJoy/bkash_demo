import 'package:bkash_demo/Screens/HomeScreen/HomeScreen.dart';
import 'package:bkash_demo/Screens/LoginwithPin/LoginWithPin.dart';
import 'package:bkash_demo/Widgets/DefaultBottomButton.dart';
import 'package:bkash_demo/Widgets/Size%20Config.dart';
import 'package:bkash_demo/Widgets/form_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Components/Body.dart';
import 'package:bkash_demo/Widgets/Constrants.dart';


class SignInScreen extends StatefulWidget {
  static String routeName = "/sign_in";

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  String number;
  bool remember = false;

  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              child: Body(),
            ),
            Container(
              //alignment: Alignment.bottomCenter,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Form(
                      key: _formKey,
                      //padding: EdgeInsets.only(left: 15),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onSaved: (newValue) => number = newValue,
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            removeError(error: kPhoneNumberNullError);
                          } else if (emailValidatorRegExp.hasMatch(value)) {
                            removeError(error: kInvalidNumberError);
                          }
                          return null;
                        },
                        validator: (value) {
                          if (value.isEmpty) {
                            addError(error: kPhoneNumberNullError);
                            return "";
                          } else if (!emailValidatorRegExp.hasMatch(value)) {
                            addError(error: kInvalidNumberError);
                            return "";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey[50],
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey[50],
                            ),
                          ),
                          border: InputBorder.none,
                          hintText: "01XXXXXXXXX",
                          /*filled: false,
                          prefixText: '+88  ',*/
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                          prefixIcon: Container(
                            padding: EdgeInsets.only(left: 10),
                            width: 10,
                            alignment: Alignment.centerLeft,
                            //padding: EdgeInsets.only(top: 14, left: 15),
                            child: Text(
                              "+88  ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.screenHeight * 0.03),
                  Container(
                    //padding: EdgeInsets.only(left: 30, top: 30),
                    child: RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'By proceeding you agree to our ',
                              style: TextStyle(
                                color: kTextColor,
                                fontSize: getProportionateScreenWidth(13),
                              ),
                            ),
                            TextSpan(
                              text: 'Terms and Conditions',
                              style: TextStyle(
                                color: kPrimaryColor,
                                decoration: TextDecoration.underline,
                                fontSize: getProportionateScreenWidth(13),
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),
                  Container(
                    child: FormError(errors: errors),
                  ),
                ],
              ),
            ),
          ]
        ),
      ),
      bottomNavigationBar: DefaultBottomButton(
        press: () {
          Navigator.pushNamed(context, LoginPin.routeName);
          /*if(_formKey.currentState.validate()) {
            _formKey.currentState.save();
            Navigator.pushNamed(context, HomeScreen.routeName);
          }*/
        },
      ),
    );
  }
}