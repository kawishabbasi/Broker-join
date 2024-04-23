import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/screen/add_property/add_more_property_view.dart';
import 'package:broker_join/screen/add_property/add_property-viewmodel.dart';
import 'package:broker_join/screen/add_property/add_property2_viewmodel.dart';
import 'package:broker_join/screen/loader/loaderview.dart';
import 'package:broker_join/screen/show_property/show_property_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AddProperty2View extends StatelessWidget {
  AddProperty2View({super.key});
  //AddProperty2Viewmodel addProperty2Viewmodel =
  //  Get.put(AddProperty2Viewmodel());
  AddPropertyViewModel viewModel = Get.put(AddPropertyViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 9.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: const Color.fromARGB(255, 241, 234, 234),
                  ),
                  child: const Center(
                    child: Text(
                      "Add property",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(height: 1.h),
                textfield("Parking and store", viewModel.parking_and_store),
                SizedBox(height: 1.h),
                textfield(
                    "Maintenance deposit", viewModel.maintenance_deposite),
                SizedBox(height: 1.h),
                textfield("Club fees", viewModel.club_fees),
                SizedBox(height: 1.h),
                const Text(
                  "Project Details",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 1.h),
                textfield("Land size", viewModel.land_size),
                SizedBox(height: 1.h),
                textfield("Building size", viewModel.building_size),
                SizedBox(height: 1.h),
                textfield("Developer", viewModel.developer),
                SizedBox(height: 1.h),
                textfield("Owner", viewModel.owner),
                SizedBox(height: 1.h),
                textfield("About the developer", viewModel.about_the_developer),
                SizedBox(height: 1.h),
                textfield("Previous work", viewModel.previous_work),
                SizedBox(height: 1.h),
                textfield("Units type", viewModel.units_type),
                SizedBox(height: 1.h),
                textfield("Project feature", viewModel.project_feature),
                SizedBox(height: 1.h),
                textfield("Payment terms", viewModel.payment_terms),
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
          LoaderView()
        ],
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
      onTap: () {
        GlobalVariables.addproperty_check = 0;
        viewModel.addproperty();
      },
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
        GlobalVariables.addproperty_check = 1;
        viewModel.addproperty();
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
