import 'package:broker_join/clients/Sell_rent_property/city_model.dart';
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
  TextEditingController cash = TextEditingController();
  TextEditingController install = TextEditingController();
  RxBool payment_cash = false.obs;
  RxBool payment_install = false.obs;
  List<cities> client_city = <cities>[].obs;

  // @override
  // void onInit() {
  //   // TODO: implement onInit
  //   super.onInit();
  //   pro_city();
  // }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    pro_city();
  }

  final List<String> purposetype = [
    'Investiment',
    'Cash',
  ];
  RxString purpose_type = "".obs;
  //------------------------
  //List<String> city = [];
  final List<String> city = [
    "rawalpindi",
    "lahore",
    "karachi",
  ];
  RxString property_city = "".obs;
  //RxList<dynamic> city = [].obs;
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
  //-----------------------------
  List<String> cityTitles = []; // List to store city titles
  pro_city() async {
    GlobalVariables.showLoader.value = true;
    var res = await ApiBaseHelper().getMethod(url: Urls.clientCities);
    if (res['success'] == true) {
      print("------proposal--====");
      var data = res['cities'] as List;
      print(data);
      if (data != null && data.isNotEmpty) {
        // Clear existing city list
        city.clear();
        // Add cities from the response to the city list
        //city.addAll(data.map<String>((e) => e.toString()));
        //-----------

        print('----city titles----${cityTitles}');
      }

      // if (data != null || data.length != 0) {
      //   client_city = [];

      //   client_city.addAll(data.map((e) => cities.fromJson(e)));
      // }

      print("-------city---${city}");
    } else {
      GetxHelper.showSnackBar(title: 'Error'.tr, message: res['message']);
      print("-----------error----");
    }
    GlobalVariables.showLoader.value = false;
  }

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
      "view": view.text.toString(),
      "street_width": Street_width.text.toString(),
      "finish_type": finish_type.toString(),
      "floors": floor.text.toString(),
      "year_built": Years_build.text.toString(),
      "payment_type": Payment_method.value.toString(),
      "is_cash": payment_cash.toString(),
      "is_installment": payment_install.toString(),
      "cash_price": cash.text.toString(),
      "inst_price": install.text.toString(),
      "price": price.text.toString(),
      "brokerCommission": broker_commission.text.toString(),
      "timeline": timeline.text.toString(),
      "user_id": GlobalVariables.user_id,
    };

    var res = await ApiBaseHelper()
        .postMethod(url: Urls.addClientProperty, body: param);
    if (res['success'] == true) {
      // print("------------------1----------------");
      // print(res['property']);
      // GlobalVariables.property_id = res['property']['id'];
      // print("---------property_id----------${GlobalVariables.property_id}");
      print("------------------2----------------");
      GetxHelper.showSnackBar(
          title: '', message: 'Property publish successfully');
      GlobalVariables.showLoader.value = false;
    } else {
      GetxHelper.showSnackBar(title: 'Error', message: res['message']);
    }
    GlobalVariables.showLoader.value = false;
  }
}
