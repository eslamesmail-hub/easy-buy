import 'package:easy_buy/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hint;
  final Function onSave;
  final Function validator;
  CustomTextFormField({this.text, this.hint, this.onSave, this.validator});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          text: text,
          color: Colors.green.shade900,
        ),
        TextFormField(
          obscureText: hint == '***********' ? true : false,
          onSaved: onSave,
          validator: validator,
          decoration: InputDecoration(
            fillColor: Colors.white,
            hintText: hint,
            hintStyle: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
