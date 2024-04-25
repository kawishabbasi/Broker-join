import 'package:broker_join/clients/proposal_against_property/proposal_model.dart';
import 'package:broker_join/helper/api_base_helper.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/urls.dart';
import 'package:get/get.dart';

class PropsalViewModel extends GetxController {
  List<proposal> property_proposal = <proposal>[].obs;
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    propertyproposal();
  }

  propertyproposal() async {
    //GlobalVariables.showLoader.value = true;

    var res = await ApiBaseHelper().getMethod(
        url: Urls.clientProposalsDetails +
            "?owner_id=${GlobalVariables.user_id}" +
            "&property_id=39");

    if (res['success'] == true) {
      var data = res['proposals'] as List;
      print(data);
      if (data != null || data.length != 0) {
        property_proposal = [];

        property_proposal.addAll(data.map((e) => proposal.fromJson(e)));
      }
      print("--------------proposal-------------------");
      print("-------contact---${property_proposal}");
    } else {
      GetxHelper.showSnackBar(title: 'Error'.tr, message: res['message']);
      print("-----------error----");
    }
    //GlobalVariables.showLoader.value = false;
  }
}
