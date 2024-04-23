import 'package:broker_join/helper/widgets/loader_view.dart';
import 'package:broker_join/screen/add_property/add_more_property_viewmodel.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
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
      body: Stack(
        children: [
          Column(
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
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              //------------------------------------
              Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    const Text(
                      "Property type",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 2.w),
                    Container(
                      width: 50.w,
                      height: 7.h,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
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
                              items: addMorePropertyViewModel.propertytype
                                  .map((String item) {
                                return DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 119, 115, 115),
                                    ),
                                  ),
                                );
                              }).toList(),
                              value: addMorePropertyViewModel.propertytype
                                      .contains(addMorePropertyViewModel
                                          .property_type.value)
                                  ? addMorePropertyViewModel.property_type.value
                                  : null,

                              //value: viewModel.selectedValue2.value,
                              onChanged: (String? value) {
                                addMorePropertyViewModel.property_type.value =
                                    value!;
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ])),
              //-------------------------------------

              //textfield("Property type", addMorePropertyViewModel.property_type),
              SizedBox(height: 1.h),
              textfield("Price", addMorePropertyViewModel.price),
              SizedBox(height: 1.h),
              textfield("Size", addMorePropertyViewModel.size),
              SizedBox(height: 1.h),
              textfield("Floor", addMorePropertyViewModel.floor),
              SizedBox(height: 1.h),
              textfield("Bedrooms", addMorePropertyViewModel.Bedrooms),
              SizedBox(height: 1.h),
              textfield("Bathrooms", addMorePropertyViewModel.Bathroom),
              SizedBox(height: 1.h),
              //-----------------------------------\
              Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    const Text(
                      "View",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: 2.w),
                    Container(
                      width: 50.w,
                      height: 7.h,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
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
                              items: addMorePropertyViewModel.viewtype
                                  .map((String item) {
                                return DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 119, 115, 115),
                                    ),
                                  ),
                                );
                              }).toList(),
                              value: addMorePropertyViewModel.viewtype.contains(
                                      addMorePropertyViewModel.view_type.value)
                                  ? addMorePropertyViewModel.view_type.value
                                  : null,

                              //value: viewModel.selectedValue2.value,
                              onChanged: (String? value) {
                                addMorePropertyViewModel.view_type.value =
                                    value!;
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ])),
              //------------------------------------
              //textfield("View", addMorePropertyViewModel.property_type),
              SizedBox(height: 2.h),
              PublishPropertybutton(),
              SizedBox(height: 2.h),
              AddMorePropertybutton()
            ],
          ),
          LoaderView()
        ],
      ),
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
        addMorePropertyViewModel.addproperty();
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
