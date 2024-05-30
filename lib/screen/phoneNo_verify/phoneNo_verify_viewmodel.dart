import 'package:broker_join/clients/clients_main_page/clients_main_view.dart';
import 'package:broker_join/helper/api_base_helper.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/urls.dart';
import 'package:broker_join/screen/mainpage/main_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneNoVerifyViewModel extends GetxController {
  TextEditingController otp = TextEditingController();

  verify_otp() async {
    GlobalVariables.showLoader.value = true;
    Map<String, dynamic> param = {
      "otp": otp.text.toString(),
    };
    print("---------------1---------------");
    var res =
        await ApiBaseHelper().postMethod(url: Urls.verifyotp, body: param);
    print("---------------2---------------");
    if (res['success'] == true) {
      //GlobalVariables.token = res['token'];
      // print(GlobalVariables.token);
      print("--------------------otp--------------");
      GlobalVariables.showLoader.value = false;
      if (GlobalVariables.user_type == "Broker") {
        Get.to(() => MainView());
      } else if (GlobalVariables.user_type == "User") {
        Get.to(() => ClientsMainPage());
      }
    } else {
      //GlobalVariables.showLoader == true;
      // GlobalVariables.showLoader.value = false;
      print("error");
      GetxHelper.showSnackBar(title: 'Error', message: res['message']);
    }
    GlobalVariables.showLoader.value = false;
  }
}
