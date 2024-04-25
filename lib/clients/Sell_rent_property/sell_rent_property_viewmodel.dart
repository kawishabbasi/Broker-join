import 'package:broker_join/helper/api_base_helper.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/urls.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SellRentPropertyViewModel extends GetxController {
  TextEditingController district = TextEditingController();
  TextEditingController size = TextEditingController();
  TextEditingController bedrooms = TextEditingController();
  TextEditingController bathrooms = TextEditingController();
  TextEditingController view = TextEditingController();
  TextEditingController Street_width = TextEditingController();
  TextEditingController floor = TextEditingController();
  TextEditingController Years_build = TextEditingController();
  TextEditingController Payment_method = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController broker_commission = TextEditingController();
  TextEditingController timeline = TextEditingController();

  final List<String> purposetype = [
    'Investiment',
    'Cash',
  ];
  RxString purpose_type = "".obs;
  //------------------------
  final List<String> city = [
    'Cairo',
    'Rawalpindi',
  ];
  RxString property_city = "".obs;
  //---------------------------
  final List<String> propertytype = [
    'Compound',
    'Villa',
    'Twin house',
    'Apartment',
    'Commercial',
    'Tower',
    'Land',
    'Chalets',
    'Building',
    'Medical',
    'Administrative',
    'Mall',
  ];
  RxString property_type = "".obs;
  //--------------------------
  final List<String> Finishtype = [
    'Extra super lux',
    'Super lux',
    'Lux',
    'Semi finished',
    'Without finish',
  ];
  RxString finish_type = "".obs;

  //--------------------------
  addclientproperty() async {
    GlobalVariables.showLoader.value = true;
    Map<String, dynamic> param = {
      "purpose": purpose_type.toString(),
      "city": property_city.toString(),
      "district": district.text.toString(),
      "property_type": property_type.toString(),
      "size": size.text.toString(),
      "bedrooms": bedrooms.text.toString(),
      "bathrooms": bathrooms.text.toString(),
      "view": view.value.toString(),
      "street_width": Street_width.text.toString(),
      "finish_type": finish_type.toString(),
      "floors": floor.text.toString(),
      "year_built": Years_build.text.toString(),
      "payment_type": Payment_method.value.toString(),
      "price": price.text.toString(),
      "brokerCommission": broker_commission.text.toString(),
      "timeline": timeline.text.toString(),
      "user_id": 42,
    };

    var res = await ApiBaseHelper()
        .postMethod(url: Urls.addClientProperty, body: param);
    if (res['success'] == true) {
      // print("------------------1----------------");
      // print(res['property']);
      // GlobalVariables.property_id = res['property']['id'];
      // print("---------property_id----------${GlobalVariables.property_id}");
      print("------------------2----------------");
      GlobalVariables.showLoader.value = false;
    } else {
      GetxHelper.showSnackBar(title: 'Error', message: res['message']);
    }
    GlobalVariables.showLoader.value = false;
  }
}
