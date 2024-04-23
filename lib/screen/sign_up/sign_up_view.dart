import 'package:broker_join/helper/widgets/loader_view.dart';
import 'package:broker_join/screen/login/login_view.dart';
import 'package:broker_join/screen/phoneNo_verify/phoneNo_verify_view.dart';
import 'package:broker_join/screen/sign_up/sign_up_viewmodel.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sizer/sizer.dart';
//import 'package:dropdown_button3/dropdown_button3.dart';

class SignUpView extends StatelessWidget {
  SignUpView({super.key});
  SignUpViewModel viewModel = Get.put(SignUpViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 5.h),
                  Image(image: AssetImage("images/logo.png")),
                  SizedBox(height: 5.h),
                  joinnowtext(),
                  SizedBox(height: 2.h),
                  textfield(viewModel.name, "Name", "Enter Name"),
                  SizedBox(height: 2.h),
                  textfield(viewModel.mobile, "Mobile", "Enter Mobile"),
                  SizedBox(height: 2.h),
                  textfield(viewModel.email, "Email", "Enter Email"),
                  SizedBox(height: 2.h),
                  textfield2(viewModel.password, "Password", "Enter Password"),
                  SizedBox(height: 2.h),
                  textfield3(viewModel.confirm_password, "Confirm Password",
                      "Enter Confirm Password"),
                  SizedBox(height: 2.h),
                  // Container(
                  //   width: 90.w,
                  //   height: 8.h,
                  //   decoration: BoxDecoration(
                  //     border: Border.all(),
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  //   child: Obx(
                  //     () => Center(
                  //       child: DropdownButtonHideUnderline(
                  //         child: DropdownButton2(
                  //           isExpanded: true,
                  //           hint: Text(
                  //             "Please select",
                  //             style: TextStyle(
                  //               fontSize: 14,
                  //               color: Theme.of(context).hintColor,
                  //             ),
                  //           ),
                  //           items: viewModel.items.map((String item) {
                  //             return DropdownMenuItem<String>(
                  //               value: item,
                  //               child: Text(
                  //                 item,
                  //                 style: TextStyle(
                  //                   color: Color.fromARGB(255, 119, 115, 115),
                  //                 ),
                  //               ),
                  //             );
                  //           }).toList(),
                  //           value: viewModel.items
                  //                   .contains(viewModel.selectedValue2.value)
                  //               ? viewModel.selectedValue2.value
                  //               : null,

                  //           //value: viewModel.selectedValue2.value,
                  //           onChanged: (String? value) {
                  //             viewModel.selectedValue2.value = value!;
                  //           },
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(right: 10.w),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: [
                  //       const Text(
                  //         "Name",
                  //         style: TextStyle(
                  //             fontSize: 15, fontWeight: FontWeight.w500),
                  //       ),
                  //       SizedBox(width: 2.w),
                  //       textfield(viewModel.name)
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 2.h),
                  // Padding(
                  //   padding: EdgeInsets.only(right: 10.w),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: [
                  //       const Text(
                  //         "Mobile",
                  //         style: TextStyle(
                  //             fontSize: 15, fontWeight: FontWeight.w500),
                  //       ),
                  //       SizedBox(width: 2.w),
                  //       textfield(viewModel.mobile)
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 2.h),
                  // Padding(
                  //   padding: EdgeInsets.only(right: 10.w),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: [
                  //       const Text(
                  //         "Email",
                  //         style: TextStyle(
                  //             fontSize: 15, fontWeight: FontWeight.w500),
                  //       ),
                  //       SizedBox(width: 2.w),
                  //       textfield(viewModel.email)
                  //     ],
                  //   ),
                  // ),
                  //SizedBox(height: 2.h),
                  // Padding(
                  //   padding: EdgeInsets.only(right: 10.w),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: [
                  //       const Text(
                  //         "Password",
                  //         style: TextStyle(
                  //             fontSize: 15, fontWeight: FontWeight.w500),
                  //       ),
                  //       SizedBox(width: 2.w),
                  //       textfield(viewModel.password)
                  //     ],
                  //   ),
                  // ),
                  //SizedBox(height: 2.h),
                  // Padding(
                  //   padding: EdgeInsets.only(right: 10.w),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: [
                  //       const Text(
                  //         "Confirm password",
                  //         style: TextStyle(
                  //             fontSize: 15, fontWeight: FontWeight.w500),
                  //       ),
                  //       SizedBox(width: 2.w),
                  //       textfield(viewModel.confirm_password)
                  //     ],
                  //   ),
                  // ),
                  // SizedBox(height: 2.h),
                  //------------------------------
                  Padding(
                    padding: EdgeInsets.only(right: 5.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "Professional type",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 2.w),
                        Container(
                          width: 55.w,
                          height: 7.h,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Obx(
                            () => Center(
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  isExpanded: true,
                                  hint: Text(
                                    "Please select",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Theme.of(context).hintColor,
                                    ),
                                  ),
                                  items: viewModel.items.map((String item) {
                                    return DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 119, 115, 115),
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  value: viewModel.items.contains(
                                          viewModel.selectedValue2.value)
                                      ? viewModel.selectedValue2.value
                                      : null,

                                  //value: viewModel.selectedValue2.value,
                                  onChanged: (String? value) {
                                    viewModel.selectedValue2.value = value!;
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //------------------------------
                  SizedBox(height: 5.h),
                  nextbutton(),
                  SizedBox(height: 2.h),
                  signintext(),
                  SizedBox(height: 5.h),
                ],
              ),
            ),
            LoaderView()
          ],
        ),
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
        viewModel.register();
        //Get.to(() => PhoneNoVerifyView());
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
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("Already on Broker Join?"),
      SizedBox(width: 5),
      GestureDetector(
        onTap: () {
          Get.to(() => LoginView());
        },
        child: Text(
          "Sign in",
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    ]);
  }

  //----------------------------------
  Widget textfield(mobile, lable, hint) {
    return Center(
      child: SizedBox(
        width: 90.w,
        child: TextFormField(
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

  //------------------------------------------
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

  //-------------------------------------
  Widget textfield3(mobile, lable, hint) {
    return Center(
      child: SizedBox(
          width: 90.w,
          child: Obx(
            () => TextFormField(
              keyboardType: TextInputType.text,
              obscureText: viewModel.obscurePassword2.value,
              controller: mobile,
              decoration: InputDecoration(
                labelText: lable,
                hintText: hint,
                suffixIcon: GestureDetector(
                  onTap: () {
                    viewModel.obscurePassword2.value =
                        !viewModel.obscurePassword2.value;
                  },
                  child: Icon(
                    (viewModel.obscurePassword2.value)
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
