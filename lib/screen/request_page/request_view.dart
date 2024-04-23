import 'package:broker_join/helper/constant.dart';
import 'package:broker_join/screen/request_page/request_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class RequestView extends StatelessWidget {
  RequestView({super.key});
  RequestViewModel viewModel = Get.put(RequestViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              child: Column(
                children: [
                  const SizedBox(width: double.infinity),
                  nametext(),
                  SizedBox(height: 1.h),
                  descriptiontedxt(),
                  SizedBox(height: 1.h),
                  infotext('Purpose :', 'Sale'),
                  SizedBox(height: 1.h),
                  infotext("price :", "12345"),
                  SizedBox(height: 1.h),
                  infotext("Payment method :", "Cash"),
                  SizedBox(height: 1.h),
                  infotext("Commission :", "2.5%"),
                  SizedBox(height: 1.h),
                  infotext("Timeline :", "30 days"),
                  SizedBox(height: 1.h),
                  infotext("Address :", "Nasir city Cairo"),
                  SizedBox(height: 1.h),
                  infotext("Bedrooms :", "5"),
                  SizedBox(height: 1.h),
                  infotext("Bath :", "2"),
                  SizedBox(height: 1.h),
                  infotext("Terace :", "3"),
                  SizedBox(height: 1.h),
                  infotext("Finish type :", "Semi Finish"),
                  SizedBox(height: 1.h),
                  infotext("Type :", "Villa"),
                  SizedBox(height: 1.h),
                  infotext2("Payment method :", "Cash"),
                  SizedBox(height: 1.h),
                  infotext2("Type :", "Cash"),
                  SizedBox(height: 3.h),
                  userinfo(),
                  SizedBox(height: 3.h),
                  proposalbutton(context),
                  SizedBox(height: 3.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //-------------------------
  Widget nametext() {
    return const Text(
      "Apartment 142 SQM For sale Mivida",
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // SizedBox(width: 1),
                            SizedBox(
                              width: 35.w,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder
                                      .none, // Remove the bottom line
                                ),
                              ),
                            ),
                            Container(
                              height: 7.h,
                              width: 15.w,
                              decoration: BoxDecoration(
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
                  )
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
  //--------------------
}
