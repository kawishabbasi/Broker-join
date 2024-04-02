import 'package:broker_join/screen/add_property/add_more_property_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AddMorePropertyView extends StatelessWidget {
  AddMorePropertyView({super.key});
  AddMorePropertyViewModel addMorePropertyViewModel =
      Get.put(AddMorePropertyViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
        textfield("Property type", addMorePropertyViewModel.property_type),
        SizedBox(height: 1.h),
        textfield("Price", addMorePropertyViewModel.property_type),
        SizedBox(height: 1.h),
        textfield("Size", addMorePropertyViewModel.property_type),
        SizedBox(height: 1.h),
        textfield("Floor", addMorePropertyViewModel.property_type),
        SizedBox(height: 1.h),
        textfield("Bedrooms", addMorePropertyViewModel.property_type),
        SizedBox(height: 1.h),
        textfield("Bathrooms", addMorePropertyViewModel.property_type),
        SizedBox(height: 1.h),
        textfield("View", addMorePropertyViewModel.property_type),
        SizedBox(height: 2.h),
        PublishPropertybutton(),
        SizedBox(height: 2.h),
        AddMorePropertybutton()
      ]),
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
      onTap: () {},
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
