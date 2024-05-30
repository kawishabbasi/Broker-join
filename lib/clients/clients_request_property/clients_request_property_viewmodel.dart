import 'package:broker_join/clients/clients_request_property/clienys_request_property_model.dart';
import 'package:broker_join/helper/api_base_helper.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/urls.dart';
import 'package:get/get.dart';

class ClientsRequest extends GetxController {
  @override
  void onInit() {
    //clientsshowproperty();
    // showproperty();
    super.onInit();

    print("---oninit");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    clientsshowproperty();
  }

  List<clientsrequestproperty> clientsproperty = <clientsrequestproperty>[].obs;
  final List<String> purposetype = [
    'Investiment',
    'Cash',
  ];
  RxString purpose_type = "".obs;
  //--------------------------
  final List<String> city = [
    'Cairo',
    'Rawalpindi',
  ];
  RxString property_city = "".obs;
  //-------------------------

  clientsshowproperty() async {
    print("1111111111111111111111111111111111111111111111");
    GlobalVariables.showLoader.value = true;
    var res = await ApiBaseHelper().getMethod(url: Urls.clientProperty);
    if (res['success'] == true) {
      print("222222222222222222222222222222222222222222222");
      var data = res['property'] as List;
      print(data);
      if (data != null || data.length != 0) {
        clientsproperty = [];
        print("3333333333333333333333333333333333");
        clientsproperty
            .addAll(data.map((e) => clientsrequestproperty.fromJson(e)));
      }
      print("777777777777777777777777777777777777777");
      print("-------contact---${clientsproperty}");
      GlobalVariables.showLoader.value = false;
    } else {
      GetxHelper.showSnackBar(title: 'Error'.tr, message: res['message']);
      print("-----------error----");
    }
    GlobalVariables.showLoader.value = false;
  }
}
