import 'package:broker_join/helper/api_base_helper.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/urls.dart';
import 'package:broker_join/screen/user_profile_properties/user_profile_properties_model.dart';
import 'package:broker_join/screen/user_profile_properties/user_profile_properties_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class UserprofilePropertiesViewModel extends GetxController {
  TextEditingController headline = TextEditingController();
  TextEditingController current_company = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController date_of_birth = TextEditingController();
  TextEditingController profession_type = TextEditingController();
  TextEditingController education = TextEditingController();
  TextEditingController linkedin_profile = TextEditingController();
  List<user_profile> profile = <user_profile>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    // print("---------123-------");

    super.onInit();
  }

  @override
  void onReady() {
    print("---------123-------");
    userprofile();
  }

  userprofile() async {
    GlobalVariables.showLoader.value = true;

    Map<String, dynamic> param = {
      "user_id": GlobalVariables.user_id,
    };
    print("--------login");
    var res =
        await ApiBaseHelper().postMethod(url: Urls.profileInfo, body: param);
    if (res['success'] == true) {
      print("------------------------------------");
      print(res['response']);
      GlobalVariables.user_email = res['response']['email'];
      GlobalVariables.user_no = res['response']['phone_no'];
      //print(GlobalVariables.user_email.value);
      // print(GlobalVariables.user_no.value);
      print("------------------------------------");
      GlobalVariables.showLoader.value = false;
      //Get.to(() => MainView());
    } else {
      GetxHelper.showSnackBar(
          title: 'Error'.tr, message: 'Incorrect Username or Password');
    }
    GlobalVariables.showLoader.value = false;
  }

  //-------------------------------------
  updateprofile() async {
    GlobalVariables.showLoader.value = true;

    Map<String, dynamic> param = {
      "user_id": 41,
      //"user_id": GlobalVariables.user_id,
      "headline": headline.text.toString(),
      "current_company": current_company.text.toString(),
      "phone_no": GlobalVariables.user_no,
      "email": GlobalVariables.user_email,
      "city": city.text.toString(),
      "dob": date_of_birth.text.toString(),
      "professional_type": profession_type.text.toString(),
      "education": education.text.toString(),
      "linkedin_link": linkedin_profile.text.toString(),
    };
    print("--------login");
    var res =
        await ApiBaseHelper().postMethod(url: Urls.updateAbout, body: param);
    if (res['success'] == true) {
      print("------------------------------------");
      GlobalVariables.headline.value = res['response']['headline'];
      GlobalVariables.current_company.value =
          res['response']['current_company'];
      GlobalVariables.phone_no.value = res['response']['phone_no'];
      GlobalVariables.email.value = res['response']['email'];
      GlobalVariables.city.value = res['response']['city'];
      GlobalVariables.dob.value = res['response']['dob'];
      GlobalVariables.professional_type.value =
          res['response']['professional_type'];
      GlobalVariables.education.value = res['response']['education'];
      GlobalVariables.linkedin_link.value = res['response']['linkedin_link'];
      print(res);

      print("------------------------------------");

      GlobalVariables.showLoader.value = false;
      Get.to(() => UserProfileProperties());
    } else {
      GetxHelper.showSnackBar(title: 'Error'.tr, message: '');
    }
    GlobalVariables.showLoader.value = false;
  }
}
