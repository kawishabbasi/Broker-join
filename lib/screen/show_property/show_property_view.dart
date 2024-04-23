import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/screen/add_property/add_property_view.dart';
import 'package:broker_join/screen/show_property/show_property_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ShowPropertyView extends StatelessWidget {
  ShowPropertyView({super.key});
  final ShowPropertyViewModel viewModel = Get.put(ShowPropertyViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.grey,
        label: Text('Add Property',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        icon: Icon(Icons.add, color: Colors.black),
        onPressed: () {
          Get.to(() => AddPropertyView());
        },
      ),
      body: Column(
        children: [
          SizedBox(width: double.infinity),
          Container(
            height: 9.h,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(),
              color: const Color.fromARGB(255, 241, 234, 234),
            ),
            child: const Center(
              child: Text(
                "Properties",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            //color: Colors.amber,
          ),
          Container(
            height: 80.h,
            width: 320,
            //color: Colors.amber,
            child:
                // viewModel.mycontact.length == 0
                // ? Center(child: Text("No contact added yet!"))
                //:
                Obx(
              () =>
                  //viewModel.property.length == 0
                  GlobalVariables.showLoader.value == true
                      ? Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          itemCount: viewModel.property.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: 100,
                                  width: 20.w,
                                  decoration: BoxDecoration(
                                      //color: Colors.amber,
                                      // border: Border.all(
                                      //     color:
                                      //         Color.fromARGB(255, 27, 10, 10)),
                                      borderRadius: BorderRadius.circular(20)),
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
                                                Text(
                                                  viewModel.property[index]
                                                      .projectName!,
                                                  style: const TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xff09090A)),
                                                ),
                                                Text(
                                                  viewModel
                                                      .property[index].price
                                                      .toString(),
                                                  style: const TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xffACACAC)),
                                                ),
                                                Text(
                                                  viewModel.property[index].city
                                                      .toString(),
                                                  style: const TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xffACACAC)),
                                                )
                                              ],
                                            ),
                                            // Column(
                                            //   children: [
                                            //     Text("Cost"),
                                            //     Text(
                                            //       viewModel.property[index].city
                                            //           .toString(),
                                            //       style: const TextStyle(
                                            //           fontSize: 11,
                                            //           fontWeight:
                                            //               FontWeight.w400,
                                            //           color: Color(0xffACACAC)),
                                            //     )
                                            //   ],
                                            // )
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 2.h),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
            ),
          ),
        ],
      ),
    );
  }
}
