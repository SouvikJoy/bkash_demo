import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:bkash_demo/Widgets/Size Config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Wrap formErrorText({String error}) {
    return Wrap(
      children: [
        Text(error),
      ],
    );
  }
}
