import 'package:broker_join/screen/add_property/add_property_view.dart';
import 'package:broker_join/screen/show_property/show_property_view.dart';
import 'package:broker_join/screen/user_profile_properties/user_profile_properties_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10.h, width: double.infinity),
          AddPropertyButton(),
          SizedBox(height: 2.h),
          FindRequestButton(),
          SizedBox(height: 2.h),
          CompleteProfileButton(),
          SizedBox(height: 2.h),
          // ProfileButton(),
          //--------------
          // GestureDetector(
          //   onTap: () {
          //     Get.to(() => UserProfileProperties());
          //   },
          //   child: Container(
          //       height: 30,
          //       width: 70,
          //       decoration: BoxDecoration(border: Border.all()),
          //       child: Center(child: Text("profile"))),
          // )
        ],
      ),
    );
  }

  //---------------------
  Widget AddPropertyButton() {
    return GestureDetector(
      onTap: () {
        Get.to(() => AddPropertyView());
      },
      child: Container(
        height: 9.h,
        width: 60.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Add project / property",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }

  //---------------------------
  Widget FindRequestButton() {
    return GestureDetector(
      onTap: () {
        Get.to(() => ShowPropertyView());
      },
      child: Container(
        height: 9.h,
        width: 60.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Find a request",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }

  //----------------------
  Widget CompleteProfileButton() {
    return GestureDetector(
      onTap: () {
        Get.to(() => UserProfileProperties());
      },
      child: Container(
        height: 9.h,
        width: 60.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Complete your profile",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }

  //------------
  Widget ProfileButton() {
    return GestureDetector(
      onTap: () {
        Get.to(() => UserProfileProperties());
      },
      child: Container(
        height: 9.h,
        width: 60.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("profile",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }
}
