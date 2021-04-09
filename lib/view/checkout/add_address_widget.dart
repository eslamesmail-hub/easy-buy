import 'package:easy_buy/core/viewmodel/checkout_view_model.dart';
import 'package:easy_buy/view/widgets/custom_text.dart';
import 'package:easy_buy/view/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CheckOutViewModel>(
      init: Get.find(),
      builder: (controller) => Form(
        key: controller.globalKey,
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomText(
                    text: 'Billing address is the same as delivery address',
                    fontSize: 18,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 15),
                  CustomTextFormField(
                    onSave: (value) {
                      controller.street1 = value;
                    },
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'You must write your street';
                      }
                    },
                    text: 'Street 1',
                    hint: '21, Alex cairo',
                  ),
                  SizedBox(height: 15),
                  CustomTextFormField(
                    onSave: (value) {
                      controller.street2 = value;
                    },
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'You must write your street';
                      }
                    },
                    text: 'Street 2',
                    hint: 'Opposite Omegatron, Vicent Quarters',
                  ),
                  SizedBox(height: 15),
                  CustomTextFormField(
                    onSave: (value) {
                      controller.city = value;
                    },
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'You must write your city';
                      }
                    },
                    text: 'City',
                    hint: 'Victoria Island',
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: Get.width,
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: CustomTextFormField(
                              text: 'State',
                              hint: 'Logas State',
                              onSave: (value) {
                                controller.state = value;
                              },
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'You must write your state';
                                }
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: CustomTextFormField(
                              text: 'Country',
                              hint: 'Nigeria',
                              onSave: (value) {
                                controller.country = value;
                              },
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'You must write your country';
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
