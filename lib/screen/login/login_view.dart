import 'package:broker_join/helper/widgets/loader_view.dart';
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
        body: SafeArea(
            child: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 5.h, width: double.infinity),
              Image(image: AssetImage("images/logo.png")),
              SizedBox(height: 5.h),
              const Text(
                "Sign in to enable locked features",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 5.h),
              textfield(viewModel.mobile, "Mobile", "Enter Number"),
              SizedBox(height: 3.h),
              textfield2(viewModel.password, "Password", "Enter Password"),
              SizedBox(height: 5.h),
              loginbutton(),
              SizedBox(height: 2.h),
              forgettext(),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Does not have account? ",
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => SignUpView());
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        LoaderView()
      ],
    )));
  }

  //----------------------------
  Widget loginbutton() {
    return GestureDetector(
      onTap: () {
        viewModel.login();
      },
      child: Container(
        height: 6.h,
        width: 40.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Login", style: TextStyle(color: Colors.white))),
      ),
    );
  }

  //-----------------------------
  Widget forgettext() {
    return GestureDetector(
        onTap: () {
          // Get.to(() => SignUpView());
        },
        child: Text("Forgot password"));
  }
  //-----------------------------

  Widget textfield(mobile, lable, hint) {
    return Center(
      child: SizedBox(
        width: 90.w,
        child: TextFormField(
          keyboardType: TextInputType.number,
          controller: mobile,
          decoration: InputDecoration(
            labelText: lable,
            hintText: hint,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the value as needed
              borderSide: BorderSide(color: Colors.grey), // Border color
            ),
          ),
        ),
      ),
    );
  }

  //--------------------------------
  Widget textfield2(mobile, lable, hint) {
    return Center(
      child: SizedBox(
          width: 90.w,
          child: Obx(
            () => TextFormField(
              keyboardType: TextInputType.text,
              obscureText: viewModel.obscurePassword.value,
              controller: mobile,
              decoration: InputDecoration(
                labelText: lable,
                hintText: hint,
                suffixIcon: GestureDetector(
                  onTap: () {
                    viewModel.obscurePassword.value =
                        !viewModel.obscurePassword.value;
                  },
                  child: Icon(
                    (viewModel.obscurePassword.value)
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: Colors.black,
                  ),
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(20), // Adjust the value as needed
                  borderSide: BorderSide(color: Colors.grey), // Border color
                ),
              ),
            ),
          )),
    );
  }
}
