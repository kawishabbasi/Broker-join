import 'package:broker_join/screen/login/login_viewmodel.dart';
import 'package:broker_join/screen/sign_up/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sizer/sizer.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  LoginViewModel viewModel = Get.put(LoginViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 5.h, width: double.infinity),
          Image(image: AssetImage("images/logo.png")),
          SizedBox(height: 5.h),
          const Text(
            "Sign in to enable locked features",
            style: TextStyle(fontSize: 17),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Mobile",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 2.w),
                textfield(viewModel.mobile)
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            // padding: EdgeInsets.only(right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Password",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 2.w),
                textfield(viewModel.passsword)
              ],
            ),
          ),
          SizedBox(height: 10.h),
          loginbutton(),
          SizedBox(height: 2.h),
          forgettext(),
        ],
      ),
    );
  }

  //----------------------------
  Widget loginbutton() {
    return Container(
      height: 6.h,
      width: 40.w,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(12)),
      child: const Center(
          child: Text("Login", style: TextStyle(color: Colors.white))),
    );
  }

  //-----------------------------
  Widget forgettext() {
    return GestureDetector(
        onTap: () {
          Get.to(() => SignUpView());
        },
        child: Text("Forgot password"));
  }
  //-----------------------------

  Widget textfield(mobile) {
    return Center(
        child: Container(
      width: 50.w,
      height: 7.h,
      //width: 250,
      //height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black, // Border color
          width: 1, // Border width
        ),
        borderRadius: BorderRadius.circular(20.0), // Border radius
      ),
      child: TextFormField(
        controller: mobile,
        decoration: const InputDecoration(
          border: InputBorder.none, // Hide the default border
          contentPadding:
              EdgeInsets.symmetric(horizontal: 10.0), // Optional padding
          //hintText: 'Enter your text here',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    ));
  }
}
