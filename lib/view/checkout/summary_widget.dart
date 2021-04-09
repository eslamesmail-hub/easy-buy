import 'package:easy_buy/constants.dart';
import 'package:easy_buy/core/viewmodel/cart_view_model.dart';
import 'package:easy_buy/core/viewmodel/checkout_view_model.dart';
import 'package:easy_buy/view/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Summary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GetBuilder<CartViewModel>(
        builder: (controller) => Column(
          children: [
            SizedBox(height: 50),
            Container(
              height: 250,
              padding: EdgeInsets.all(20),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                // ignore: missing_return
                itemBuilder: (context, index) => Container(
                  child: Container(
                    width: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          child: Image.network(
                            controller.cartProductModel[index].image,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(height: 10),
                        RichText(
                          maxLines: 1,
                          textAlign: TextAlign.start,
                          text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              text: controller.cartProductModel[index].name),
                        ),
                        SizedBox(height: 10),
                        CustomText(
                          alignment: Alignment.bottomLeft,
                          color: primaryColor,
                          text:
                              '\$ ${controller.cartProductModel[index].price.toString()}',
                        ),
                      ],
                    ),
                  ),
                ),

                itemCount: controller.cartProductModel.length,
                separatorBuilder: (context, index) => SizedBox(width: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Shipping Address',
                fontSize: 24,
              ),
            ),
            GetBuilder<CheckOutViewModel>(
              builder: (controller) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText(
                  fontSize: 24,
                  color: Colors.grey,
                  text:
                      '${controller.street1 + ', ' + controller.street2 + ', ' + controller.state + ', ' + controller.city + ', ' + controller.country}',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
