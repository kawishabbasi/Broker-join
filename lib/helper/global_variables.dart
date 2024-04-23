//import 'package:get/get.dart';
//import 'package:taqat/screens/dashboard/user_model.dart';

import 'package:get/get_rx/src/rx_types/rx_types.dart';

class GlobalVariables {
  static RxBool showLoader = false.obs;
  static String number = "";
  static RxBool LoaderAccountSetting = false.obs;
  static String token = '';
  static int property_id = 0;
  static int user_id = 0;
  static int addproperty_check = 0;
  static String user_email = '';
  static String user_no = '';
  //--------------------------
  static RxString headline = ''.obs;
  static RxString current_company = ''.obs;
  static RxString phone_no = ''.obs;
  static RxString email = ''.obs;
  static RxString city = ''.obs;
  static RxString dob = ''.obs;
  static RxString professional_type = ''.obs;
  static RxString education = ''.obs;
  static RxString linkedin_link = ''.obs;

  //---------------------------
  // static int otp = 0;
  // static String email = '';
  // static RxInt changepasswordcount = 0.obs;
  // static String otpEmail = '';
  // static int otp_verify = 0;
  // static String nfcdata = '';
  // static RxInt nfcid = 0.obs;
  // static String user_policy = '';
  // static String policydata = '';
  // static String termdata = '';

  //---------------dash board data------
  static RxString f_name = "".obs;
  static RxString l_name = "".obs;
  static RxString gender = ''.obs;
  static RxString useremail = "".obs;
  static RxString weburl = "".obs;
  static RxString designation = "".obs;
  static RxString location = "".obs;
  // static RxInt phone_no = 0.obs;
  static RxString countrylocale = "".obs;
  static RxString about = "".obs;
  static RxString profileimage = "".obs;
  static RxString coverimage = "".obs;
  static RxBool onboardingscreen = true.obs;
  static RxString Profilestatus = ''.obs;

  //static Rx<UserModel> userModel = UserModel().obs;
  //static RxInt profileCompletion = 0.obs;
  //static RxInt badgCeount = 0.obs;
  static bool isLanguageChanged = false;
}
