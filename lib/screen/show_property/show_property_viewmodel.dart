import 'package:broker_join/helper/api_base_helper.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/urls.dart';
import 'package:broker_join/screen/show_property/show_property_model.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ShowPropertyViewModel extends GetxController {
  List<show_property> property = <show_property>[].obs;

  @override
  void onInit() {
    // showproperty();
    super.onInit();

    print("---oninit");
  }

  @override
  void onReady() {
    showproperty();
  }

  //-------------
  showproperty() async {
    print("-------------------1----------------------");
    GlobalVariables.showLoader.value = true;
    var res = await ApiBaseHelper().getMethod(url: Urls.show_property);
    print("-------------------2----------------------");
    if (res['success'] == true) {
      print("-------------------3----------------------");
      var data = res['property'] as List;
      print("-------------------4----------------------");
      print(data);
      print("-------------------5----------------------");
      if (data != null || data.length != 0) {
        property = [];
        print("-------------------6----------------------");
        property.addAll(data.map((e) => show_property.fromJson(e)));
        print("-------------------7----------------------");
      }
      print("-------------------8---------------------");
      print("777777777777777777777777777777777777777");
      print("-------contact---${property}");
    } else {
      GlobalVariables.showLoader.value = false;
      GetxHelper.showSnackBar(title: 'Error'.tr, message: res['message']);
      print("-----------error----");
    }
    GlobalVariables.showLoader.value = false;
  }
}
