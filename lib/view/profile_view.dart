import 'package:easy_buy/core/viewmodel/profile_view_model.dart';
import 'package:easy_buy/view/auth/login_view.dart';
import 'package:easy_buy/view/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileViewModel>(
      init: ProfileViewModel(),
      builder: (controller) => controller.loading.value
          ? Center(child: CircularProgressIndicator())
          : Scaffold(
              body: Container(
                padding: EdgeInsets.only(top: 50),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                                image: DecorationImage(
                                  image: controller.userModel == null
                                      ? AssetImage('assets/images/avatar.png')
                                      : controller.userModel.pic == 'default'
                                          ? AssetImage(
                                              'assets/images/avatar.png')
                                          : NetworkImage(
                                              controller.userModel.pic),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: controller.userModel.name,
                                  fontSize: 32,
                                  color: Colors.black,
                                ),
                                CustomText(
                                  text: controller.userModel.email,
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 50),
                      Container(
                        child: FlatButton(
                          child: ListTile(
                            title: CustomText(
                              text: 'Edit Profile',
                            ),
                            leading: Image.asset(
                                'assets/icons/Icon_Edit-Profile.png'),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: FlatButton(
                          child: ListTile(
                            title: CustomText(
                              text: 'Shipping Address',
                            ),
                            leading:
                                Image.asset('assets/icons/Icon_Location.png'),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: FlatButton(
                          child: ListTile(
                            title: CustomText(
                              text: 'Order History',
                            ),
                            leading:
                                Image.asset('assets/icons/Icon_History.png'),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: FlatButton(
                          child: ListTile(
                            title: CustomText(
                              text: 'Cards',
                            ),
                            leading:
                                Image.asset('assets/icons/Icon_Payment.png'),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: FlatButton(
                          child: ListTile(
                            title: CustomText(
                              text: 'Notifications',
                            ),
                            leading: Image.asset('assets/icons/Icon_Alert.png'),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        child: FlatButton(
                          child: ListTile(
                            title: CustomText(
                              text: 'Log Out',
                            ),
                            leading: Image.asset('assets/icons/Icon_Exit.png'),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            controller.signOut();
                            Get.offAll(LoginView());
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
