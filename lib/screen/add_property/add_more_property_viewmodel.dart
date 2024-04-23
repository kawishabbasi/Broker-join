import 'package:broker_join/helper/api_base_helper.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/urls.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class AddMorePropertyViewModel extends GetxController {
  TextEditingController price = TextEditingController();
  TextEditingController size = TextEditingController();
  TextEditingController floor = TextEditingController();
  TextEditingController Bedrooms = TextEditingController();
  TextEditingController Bathroom = TextEditingController();
  TextEditingController terrace = TextEditingController();
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

  //-------------------
  final List<String> Paymenttype = [
    'Cash',
    'Installments',
  ];
  RxString payment_type = "".obs;
  final List<String> viewtype = [
    'Main street',
    'Side Street',
    'Corner',
    'Back',
    'Garden',
    'Pool',
    'Seaview',
    'Nile',
    'Golf',
    'Other',
  ];
  RxString view_type = "".obs;
  //------------------------
  addproperty() async {
    GlobalVariables.showLoader.value = true;

    Map<String, dynamic> param = {
      "project_id": GlobalVariables.property_id,
      "property_type": property_type.value.toString(),
      "price": price.text.toString(),
      "size": size.text.toString(),
      "floor": floor.text.toString(),
      "bedrooms": Bedrooms.text.toString(),
      "bathrooms": Bathroom.text.toString(),
      "view": view_type.value.toString(),
    };
    print("--------login");
    var res = await ApiBaseHelper()
        .postMethod(url: Urls.addMoreProperty, body: param);
    if (res['success'] == true) {
      print("------------------1----------------");
      print(res['property']);
      print("------------------2----------------");
      GlobalVariables.showLoader.value = false;
    } else {
      GetxHelper.showSnackBar(title: 'Error', message: res['message']);
    }
    GlobalVariables.showLoader.value = false;
  }

  //-------------------------
}
