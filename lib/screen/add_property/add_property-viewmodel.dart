import 'package:broker_join/helper/api_base_helper.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/urls.dart';
import 'package:broker_join/screen/add_property/add_more_property_view.dart';
import 'package:broker_join/screen/show_property/show_property_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPropertyViewModel extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    GlobalVariables.showLoader.value = false;
  }

  TextEditingController city = TextEditingController();
  TextEditingController district = TextEditingController();
  //TextEditingController project_type = TextEditingController();
  TextEditingController project_name = TextEditingController();
  TextEditingController size = TextEditingController();
  TextEditingController floor = TextEditingController();
  TextEditingController bedrooms = TextEditingController();
  TextEditingController bathrooms = TextEditingController();
  TextEditingController terrace = TextEditingController();
  //TextEditingController view = TextEditingController();
  TextEditingController street_with = TextEditingController();
  //TextEditingController finish_type = TextEditingController();
  TextEditingController year_build = TextEditingController();
  //TextEditingController payment_type = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController down_payment = TextEditingController();
  TextEditingController years_installment = TextEditingController();
  TextEditingController yearly_installment = TextEditingController();
  TextEditingController quartly_installment = TextEditingController();
  TextEditingController delivery_payment = TextEditingController();
  TextEditingController cash_price = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController parking_and_store = TextEditingController();
  TextEditingController maintenance_deposite = TextEditingController();
  TextEditingController club_fees = TextEditingController();

  //------------------------------------------------------------
  //TextEditingController parkingandstore = TextEditingController();
  //TextEditingController maintenance_deposit = TextEditingController();
  //TextEditingController club_fees = TextEditingController();
  TextEditingController land_size = TextEditingController();
  TextEditingController building_size = TextEditingController();
  TextEditingController developer = TextEditingController();
  TextEditingController owner = TextEditingController();
  TextEditingController about_the_developer = TextEditingController();
  TextEditingController previous_work = TextEditingController();
  TextEditingController units_type = TextEditingController();
  TextEditingController project_feature = TextEditingController();
  TextEditingController payment_terms = TextEditingController();
  //---------------------------
  final List<String> projecttype = [
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
  RxString project_type = "".obs;
  //-----------------------------
  final List<String> Paymenttype = [
    'Cash',
    'Installments',
  ];
  RxString payment_type = "".obs;
//----------------------------
  final List<String> Finishtype = [
    'Extra super lux',
    'Super lux',
    'Lux',
    'Semi finished',
    'Without finish',
  ];
  RxString finish_type = "".obs;
//---------------------------
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
//---------------------------------
  addproperty() async {
    GlobalVariables.showLoader.value = true;
    //GlobalVariables.showLoader.value = true;
    Map<String, dynamic> param = {
      "city": city.text.toString(),
      "district": district.text.toString(),
      "project_type": project_type.value.toString(),
      "project_name": project_name.text.toString(),
      "size": size.text.toString(),
      "floor": floor.text.toString(),
      "bedrooms": bedrooms.text.toString(),
      "bathrooms": bathrooms.text.toString(),
      "terrace": terrace.text.toString(),
      "view": view_type.value.toString(),
      "street_width": street_with.text.toString(),
      "finish_type": finish_type.value.toString(),
      "year_built": year_build.text.toString(),
      "payment_type": payment_type.value.toString(),
      "price": price.text.toString(),
      "down_payment": down_payment.text.toString(),
      "years_installment": years_installment.text.toString(),
      "quartly_installment": quartly_installment.text.toString(),
      "delivery_payment": delivery_payment.text.toString(),
      "cash_price": cash_price.text.toString(),
      "description": description.text.toString(),
      //"lat": lat.text.toString(),
      //"lng": city.text.toString(),
      "address": address.text.toString(),
      "parking_store": parking_and_store.text.toString(),
      "maintenance_deposite": maintenance_deposite.text.toString(),
      "club_fees": club_fees.text.toString(),
      "land_size": land_size.text.toString(),
      "building_size": building_size.text.toString(),
      "developer": developer.text.toString(),
      "owner": owner.text.toString(),
      "about_developer": about_the_developer.text.toString(),
      "privious_work": previous_work.text.toString(),
      "unite_type": units_type.text.toString(),
      "project_features": project_feature.text.toString(),
      "payment_terms": payment_terms.text.toString(),
    };
    print("--------login");
    var res =
        await ApiBaseHelper().postMethod(url: Urls.add_property, body: param);
    if (res['success'] == true) {
      print("------------------1----------------");
      print(res['property']);
      GlobalVariables.property_id = res['property']['id'];
      print("---------property_id----------${GlobalVariables.property_id}");
      print("------------------2----------------");
      GlobalVariables.showLoader.value = false;
      if (GlobalVariables.addproperty_check == 0) {
        Get.to(() => ShowPropertyView());
      } else if (GlobalVariables.addproperty_check == 1) {
        Get.to(() => AddMorePropertyView());
      }
    } else {
      GetxHelper.showSnackBar(title: 'Error', message: res['message']);
    }
    GlobalVariables.showLoader.value = false;
  }
}
