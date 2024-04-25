import 'package:broker_join/clients/Sell_rent_property/sell_rent_property_view.dart';
import 'package:broker_join/clients/clients_request_property/clients_request_property_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ClientsMainPage extends StatelessWidget {
  const ClientsMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10.h, width: double.infinity),
          SearchForBrokerButton(),
          SizedBox(height: 2.h),
          requestpropertyButton(),
          SizedBox(height: 2.h),
          sellrentpropertyButton(),
          SizedBox(height: 2.h),
        ],
      ),
    );
  }

//-------------------------------
  Widget SearchForBrokerButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 9.h,
        width: 60.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Search for a broker",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }

  //-------------------------------
  Widget requestpropertyButton() {
    return GestureDetector(
      onTap: () {
        Get.to(() => ClientsRequestPropertyView());
      },
      child: Container(
        height: 9.h,
        width: 60.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Request a property",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }

  //----------------------
  Widget sellrentpropertyButton() {
    return GestureDetector(
      onTap: () {
        Get.to(() => SellRentPropertyView());
      },
      child: Container(
        height: 9.h,
        width: 60.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Sell / rent a property",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }
}
