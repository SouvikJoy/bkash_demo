import 'package:bkash_demo/Screens/SplashScreen/Spash_Screen.dart';
import 'package:bkash_demo/Widgets/DefaultBottomButton.dart';
import 'package:bkash_demo/Widgets/form_error.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bkash_demo/Widgets/Size Config.dart';
import 'package:bkash_demo/Widgets/Constrants.dart';
import 'package:bkash_demo/Widgets/form_error.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        //width: double.infinity,
        child: Container(
          //padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(40)),
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      color: kNonTextColor,
                      height: getProportionateScreenHeight(90),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                                Icons.arrow_back,
                              color: kPrimaryColor,
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, SplashScreen.routeName);
                            },
                          ),
                          OutlineButton(
                            textColor: kPrimaryColor,
                            highlightedBorderColor: kPrimaryColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            borderSide: BorderSide(
                              color: kPrimaryColor,
                            ),
                            color: kPrimaryColor,
                            onPressed: () {},
                            child: (
                            Text(
                                "বাংলা",
                              )
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.03),
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      height: getProportionateScreenHeight(80),
                      width: getProportionateScreenWidth(60),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/logo2.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.03),
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                          "Enter mobile number",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(20),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "for ",
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(20),
                                color: kTextColor,
                              )
                            ),
                            TextSpan(
                              text: "Login / Registration",
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(20),
                                fontWeight: FontWeight.bold,
                                color: kTextColor,
                              )
                            )
                          ]
                        ),
                      ),
                    ),
                    SizedBox(height: SizeConfig.screenHeight * 0.03),
                    Container(
                      padding: EdgeInsets.only(left: 30),
                      child: Text(
                          "Mobile Number",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(15),
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
