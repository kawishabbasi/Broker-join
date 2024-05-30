import 'package:broker_join/clients/client_property_proposal/client_property_proposal_view.dart';
import 'package:broker_join/clients/clients_single_property/clients_single_property_viewmodel.dart';
import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/screen/loader/loaderview.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ClientsSinglePropertyView extends StatelessWidget {
  ClientsSinglePropertyView({super.key});
  ClientsSinglePropertyViewModel viewModel =
      Get.put(ClientsSinglePropertyViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
                child: ListView(
                  children: [
                    CarouselSlider(
                      items: viewModel.imgList
                          .map((item) => Container(
                                margin: EdgeInsets.all(6.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image: AssetImage(item),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ))
                          .toList(), // Convert map results to a list
                      options: CarouselOptions(
                        height: 180.0,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 16 / 9,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        viewportFraction: 0.8,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(2.h),
                  child: Obx(
                    () => viewModel.propertydata.value.success == null
                        ? CircularProgressIndicator()
                        : Column(
                            children: [
                              const SizedBox(width: double.infinity),
                              nametext(),
                              SizedBox(height: 1.h),
                              descriptiontedxt(),
                              SizedBox(height: 1.h),
                              infotext('Purpose :',
                                  '${viewModel.data['user_type'] ?? ""}'),
                              SizedBox(height: 1.h),
                              GestureDetector(
                                onTap: () {
                                  String priceString = viewModel.data['price'];
                                  double price = double.parse(priceString);
                                  double divisor =
                                      10; // You can directly use a number here

                                  double result = price / divisor;
                                  print(result);
                                  // double i = (viewModel.data['price'] / '10');
                                  //print(i);
                                  print("price====");
                                },
                                child: infotext("Price :",
                                    "${viewModel.data['price'] ?? ""}"),
                              ),
                              SizedBox(height: 1.h),
                              infotext("Payment method :",
                                  "${viewModel.data['payment_type'] ?? ""}"),
                              SizedBox(height: 1.h),
                              infotext("Commission :",
                                  "${viewModel.data['brokerCommission'] ?? ""}"),
                              SizedBox(height: 1.h),
                              infotext("Timeline :",
                                  "${viewModel.data['timeline'] ?? ""}"),
                              SizedBox(height: 1.h),
                              infotext("Address :",
                                  "${viewModel.data['address'] ?? ""}"),
                              SizedBox(height: 1.h),
                              infotext("Bedrooms :",
                                  "${viewModel.data['bedrooms'] ?? ""}"),
                              SizedBox(height: 1.h),
                              infotext("Bath :",
                                  "${viewModel.data['bathrooms'] ?? ""}"),
                              SizedBox(height: 1.h),
                              infotext("Terace :",
                                  "${viewModel.data['terrace'] ?? ""}"),
                              SizedBox(height: 1.h),
                              infotext("Finish type :",
                                  "${viewModel.data['finish_type'] ?? ""} "),
                              SizedBox(height: 1.h),
                              infotext("Type :",
                                  "${viewModel.data['property_type'] ?? ""}"),
                              SizedBox(height: 1.h),
                              SizedBox(height: 3.h),
                              userinfo(),
                              SizedBox(height: 3.h),
                              proposalbutton(context),
                              SizedBox(height: 3.h),
                            ],
                          ),
                  )),
            ],
          ),
        ),
        // LoaderView(),
      ],
    ));
  }

