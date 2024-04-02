import 'package:broker_join/screen/add_property/add_property-viewmodel.dart';
import 'package:broker_join/screen/add_property/add_property2_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AddPropertyView extends StatelessWidget {
  AddPropertyView({super.key});
  AddPropertyViewModel viewModel = Get.put(AddPropertyViewModel());
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
              //color: Colors.amber,
            ),
            SizedBox(height: 1.h),
            textfield("City", viewModel.city),
            SizedBox(height: 1.h),
            textfield("District", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Project type", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Project name", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Size", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Floor", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Bedrooms", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Bathrooms", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Terrace", viewModel.city),
            SizedBox(height: 1.h),
            textfield("View", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Street with", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Finish Type", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Year built / deliverid", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Payment type", viewModel.city),
            SizedBox(height: 1.h),
            textfield("price", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Down payment", viewModel.city),
            SizedBox(height: 1.h),
            textfield("years installment", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Yearly installment", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Quartly instalment", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Delivery payment", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Cash price", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Description", viewModel.city),
            SizedBox(height: 1.h),
            textfield("Address", viewModel.city),
            SizedBox(height: 1.h),
            nextbutton(),
            SizedBox(height: 1.h),
          ],
        ),
      ),
    );
  }

  //-----------------------------

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

  //-----------------------------
  Widget nextbutton() {
    return GestureDetector(
      onTap: () {
        Get.to(() => AddProperty2View());
      },
      child: Container(
        height: 6.h,
        width: 80.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Next", style: TextStyle(color: Colors.white))),
      ),
    );
  }
}
