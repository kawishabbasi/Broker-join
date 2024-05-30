import 'package:broker_join/clients/clients_request_property/clients_request_property_viewmodel.dart';
import 'package:broker_join/clients/clients_single_property/clients_single_property_view.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/widgets/loader_view.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';

class ClientsRequestPropertyView extends StatelessWidget {
  ClientsRequestPropertyView({super.key});
  ClientsRequest viewmodel = Get.put(ClientsRequest());
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
                  "Request Property",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            purposedropdown(context),
            SizedBox(height: 1.h),
            citydropdown(context),
            // SizedBox(height: 1.h),
            // monthlyrentdropdown(context),
            // SizedBox(height: 1.h),
            // purposedropdown(context),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [purposedropdown(context), purposedropdown(context)],
            // ),
            // SizedBox(height: 2.h),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [citydropdown(context), monthlyrentdropdown(context)],
            // ),
            SizedBox(height: 2.h),
            fintbutton(),
            SizedBox(height: 2.h),
            SizedBox(
                height: 60.h,
                child: Obx(
                  () => GlobalVariables.showLoader.value == true
                      ? Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          itemCount: viewmodel.clientsproperty.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                print(viewmodel.clientsproperty[index].id);
                                GlobalVariables.ClientsSingleProperty_id =
                                    viewmodel.clientsproperty[index].id
                                        .toString();
                                print(GlobalVariables.ClientsSingleProperty_id);
                                Get.to(() => ClientsSinglePropertyView());
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: SingleChildScrollView(
                                  child: Container(
                                    height: 100,
                                    width: 20.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              SizedBox(width: 3.h),
                                              Container(
                                                  height: 100,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                      // color: Colors.red,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all()),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0),
                                                      child: const Image(
                                                          image: AssetImage(
                                                              "images/brokerjoinpic.png")))),
                                              SizedBox(width: 3.h),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  // Text(
                                                  //   viewmodel
                                                  //       .clientsproperty[index]
                                                  //       .price!,
                                                  //   style: const TextStyle(
                                                  //       fontSize: 15,
                                                  //       fontWeight:
                                                  //           FontWeight.w500,
                                                  //       color:
                                                  //           Color(0xff09090A)),
                                                  // ),
                                                  Text(
                                                    viewmodel
                                                        .clientsproperty[index]
                                                        .price
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xffACACAC)),
                                                  ),
                                                  Text(
                                                    viewmodel
                                                        .clientsproperty[index]
                                                        .view
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color:
                                                            Color(0xffACACAC)),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 2.h),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                )),
          ],
        ),
        //LoaderView()
      ],
    ));
  }

  //-------------------------
  Widget survicedropdown(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "Survice",
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
                      "",
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: viewmodel.purposetype.map((String item) {
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
                    value: viewmodel.purposetype
                            .contains(viewmodel.purpose_type.value)
                        ? viewmodel.purpose_type.value
                        : null,

                    //value: viewModel.selectedValue2.value,
                    onChanged: (String? value) {
                      viewmodel.purpose_type.value = value!;
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
                      "",
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: viewmodel.city.map((String item) {
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
                        viewmodel.city.contains(viewmodel.property_city.value)
                            ? viewmodel.property_city.value
                            : null,

                    //value: viewModel.selectedValue2.value,
                    onChanged: (String? value) {
                      viewmodel.property_city.value = value!;
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

  //------------------------------------
  Widget citydropdown(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "City",
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
                      "",
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: viewmodel.city.map((String item) {
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
                        viewmodel.city.contains(viewmodel.property_city.value)
                            ? viewmodel.property_city.value
                            : null,

                    //value: viewModel.selectedValue2.value,
                    onChanged: (String? value) {
                      viewmodel.property_city.value = value!;
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

  //-----------------------------------
  Widget monthlyrentdropdown(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text(
            "Monthly Rent",
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
                      "",
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: viewmodel.city.map((String item) {
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
                        viewmodel.city.contains(viewmodel.property_city.value)
                            ? viewmodel.property_city.value
                            : null,

                    //value: viewModel.selectedValue2.value,
                    onChanged: (String? value) {
                      viewmodel.property_city.value = value!;
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

  Widget fintbutton() {
    return Container(
      height: 6.h,
      width: 40.w,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(20)),
      child: const Center(
        child: Text(
          "Find",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
