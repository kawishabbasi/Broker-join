import 'package:broker_join/screen/reset_password/reset_password_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:sizer/sizer.dart';

class ResetPasswordView extends StatelessWidget {
  ResetPasswordView({super.key});
  ResetPasswordViewModel viewModel = Get.put(ResetPasswordViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 5.h, width: double.infinity),
          Image(image: AssetImage("images/logo.png")),
          SizedBox(height: 5.h),
          resettext(),
          SizedBox(height: 3.h),
          enternumbertext(),
          SizedBox(height: 2.h),
          textfield(viewModel.number),
          SizedBox(height: 5.h),
          resetpasswordbutton(),
          SizedBox(height: 2.h),
          contectsuporttext(),
        ],
      ),
    );
  }

  Widget resettext() {
    return const Text(
      "Reset account password",
      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
    );
  }

  //----------------------
  Widget enternumbertext() {
    return const Text(
      "Enter your mobile number to recieve OTP",
      style: TextStyle(fontSize: 15),
    );
  }

  //------------------------
  Widget textfield(mobile) {
    return Center(
      child: Container(
        width: 60.w,
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
            //hintText: 'Enter your mobile number here',
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }

  //--------------------
  Widget resetpasswordbutton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 6.h,
        width: 40.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child:
                Text("Reset password", style: TextStyle(color: Colors.white))),
      ),
    );
  }

  //-------------------
  Widget contectsuporttext() {
    return const Text(
      "Contect suport",
      style: TextStyle(fontSize: 15),
    );
  }
}
