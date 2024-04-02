import 'package:broker_join/screen/phoneNo_verify/phoneNo_verify_view.dart';
import 'package:broker_join/screen/sign_up/sign_up_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sizer/sizer.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});
  SignUpViewModel viewModel = Get.put(SignUpViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 5.h),
          Image(image: AssetImage("images/logo.png")),
          SizedBox(height: 5.h),
          joinnowtext(),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Name",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 2.w),
                textfield(viewModel.name)
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Row(
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
            padding: EdgeInsets.only(right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Email",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 2.w),
                textfield(viewModel.email)
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Password",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 2.w),
                textfield(viewModel.password)
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Confirm password",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 2.w),
                textfield(viewModel.confirm_password)
              ],
            ),
          ),
          SizedBox(height: 5.h),
          nextbutton(),
          SizedBox(height: 2.h),
          signintext()
        ],
      ),
    );
  }

  //----------------------------
  Widget joinnowtext() {
    return const Text(
      "Join now the premium broker community",
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    );
  }
  //---------------------------

  Widget nextbutton() {
    return GestureDetector(
      onTap: () {
        Get.to(() => PhoneNoVerifyView());
      },
      child: Container(
        height: 6.h,
        width: 40.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Next", style: TextStyle(color: Colors.white))),
      ),
    );
  }

  //-----------------------
  Widget signintext() {
    return const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("Already on Broker Join?"),
      SizedBox(width: 5),
      Text(
        "Sign in",
        style: TextStyle(
            fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
      ),
    ]);
  }

  //-------------------------
  Widget textfield(mobile) {
    return Center(
      child: Container(
        width: 50.w,
        height: 7.h,
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
}
