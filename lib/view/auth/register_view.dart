import 'package:easy_buy/core/viewmodel/auth_view_model.dart';
import 'package:easy_buy/view/auth/login_view.dart';
import 'package:easy_buy/view/widgets/custom_large_button.dart';
import 'package:easy_buy/view/widgets/custom_text.dart';
import 'package:easy_buy/view/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0XFFFAFAFA),
        leading: GestureDetector(
          onTap: () {
            Get.off(LoginView());
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        child: Form(
          key: _globalKey,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Welcome,',
                    fontSize: 30,
                  ),
                ],
              ),
              SizedBox(height: 10),
              CustomText(
                text: 'Sign Up to Continue',
                fontSize: 14,
                color: Colors.grey,
              ),
              SizedBox(height: 30),
              CustomTextFormField(
                text: 'Name',
                hint: 'Ali Zaki',
                onSave: (value) {
                  controller.name = value;
                },
                validator: (value) {
                  if (value == null) {
                    print('ERROR');
                  }
                },
              ),
              SizedBox(height: 30),
              CustomTextFormField(
                text: 'Email',
                hint: 'ali52@gmail.com',
                onSave: (value) {
                  controller.email = value;
                },
                validator: (value) {
                  if (value == null) {
                    print('ERROR');
                  }
                },
              ),
              SizedBox(height: 40),
              CustomTextFormField(
                text: 'Password',
                hint: '***********',
                onSave: (value) {
                  controller.password = value;
                },
                validator: (value) {
                  if (value == null) {
                    print('ERROR');
                  }
                },
              ),
              SizedBox(height: 20),
              CustomText(
                text: 'Forgot Password?',
                fontSize: 14,
                alignment: Alignment.topRight,
              ),
              SizedBox(height: 20),
              CustomLargeButton(
                text: 'SIGN UP',
                onPressed: () {
                  _globalKey.currentState.save();

                  if (_globalKey.currentState.validate()) {
                    controller.signUpWithEmailAndPassword();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
