import 'package:broker_join/broker/broker_deal_chat/broker_deals_chat_view.dart';
import 'package:broker_join/clients/clients_property_deals/clients_property_deals_viewmodel.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ClientPropertyDealsView extends StatelessWidget {
  ClientPropertyDealsView({super.key});
  ClientsPropertyDealsViewModel viewModel =
      Get.put(ClientsPropertyDealsViewModel());
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
                "Deals",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
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
                          itemCount: viewModel.propertydeals.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                // print(viewModel.propertydeals[index].id);
                                // Get.to(() => ProposalView());

                                print("---ok---deals---");
                                //print(viewModel.propertydeals[index].proposals!
                                //  .propertyId);
                                String id = viewModel
                                    .propertydeals[index].proposals!.propertyId
                                    .toString();
                                String proposal_id = viewModel
                                    .propertydeals[index].proposals!.id
                                    .toString();
                                String brokerid = viewModel
                                    .propertydeals[index].proposals!.brokerId
                                    .toString();
                                String propertyowner_id = viewModel
                                    .propertydeals[index]
                                    .proposals!
                                    .propertyOwnerId
                                    .toString();
                                print(id);
                                print(proposal_id);
                                print(brokerid);
                                Get.to(() => BrokerDealChatView(id, proposal_id,
                                    brokerid, propertyowner_id));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: 100,
                                  width: 20.w,
                                  decoration: BoxDecoration(
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
                                                      .propertydeals[index]
                                                      .proposals!
                                                      .property!
                                                      .propertyType
                                                      .toString(),
                                                  style: const TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black),
                                                ),
                                                Text(
                                                  viewModel.propertydeals[index]
                                                      .remainingDays
                                                      .toString(),
                                                  style: const TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xff09090A)),
                                                ),
                                                Text(
                                                  viewModel.propertydeals[index]
                                                      .proposals!.commission
                                                      .toString(),
                                                  style: const TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color(0xffACACAC)),
                                                ),
                                                Container(
                                                  height: 4.h,
                                                  width: 40.w,
                                                  decoration: BoxDecoration(
                                                    color: viewModel
                                                                .propertydeals[
                                                                    index]
                                                                .remainingDaysPercentage! >
                                                            60
                                                        ? Colors.green
                                                        : viewModel
                                                                    .propertydeals[
                                                                        index]
                                                                    .remainingDaysPercentage! >
                                                                30
                                                            ? Colors.yellow
                                                            : Colors.red,
                                                  ),
                                                ),
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
