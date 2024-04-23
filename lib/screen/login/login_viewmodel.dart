import 'package:broker_join/helper/api_base_helper.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/urls.dart';
import 'package:broker_join/screen/add_property/add_more_property_view.dart';
import 'package:broker_join/screen/mainpage/main_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();
  RxBool obscurePassword = true.obs;
  @override
  void onInit() {
    GlobalVariables.showLoader.value = false;
    super.onInit();
  }

  //-----------------------------
  login() async {
    GlobalVariables.showLoader.value = true;

    Map<String, dynamic> param = {
      "phone_no": mobile.text.toString(),
      "password": password.text.toString(),
    };
    print("--------login");
    var res = await ApiBaseHelper().postMethod(url: Urls.login, body: param);
    if (res['success'] == true) {
      GlobalVariables.token = res['access_token'];
      GlobalVariables.user_id = res["data"]['id'];
      print(GlobalVariables.token);
      print(GlobalVariables.user_id);
      Get.to(() => MainView());
    } else {
      GetxHelper.showSnackBar(
          title: 'Error'.tr, message: 'Incorrect Username or Password');
    }
    GlobalVariables.showLoader.value = false;
  }
}
