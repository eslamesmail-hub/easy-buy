import 'package:easy_buy/constants.dart';
import 'package:easy_buy/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomLargeButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  CustomLargeButton({this.text, this.onPressed});
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.all(18),
      child: CustomText(
        text: text,
        color: Colors.white,
        alignment: Alignment.center,
      ),
      onPressed: onPressed,
      color: primaryColor,
    );
  }
}