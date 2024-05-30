import 'package:broker_join/clients/client_property_proposal/client_proposal_property_model.dart';
import 'package:broker_join/helper/api_base_helper.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/urls.dart';
import 'package:get/get.dart';

class ClientPropertyProposalViewModel extends GetxController {
  List<client_proposal_property> c_proposal_property =
      <client_proposal_property>[].obs;
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    clientproperty();
  }

  clientproperty() async {
    GlobalVariables.showLoader.value = true;

    var res = await ApiBaseHelper().getMethod(
        url: Urls.clientProposals + "?user_id=${GlobalVariables.user_id}");

    if (res['success'] == true) {
      print("------proposal--====");
      var data = res['properties'] as List;
      print(data);
      if (data != null || data.length != 0) {
        c_proposal_property = [];

        c_proposal_property
            .addAll(data.map((e) => client_proposal_property.fromJson(e)));
      }

      print("-------contact---${c_proposal_property}");
    } else {
      GetxHelper.showSnackBar(title: 'Error'.tr, message: res['message']);
      print("-----------error----");
    }
    GlobalVariables.showLoader.value = false;
  }
}
