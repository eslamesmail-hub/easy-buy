import 'package:easy_buy/core/viewmodel/auth_view_model.dart';
import 'package:easy_buy/core/viewmodel/cart_view_model.dart';
import 'package:easy_buy/core/viewmodel/checkout_view_model.dart';
import 'package:easy_buy/core/viewmodel/control_view_model.dart';
import 'package:easy_buy/core/viewmodel/home_view_model.dart';
import 'package:easy_buy/helper/local_storage_data.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthViewModel());
    Get.lazyPut(() => ControlViewModel());
    Get.lazyPut(() => HomeViewModel());
    Get.lazyPut(() => CartViewModel());
    Get.lazyPut(() => LocalStorageData());
    Get.lazyPut(() => CheckOutViewModel());
  }
}
