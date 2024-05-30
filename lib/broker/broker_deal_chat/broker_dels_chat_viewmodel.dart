import 'package:broker_join/helper/api_base_helper.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/urls.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BrokerDealsChatviewmodel extends GetxController {
  TextEditingController reason = TextEditingController();
  TextEditingController message = TextEditingController();
  String deals_id = "";
  String button_type = "";
  String id = '';
  String proposalid = '';
  String sent_to = '';

  cancelbrokerdeal() async {
    //GlobalVariables.showLoader.value = true;

    Map<String, dynamic> param = {
      "reason": reason.text.toString(),
      "user_id": GlobalVariables.user_id,
      "proposal_id": deals_id.toString(),
      "request_for": button_type.toString(),
    };

    var res =
        await ApiBaseHelper().postMethod(url: Urls.cancel_deal, body: param);
    if (res['success'] == true) {
      print("--------send------");
      GetxHelper.showSnackBar(title: ''.tr, message: '');

      GlobalVariables.showLoader.value = false;
    } else {
      GetxHelper.showSnackBar(title: 'Error'.tr, message: '');
    }
    GlobalVariables.showLoader.value = false;
  }

  //---------------------------
  chatmessage() async {
    //GlobalVariables.showLoader.value = true;

    Map<String, dynamic> param = {
      "sent_from": GlobalVariables.user_id,
      "sent_to": sent_to,
      "proposal_id": proposalid,
      //"proposal_id": deals_id.toString(),
      "property_id": id,
      "message": message.text,
    };

    var res = await ApiBaseHelper()
        .postMethod(url: Urls.clientBrokerSendMessage, body: param);
    if (res['success'] == true) {
      GetxHelper.showSnackBar(title: ''.tr, message: 'message send');
      message.clear();
      GlobalVariables.showLoader.value = false;
    } else {
      GetxHelper.showSnackBar(title: 'Error'.tr, message: 'message not send');
    }
    GlobalVariables.showLoader.value = false;
  }
}
