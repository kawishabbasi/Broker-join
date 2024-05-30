import 'package:broker_join/clients/Sell_rent_property/sell_rent_property_viewmodel.dart';
import 'package:broker_join/helper/getx_helper.dart';
import 'package:broker_join/helper/widgets/loader_view.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SellRentPropertyView extends StatelessWidget {
  SellRentPropertyView({super.key});
  SellRentPropertyViewModel viewModel = Get.put(SellRentPropertyViewModel());
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
                    "Sell / rent a property",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              purposedropdown(context),
              SizedBox(height: 2.h),
              citydropdown(context),
              SizedBox(height: 2.h),
              textfield("District", viewModel.district),
              SizedBox(height: 2.h),
              propertytypedropdown(context),
              SizedBox(height: 2.h),
              textfield("Size", viewModel.size),
              SizedBox(height: 2.h),
              textfield("Bedrooms", viewModel.bedrooms),
              SizedBox(height: 2.h),
              textfield("Bathrooms", viewModel.bathrooms),
              SizedBox(height: 2.h),
              textfield("View", viewModel.view),
              SizedBox(height: 2.h),
              textfield("Street width", viewModel.Street_width),
              SizedBox(height: 2.h),
              // textfield("View", viewModel.size),
              // SizedBox(height: 2.h),
              finishtypedropdown(context),
              SizedBox(height: 2.h),
              textfield("Floor", viewModel.floor),
              SizedBox(height: 2.h),
              textfield("Years build / deliverid", viewModel.Years_build),
              SizedBox(height: 2.h),
              // textfield("Payment method", viewModel.Payment_method),
              // SizedBox(height: 2.h),
              payment_method_chekbox(),
              SizedBox(height: 2.h),
              // textfield("Price", viewModel.price),
              // SizedBox(height: 2.h),
              price(),
              SizedBox(height: 2.h),
              textfield("Broker commision", viewModel.broker_commission),
              SizedBox(height: 2.h),
              textfield("Timeline", viewModel.timeline),
              SizedBox(height: 4.h),
              publishpropertybutton(),
              SizedBox(height: 4.h),
            ],
          ),
        ),
        LoaderView(),
      ],
    ));
  }

  //-----------------------------------
  Widget purposedropdown(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "Purpose",
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
                    items: viewModel.purposetype.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 119, 115, 115),
                          ),
                        ),
                      );
                    }).toList(),
                    value: viewModel.purposetype
                            .contains(viewModel.purpose_type.value)
                        ? viewModel.purpose_type.value
                        : null,

                    //value: viewModel.selectedValue2.value,
                    onChanged: (String? value) {
                      viewModel.purpose_type.value = value!;
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //-------------------------------
  Widget citydropdown(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "city",
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
                    items: viewModel.city.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 119, 115, 115),
                          ),
                        ),
                      );
                    }).toList(),
                    value:
                        viewModel.city.contains(viewModel.property_city.value)
                            ? viewModel.property_city.value
                            : null,

                    //value: viewModel.selectedValue2.value,
                    onChanged: (String? value) {
                      print("-----city----");
                      viewModel.property_city.value = value!;
                      print(viewModel.property_city.value);
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

//----------------------------------
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

  //-------------------------------
  Widget propertytypedropdown(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "Property type",
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
                    items: viewModel.propertytype.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 119, 115, 115),
                          ),
                        ),
                      );
                    }).toList(),
                    value: viewModel.propertytype
                            .contains(viewModel.property_type.value)
                        ? viewModel.property_type.value
                        : null,

                    //value: viewModel.selectedValue2.value,
                    onChanged: (String? value) {
                      viewModel.property_type.value = value!;
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //---------------------------------------
  Widget finishtypedropdown(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
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
                          style: const TextStyle(
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
        ],
      ),
    );
  }

  //----------------------------------
  Widget payment_method_chekbox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Payment method"),
        Obx(
          () => Checkbox(
            value: viewModel.payment_cash.value,
            onChanged: (value) {
              //print(value);
              viewModel.payment_cash.value = value!;
              print('---cash---${viewModel.payment_cash.value}');
            },
            fillColor: MaterialStatePropertyAll(Colors.white),
            activeColor: Colors.white,
            checkColor: Colors.black,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        const SizedBox(width: 5),
        const Text("Cash"),
        const SizedBox(width: 10),
        Obx(
          () => Checkbox(
            value: viewModel.payment_install.value,
            onChanged: (value) {
              viewModel.payment_install.value = value!;
              print('---install---${viewModel.payment_install.value}');
            },
            fillColor: MaterialStatePropertyAll(Colors.white),
            activeColor: Colors.white,
            checkColor: Colors.black,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
        SizedBox(width: 5),
        Text("Installment"),
      ],
    );
  }

  //----------------------------------
  Widget price() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Price"),
        SizedBox(width: 2.w),
        Center(
          child: Container(
            width: 34.w,
            height: 7.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black, // Border color
                width: 1, // Border width
              ),
              borderRadius: BorderRadius.circular(20.0), // Border radius
            ),
            child: TextFormField(
              controller: viewModel.cash,
              decoration: const InputDecoration(
                border: InputBorder.none, // Hide the default border
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10.0), // Optional padding
                hintText: 'Cash price',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ),
        SizedBox(width: 2.w),
        Center(
            child: Container(
          width: 34.w,
          height: 7.h,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black, // Border color
              width: 1, // Border width
            ),
            borderRadius: BorderRadius.circular(20.0), // Border radius
          ),
          child: TextFormField(
            controller: viewModel.install,
            decoration: const InputDecoration(
              border: InputBorder.none, // Hide the default border
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10.0), // Optional padding
              hintText: 'Inst. price',
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ))
      ],
    );
  }

  //------------------------------------
  Widget publishpropertybutton() {
    return GestureDetector(
      onTap: () {
        if ((viewModel.payment_cash.value == true &&
                viewModel.cash.text != '') ||
            (viewModel.payment_install.value == true &&
                viewModel.install.text != '')) {
          if (viewModel.payment_cash.value == true &&
              viewModel.cash.text != '') {
            print("------cash price----");
          }
          if (viewModel.payment_install.value == true &&
              viewModel.install.text != '') {
            print("-----instal price----");
          }
          print("----999----");
          viewModel.addclientproperty();
        } else {
          GetxHelper.showSnackBar(
              title: 'Error', message: 'Enter payment method or price');
        }

        // if (viewModel.payment_cash.value == true && viewModel.cash.text != '') {
        //   print("------cash price----");
        // }
        // if (viewModel.payment_install.value == true &&
        //     viewModel.install.text != '') {
        //   print("-----instal price----");
        // }
        // print("----999----");
        // // viewModel.addclientproperty();
        // GetxHelper.showSnackBar(
        //     title: 'Error', message: 'Enter payment method or price');
      },
      child: Container(
        height: 6.h,
        width: 80.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Publish property",
                style: TextStyle(color: Colors.white))),
      ),
    );
  }
}
//---------------------------------------------
