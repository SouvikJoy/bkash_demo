import 'package:bkash_demo/Widgets/Size%20Config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
        this.image,
}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(260),
          width: getProportionateScreenWidth(200),
        ),
      ],
    );
  }
}
