import 'package:bkash_demo/Screens/HomeScreen/HomeScreen.dart';
import 'package:bkash_demo/Widgets/Constrants.dart';
import 'package:bkash_demo/Widgets/Default%20Flat%20Button.dart';
import 'package:bkash_demo/Widgets/Size%20Config.dart';
import 'package:flutter/material.dart';
import 'package:bkash_demo/Screens/SplashScreen/Components/Splash Content.dart';
import 'package:bkash_demo/Widgets/Default Button.dart';
import 'package:bkash_demo/Screens/SignInScreen/Sign_In_Screen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "image": "assets/images/thumbnail.png"
    },
    {
      "image": "assets/images/thumbnail.png"
    },
    {
      "image": "assets/images/thumbnail.png"
    },
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(),
                    Text(
                        'আপনার NID দিয়ে বিকাশ আইডি খুলুন মিনিটেই',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(flex: 1),
                    DefaultButton(
                      text: "লগ ইন / রেজিস্ট্রেশন",
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName,);
                      },
                    ),
                    DefaultFlatButton(
                      text: "বিকাশ অ্যাাপ ঘুরে দেখুন",
                      press: () {},
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 6 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
