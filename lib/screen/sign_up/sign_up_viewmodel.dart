import 'package:broker_join/helper/api_base_helper.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/urls.dart';
import 'package:broker_join/screen/mainpage/main_view.dart';
import 'package:broker_join/screen/phoneNo_verify/phoneNo_verify_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class SignUpViewModel extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirm_password = TextEditingController();
  //TextEditingController name = TextEditingController();
  RxBool obscurePassword = true.obs;
  RxBool obscurePassword2 = true.obs;
  @override
  void onInit() {
    GlobalVariables.showLoader.value = false;
    super.onInit();
  }

  final List<String> items = [
    'Accountant',
    'Lawyer',
    'Engineering',
    'Scientist',
  ];

  final List<String> gameList = [
    'Male',
    'Female',
    'Other',
  ];
  RxString selectedValue2 = ''.obs;
//  RxString selectedValue = "".obs;
//-------------------------------------------------------------
  register() async {
    GlobalVariables.showLoader.value = true;
    Map<String, dynamic> param = {
      "name": name.text.toString(),
      "email": email.text.toString(),
      "password": password.text.toString(),
      "phone_no": mobile.text.toString(),
      "professional_type": selectedValue2.value.toString()
    };
    print("---------------1---------------");
    var res = await ApiBaseHelper().postMethod(url: Urls.register, body: param);
    print("---------------2---------------");
    if (res['success'] == true) {
      GlobalVariables.token = res['token'];
      print(GlobalVariables.token);
      GlobalVariables.showLoader.value = false;
      GlobalVariables.number = res["data"]['phone_no'];
      GlobalVariables.user_id = res["data"]['id'];
      print("----------------------number-----------------------------------");
      print(GlobalVariables.number);
      print(GlobalVariables.user_id);
      print("----------------------number-----------------------------------");
      Get.to(() => PhoneNoVerifyView());
    } else {
      //GlobalVariables.showLoader == true;
      GlobalVariables.showLoader.value = false;
      print("error");
      GetxHelper.showSnackBar(title: 'Error', message: res['message']);
    }
    GlobalVariables.showLoader.value = false;
  }
}
