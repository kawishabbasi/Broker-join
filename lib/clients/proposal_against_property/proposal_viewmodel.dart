import 'package:broker_join/clients/clients_property_deals/client_property_deals_view.dart';
import 'package:broker_join/clients/proposal_against_property/proposal_model.dart';
import 'package:broker_join/helper/api_base_helper.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/urls.dart';
import 'package:get/get.dart';

class PropsalViewModel extends GetxController {
  List<proposal> property_proposal = <proposal>[].obs;
  String property_id = "";
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    propertyproposal();
  }

  propertyproposal() async {
    GlobalVariables.showLoader.value = true;

    var res = await ApiBaseHelper().getMethod(
        url: Urls.clientProposalsDetails +
            "?owner_id=${GlobalVariables.user_id}" +
            "&property_id=${GlobalVariables.client_proposal_property}");

    if (res['success'] == true) {
      print("------------------proposal-------------");
      var data = res['proposals'] as List;
      print(data);
      if (data != null || data.length != 0) {
        property_proposal = [];

        property_proposal.addAll(data.map((e) => proposal.fromJson(e)));
      }
      print("--------------proposal-------------------");

      print("-------contact---${property_proposal}");
      GlobalVariables.showLoader.value = false;
    } else {
      GetxHelper.showSnackBar(title: 'Error'.tr, message: res['message']);
      print("-----------error----");
    }
    GlobalVariables.showLoader.value = false;
  }
  //---------------------------------

  accep_Clien_Proposal() async {
    GlobalVariables.showLoader.value = true;
    Map<String, dynamic> param = {
      "proposal_id": property_id,
    };

    var res = await ApiBaseHelper()
        .postMethod(url: Urls.acceptClientProposal, body: param);
    if (res['success'] == true) {
      print("------------------2----------------");
      GetxHelper.showSnackBar(title: '', message: 'Proposal accepted');
      GlobalVariables.showLoader.value = false;
      //Get.to(() => ClientPropertyDealsView());
    } else {
      GetxHelper.showSnackBar(title: 'Error', message: res['message']);
    }
    GlobalVariables.showLoader.value = false;
  }
}
