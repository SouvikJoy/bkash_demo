import 'package:bkash_demo/Screens/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:bkash_demo/Widgets/Constrants.dart';
import 'package:bkash_demo/Widgets/form_error.dart';

class DefaultBottomButton extends StatelessWidget {
  const DefaultBottomButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.bottomCenter,
      child: FlatButton(
        height: 50,
        color: kPrimaryColor,
        disabledColor: Colors.grey,
        onPressed: press,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Next",
              style: TextStyle(
                color: kNonTextColor,
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: kNonTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
