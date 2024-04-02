import 'package:broker_join/screen/mainpage/main_view.dart';
import 'package:broker_join/screen/phoneNo_verify/phoneNo_verify_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sizer/sizer.dart';

class PhoneNoVerifyView extends StatelessWidget {
  PhoneNoVerifyView({super.key});
  PhoneNoVerifyViewModel viewMode = Get.put(PhoneNoVerifyViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 5.h, width: double.infinity),
          Image(image: AssetImage("images/logo.png")),
          SizedBox(height: 5.h),
          verifytext(),
          SizedBox(height: 5.h),
          digittext(),
          const SizedBox(height: 1),
          phoneNotext(),
          SizedBox(height: 5.h),
          textfield(viewMode.otp),
          SizedBox(height: 7.h),
          verifybutton(),
          SizedBox(height: 5.h),
          changeNo(),
        ],
      ),
    );
  }

  //------------------------
  Widget verifytext() {
    return const Text("Verify mobile number");
  }

  //--------------------------
  Widget digittext() {
    return const Text("Please enter the 4 digits code");
  }

  //--------------------------------
  Widget phoneNotext() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("that you have recieved on "),
        Text(" 0123456789"),
      ],
    );
  }

  //------------------------------
  Widget textfield(mobile) {
    return Center(
      child: Container(
        width: 40.w,
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
      ),
    );
  }

  //--------------------------------
  Widget verifybutton() {
    return GestureDetector(
      onTap: () {
        Get.to(() => MainView());
      },
      child: Container(
        height: 6.h,
        width: 40.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Verify", style: TextStyle(color: Colors.white))),
      ),
    );
  }

  //------------------------------------
  Widget changeNo() {
    return const Text("Change mobile number");
  }
}
