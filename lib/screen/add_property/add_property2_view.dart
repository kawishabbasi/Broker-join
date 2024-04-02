import 'package:broker_join/screen/add_property/add_more_property_view.dart';
import 'package:broker_join/screen/add_property/add_property2_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AddProperty2View extends StatelessWidget {
  AddProperty2View({super.key});
  AddProperty2Viewmodel addProperty2Viewmodel =
      Get.put(AddProperty2Viewmodel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 9.h,
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all()),
              child: const Center(
                child: Text(
                  "Add property",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(height: 1.h),
            textfield(
                "Parking and store", addProperty2Viewmodel.parking_and_store),
            SizedBox(height: 1.h),
            textfield(
                "Maintenance deposit", addProperty2Viewmodel.parking_and_store),
            SizedBox(height: 1.h),
            textfield("Club fees", addProperty2Viewmodel.parking_and_store),
            SizedBox(height: 1.h),
            const Text(
              "Project Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 1.h),
            textfield("Land size", addProperty2Viewmodel.parking_and_store),
            SizedBox(height: 1.h),
            textfield("Building size", addProperty2Viewmodel.parking_and_store),
            SizedBox(height: 1.h),
            textfield("Developer", addProperty2Viewmodel.parking_and_store),
            SizedBox(height: 1.h),
            textfield("Owner", addProperty2Viewmodel.parking_and_store),
            SizedBox(height: 1.h),
            textfield(
                "About the developer", addProperty2Viewmodel.parking_and_store),
            SizedBox(height: 1.h),
            textfield("Previous work", addProperty2Viewmodel.parking_and_store),
            SizedBox(height: 1.h),
            textfield("Units type", addProperty2Viewmodel.parking_and_store),
            SizedBox(height: 1.h),
            textfield(
                "Project feature", addProperty2Viewmodel.parking_and_store),
            SizedBox(height: 1.h),
            textfield("Payment terms", addProperty2Viewmodel.parking_and_store),
            SizedBox(height: 2.h),
            propertytitle(),
            SizedBox(height: 2.h),
            PublishPropertybutton(),
            SizedBox(height: 1.h),
            AddMorePropertybutton(),
            SizedBox(height: 1.h),
          ],
        ),
      ),
    );
  }

  //-----------------------------
  Widget propertytitle() {
    return const Column(
      children: [
        Text("Property title"),
        Text(
          "Property type, property size for porpose",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          "at project name, price",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  //------------------------
  Widget textfield(text, controller) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(text),
          SizedBox(width: 2.w),
          Center(
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
              controller: controller,
              decoration: const InputDecoration(
                border: InputBorder.none, // Hide the default border
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10.0), // Optional padding
                //hintText: 'Enter your text here',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ))
        ],
      ),
    );
  }

  //------------------------
  Widget PublishPropertybutton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 6.h,
        width: 80.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Publish the property",
                style: TextStyle(color: Colors.white))),
      ),
    );
  }

  //------------------------------
  Widget AddMorePropertybutton() {
    return GestureDetector(
      onTap: () {
        Get.to(() => AddMorePropertyView());
      },
      child: Container(
        height: 6.h,
        width: 80.w,
        decoration: BoxDecoration(
            border: Border.all(),
            // color: Colors.black,
            borderRadius: BorderRadius.circular(12)),
        child: const Center(
          child: Text(
            "Add more properties in the same project",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
