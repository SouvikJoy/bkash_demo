import 'package:flutter/material.dart';

import 'package:bkash_demo/Widgets/Size Config.dart';
import 'package:bkash_demo/Widgets/Constrants.dart';

class DefaultFlatButton extends StatelessWidget {
  const DefaultFlatButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(250),
      height: getProportionateScreenHeight(56),
      child: MaterialButton(
        //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: press,
        highlightColor: Colors.white,
        splashColor: Colors.white,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
