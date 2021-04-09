import 'package:easy_buy/constants.dart';
import 'package:easy_buy/core/viewmodel/auth_view_model.dart';
import 'package:easy_buy/view/auth/register_view.dart';
import 'package:easy_buy/view/widgets/custom_large_button.dart';
import 'package:easy_buy/view/widgets/custom_social_button.dart';
import 'package:easy_buy/view/widgets/custom_text.dart';
import 'package:easy_buy/view/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class LoginView extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0XFFFAFAFA),
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
                  GestureDetector(
                    onTap: () => Get.to(RegisterView()),
                    child: CustomText(
                      text: 'Sign Up',
                      color: primaryColor,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              CustomText(
                text: 'Sign in to Continue',
                fontSize: 14,
                color: Colors.grey,
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
                text: 'SIGN IN',
                onPressed: () {
                  _globalKey.currentState.save();

                  if (_globalKey.currentState.validate()) {
                    controller.signInWithEmailAndPassword();
                  }
                },
              ),
              SizedBox(height: 20),
              CustomText(
                text: '-OR-',
                alignment: Alignment.center,
              ),
              SizedBox(height: 20),
              GestureDetector(
                child: CustomSocialButton(
                  text: 'Sign In with Facebook',
                  imageUrl: 'assets/images/icon_facebook.png',
                ),
                onTap: () {
                  controller.facebookSignInMethod();
                },
              ),
              SizedBox(height: 20),
              GestureDetector(
                child: CustomSocialButton(
                  text: 'Sign In with Google',
                  imageUrl: 'assets/images/icon_google.png',
                ),
                onTap: () {
                  controller.googleSignInMethod();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
