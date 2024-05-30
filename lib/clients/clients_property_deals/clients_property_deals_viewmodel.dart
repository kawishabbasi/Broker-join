import 'package:broker_join/clients/clients_property_deals/clients_property_deals_model.dart';
import 'package:broker_join/clients/clients_property_deals/clients_property_deals_model.dart';
import 'package:broker_join/helper/api_base_helper.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/urls.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientsPropertyDealsViewModel extends GetxController {
  List<property_deals> propertydeals = <property_deals>[].obs;
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    clientproposaldeals();
  }

  clientproposaldeals() async {
    GlobalVariables.showLoader.value = true;
    var res = await ApiBaseHelper().getMethod(
        url: Urls.clientBrokerAccepectedProposal +
            "?user_id=${GlobalVariables.user_id}");
    if (res['success'] == true) {
      var data = res['deals'] as List;
      print(data);
      if (data != null || data.length != 0) {
        propertydeals = [];
        propertydeals.addAll(data.map((e) => property_deals.fromJson(e)));
      }
      print("777777777777777777777777777777777777777");
      print("-------deals---${propertydeals}");

      GlobalVariables.showLoader.value = false;
    } else {
      GetxHelper.showSnackBar(title: 'Error'.tr, message: res['message']);
      print("-----------error----");
    }
    GlobalVariables.showLoader.value = false;
  }
}
