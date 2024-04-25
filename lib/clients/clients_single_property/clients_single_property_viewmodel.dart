import 'package:broker_join/clients/client_property_proposal/client_property_proposal_view.dart';
import 'package:broker_join/clients/clients_single_property/clients_single_property_model.dart';
import 'package:broker_join/helper/api_base_helper.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/urls.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClientsSinglePropertyViewModel extends GetxController {
  TextEditingController proposal_timeline = TextEditingController();
  TextEditingController proposal_proposal = TextEditingController();
  TextEditingController proposal_net_profit = TextEditingController();
  TextEditingController proposal_detail = TextEditingController();

  final Rx<clientsproperties> propertydata = clientsproperties().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    clientssingleproperty();
  }

  final List<String> imgList = [
    'images/user_img.png',
    'images/logo.png',
    'images/brokerjoinpic.png',
    'images/user_img.png',
  ];
  var data;
  var data2;
  clientssingleproperty() async {
    GlobalVariables.showLoader.value = true;
    var res = await ApiBaseHelper().getMethod(
        url: Urls.clientSingleProperty +
            "?property_id=${GlobalVariables.ClientsSingleProperty_id}");
    if (res['success'] == true) {
      data = res['property'];
      data2 = res['project_info'];
      propertydata.value = clientsproperties.fromJson(res);

      print(data);
      print(data['user_type']);
      print(data2);
      print(data2['purpose']);
      print("====================00000000===============");
      GlobalVariables.showLoader.value = false;
    } else {
      GetxHelper.showSnackBar(title: 'Error'.tr, message: res['message']);
      print("-----------error----");
    }
    GlobalVariables.showLoader.value = false;
  }

  //----------------------------------------------
  sendproposal() async {
    GlobalVariables.showLoader.value = true;

    Map<String, dynamic> param = {
      "broker_id": GlobalVariables.user_id,
      "property_id": data['id'],
      "timeline": proposal_timeline.text.toString(),
      "commission": proposal_proposal.text.toString(),
      "net_profit": proposal_net_profit.text.toString(),
      "proposal_details": proposal_detail.text.toString(),
    };

    var res = await ApiBaseHelper()
        .postMethod(url: Urls.reqeustClientProposal, body: param);
    if (res['success'] == true) {
      print("--------send------");
      GlobalVariables.showLoader.value = false;
    } else {
      GetxHelper.showSnackBar(
          title: 'Error'.tr, message: 'Incorrect Username or Password');
    }
    GlobalVariables.showLoader.value = false;
  }
}
