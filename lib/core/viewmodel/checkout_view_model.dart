import 'package:easy_buy/helper/enum.dart';
import 'package:easy_buy/view/control_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants.dart';

class CheckOutViewModel extends GetxController {
  int get index => _index;
  int _index = 0;

  Pages get pages => _pages;
  Pages _pages = Pages.DeliveryTime;

  String street1, street2, city, state, country;
  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  void changeIndex(int i) {
    if (i == 0 || i < 0) {
      _pages = Pages.DeliveryTime;
      _index = 1;
    } else if (i == 1) {
      _pages = Pages.AddAddress;
      _index = 1;
    } else if (i == 2) {
      globalKey.currentState.save();
      if (globalKey.currentState.validate()) {
        _pages = Pages.Summary;
        _index = 1;
      }
    } else if (i == 3) {
      Get.to(ControlView());
      _pages = Pages.DeliveryTime;
      _index = 0;
    }
    update();
  }

  Color getColor(int i) {
    if (i == _index) {
      return inProgressColor;
    } else if (i < _index) {
      return Colors.green;
    } else {
      return todoColor;
    }
  }
}
