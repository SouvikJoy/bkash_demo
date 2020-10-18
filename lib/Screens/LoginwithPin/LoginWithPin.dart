import 'package:bkash_demo/Screens/HomeScreen/HomeScreen.dart';
import 'package:bkash_demo/Widgets/DefaultBottomButton.dart';
import 'package:bkash_demo/Widgets/PasswordField.dart';
import 'package:bkash_demo/Widgets/Size%20Config.dart';
import 'package:bkash_demo/Widgets/form_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Components/Body.dart';
import 'package:bkash_demo/Widgets/Constrants.dart';


class LoginPin extends StatefulWidget {
  static String routeName = "/login_pin";

  @override
  _LoginPinState createState() => _LoginPinState();
}

class _LoginPinState extends State<LoginPin> {
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
                        //padding: EdgeInsets.only(left: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          enabled: false,
                          onSaved: (newValue) => number = newValue,
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            labelText: 'Account Number',
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
                            /*filled: false,
                          prefixText: '+88  ',*/
                            hintStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            prefixIcon: Container(
                              height: 50,
                              /*padding: EdgeInsets.only(left: 10),
                              width: 10,*/
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(top: 14, left: 15),
                              child: Text(
                                "+8801786060067",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:getProportionateScreenWidth(15),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    /*Container(
                      padding: EdgeInsets.only(left: 30),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "bKash PIN",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(15),
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),*/
                    Container(
                      child: PasswordField(),
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
          Navigator.pushNamed(context, HomeScreen.routeName);
          /*if(_formKey.currentState.validate()) {
            _formKey.currentState.save();
            Navigator.pushNamed(context, HomeScreen.routeName);
          }*/
        },
      ),
    );
  }
}