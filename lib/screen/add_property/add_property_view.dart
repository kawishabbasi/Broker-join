import 'package:broker_join/screen/add_property/add_property-viewmodel.dart';
import 'package:broker_join/screen/add_property/add_property2_view.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
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
            //color: Colors.amber,
          ),
          SizedBox(height: 1.h),
          textfield("City", viewModel.city),
          SizedBox(height: 1.h),
          textfield("District", viewModel.district),
          SizedBox(height: 1.h),
//--------------------------------
          Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                const Text(
                  "Project type",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
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
                          items: viewModel.projecttype.map((String item) {
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
                          value: viewModel.projecttype
                                  .contains(viewModel.project_type.value)
                              ? viewModel.project_type.value
                              : null,

                          //value: viewModel.selectedValue2.value,
                          onChanged: (String? value) {
                            viewModel.project_type.value = value!;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ])),

//------------------------------------
          // textfield("Project type", viewModel.project_type),
          SizedBox(height: 1.h),
          textfield("Project name", viewModel.project_name),
          SizedBox(height: 1.h),
          textfield("Size", viewModel.size),
          SizedBox(height: 1.h),
          textfield("Floor", viewModel.floor),
          SizedBox(height: 1.h),
          textfield("Bedrooms", viewModel.bedrooms),
          SizedBox(height: 1.h),
          textfield("Bathrooms", viewModel.bathrooms),
          SizedBox(height: 1.h),
          textfield("Terrace", viewModel.terrace),
          SizedBox(height: 1.h),
          //--------------------------------------
          Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                const Text(
                  "View",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
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
                          items: viewModel.viewtype.map((String item) {
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
                          value: viewModel.viewtype
                                  .contains(viewModel.view_type.value)
                              ? viewModel.view_type.value
                              : null,

                          //value: viewModel.selectedValue2.value,
                          onChanged: (String? value) {
                            viewModel.view_type.value = value!;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ])),
          //--------------------------------------
          //textfield("View", viewModel.view),
          SizedBox(height: 1.h),
          textfield("Street with", viewModel.street_with),
          SizedBox(height: 1.h),
          //--------------------------------------------------
          Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                const Text(
                  "Finish type",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
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
                          items: viewModel.Finishtype.map((String item) {
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
                          value: viewModel.Finishtype.contains(
                                  viewModel.finish_type.value)
                              ? viewModel.finish_type.value
                              : null,

                          //value: viewModel.selectedValue2.value,
                          onChanged: (String? value) {
                            viewModel.finish_type.value = value!;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ])),
          //---------------------------------------------------
          // textfield("Finish Type", viewModel.finish_type),
          SizedBox(height: 1.h),
          textfield("Year built / deliverid", viewModel.year_build),
          SizedBox(height: 1.h),
//--------------------------------------------
          Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                const Text(
                  "Payment type",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
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
                          items: viewModel.Paymenttype.map((String item) {
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
                          value: viewModel.Paymenttype.contains(
                                  viewModel.payment_type.value)
                              ? viewModel.payment_type.value
                              : null,

                          //value: viewModel.selectedValue2.value,
                          onChanged: (String? value) {
                            viewModel.payment_type.value = value!;
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ])),
//---------------------------------------------
          ///textfield("Payment type", viewModel.payment_type),
          SizedBox(height: 1.h),
          textfield("price", viewModel.price),
          SizedBox(height: 1.h),
          textfield("Down payment", viewModel.down_payment),
          SizedBox(height: 1.h),
          textfield("years installment", viewModel.years_installment),
          SizedBox(height: 1.h),
          textfield("Yearly installment", viewModel.yearly_installment),
          SizedBox(height: 1.h),
          textfield("Quartly instalment", viewModel.quartly_installment),
          SizedBox(height: 1.h),
          textfield("Delivery payment", viewModel.delivery_payment),
          SizedBox(height: 1.h),
          textfield("Cash price", viewModel.cash_price),
          SizedBox(height: 1.h),
          textfield("Description", viewModel.description),
          SizedBox(height: 1.h),
          textfield("Address", viewModel.address),
          SizedBox(height: 1.h),
          nextbutton(),
          SizedBox(height: 1.h),
        ],
      ),
    ));
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
