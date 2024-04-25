import 'package:broker_join/clients/client_property_proposal/client_property_proposal_viewmodel.dart';
import 'package:broker_join/clients/proposal_against_property/peoposal_view.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ClientPropertyProposalView extends StatelessWidget {
  ClientPropertyProposalView({super.key});
  ClientPropertyProposalViewModel viewModel =
      Get.put(ClientPropertyProposalViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                " Clients Proposal Properties",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(height: 2.h),
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
                          itemCount: viewModel.c_proposal_property.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                print(viewModel.c_proposal_property[index].id);
                                Get.to(() => ProposalView());
                              },
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
                                                  viewModel
                                                      .c_proposal_property[
                                                          index]
                                                      .propertyType!,
                                                  style: const TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xff09090A)),
                                                ),
                                                Text(
                                                  viewModel
                                                      .c_proposal_property[
                                                          index]
                                                      .price
                                                      .toString(),
                                                  style: const TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xffACACAC)),
                                                ),
                                                Text(
                                                  viewModel
                                                      .c_proposal_property[
                                                          index]
                                                      .view
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