//-------------------------
  Widget nametext() {
    return GestureDetector(
      onTap: () {
        // Get.to(() => ClientPropertyProposalView());
      },
      child: const Text(
        "Apartment 142 SQM For sale Mivida",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  //-----------------------
  Widget descriptiontedxt() {
    return const Text(
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. essentially unchanged. It was popularised publishing.",
      style: TextStyle(fontWeight: FontWeight.w500),
    );
  }

  //-----------------------
  Widget infotext(text1, text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text(text1)],
        ),
        Row(
          children: [Text(text2)],
        ),
      ],
    );
  }

  //----------------
  Widget infotext2(text1, text2) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Align(alignment: Alignment.centerRight, child: Text(text1))
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: [Text(text2)],
          ),
        ),
      ],
    );
  }

  //---------------------------
  Widget userinfo() {
    return Row(
      children: [
        CircleAvatar(
          radius: 5.h,
          // backgroundColor: Colors.red,
          backgroundImage: AssetImage('images/user_img.png'),
        ),
        SizedBox(width: 3.w),
        const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tamer Sharah",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            Text("owner"),
            Text("Varfied payment"),
          ],
        )
      ],
    );
  }

  //---------------------------
  Widget proposalbutton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //-------------------------

        //String priceString = viewModel.data['price'];
        // String priceString = '5000';
        // double price = double.parse(priceString);
        // double divisor = 10; // You can directly use a number here
        // double result = price / divisor;
        // print(result);
        // String result2 = result.toString();
        // print(result2);
        // viewModel.proposal_net_profit.text = result2.toString();
        // print(viewModel.proposal_net_profit.toString());
        //-------------------------
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return SizedBox(
              height: 50.h,
              width: double.infinity,
              child: Column(
                children: [
                  const Text(
                    "place a proposal",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Timeline"),
                      SizedBox(width: 2.w),
                      Container(
                        height: 7.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            //color: Colors.amber,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 0.5),
                            SizedBox(
                              width: 45.w,
                              child: TextFormField(
                                controller: viewModel.proposal_timeline,
                                decoration: const InputDecoration(
                                  border: InputBorder
                                      .none, // Remove the bottom line
                                ),
                              ),
                            ),
                            Container(
                              height: 7.h,
                              width: 15.w,
                              decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: Center(
                                child: Text("days"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Proposal"),
                      SizedBox(width: 2.w),
                      Container(
                        height: 7.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            //color: Colors.amber,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 0.5),
                            SizedBox(
                              width: 45.w,
                              child: TextFormField(
                                controller: viewModel.proposal_proposal,
                                decoration: const InputDecoration(
                                  border: InputBorder
                                      .none, // Remove the bottom line
                                ),
                                onChanged: (Value) {
                                  //print(Value);
                                  //String priceString = viewModel.data['price'];
                                  String priceString = viewModel
                                      .proposal_proposal.text
                                      .toString();
                                  double price = double.parse(priceString);
                                  double divisor =
                                      10; // You can directly use a number here
                                  double result = price / divisor;
                                  print(result);
                                  viewModel.result2.value = result.toString();
                                  // viewModel.proposal_net_profit =
                                  //   viewModel.result2.value.toString();
                                  print(viewModel.result2.value);
                                  viewModel.proposal_net_profit.text =
                                      viewModel.result2.value.toString();
                                  if (viewModel.result2.value == "") {
                                    print("-------cleare------");
                                  }
                                  //String result2 = result.toString();
                                  //print(result2);
                                },
                              ),
                            ),
                            Container(
                              height: 7.h,
                              width: 15.w,
                              decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: const Center(
                                child: Text("%"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Your net profit"),
                      SizedBox(width: 2.w),
                      Container(
                        height: 7.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            //color: Colors.amber,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(width: 0.5),
                            // SizedBox(
                            //   width: 45.w,
                            //   child:
                            //       //Obx(
                            //       //() =>
                            //       Text(
                            //           '${viewModel.proposal_net_profit.value.toString()}'),
                            //   // ),
                            // ),
                            SizedBox(
                              width: 45.w,
                              child: Obx(
                                () => TextFormField(
                                  controller: viewModel.proposal_net_profit,
                                  decoration: InputDecoration(
                                    hintText: viewModel.result2.value,
                                    border: InputBorder
                                        .none, // Remove the bottom line
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 7.h,
                              width: 15.w,
                              decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              child: const Center(
                                child: Text("LE"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Details"),
                      SizedBox(width: 2.w),
                      Container(
                        height: 7.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            //color: Colors.amber,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(width: 0.5),
                            SizedBox(
                              width: 45.w,
                              child: TextFormField(
                                controller: viewModel.proposal_detail,
                                decoration: const InputDecoration(
                                  border: InputBorder
                                      .none, // Remove the bottom line
                                ),
                              ),
                            ),
                            SizedBox(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h),
                  GestureDetector(
                    onTap: () {
                      print("submit");
                      viewModel.sendproposal();
                    },
                    child: Container(
                      height: 6.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Center(
                          child: Text("Submit",
                              style: TextStyle(color: Colors.white))),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        height: 6.h,
        width: 40.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Place a proposal",
                style: TextStyle(color: Colors.white))),
      ),
    );
  }
}
