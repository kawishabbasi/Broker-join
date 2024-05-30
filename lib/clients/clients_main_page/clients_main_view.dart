import 'package:broker_join/clients/Sell_rent_property/sell_rent_property_view.dart';
import 'package:broker_join/clients/client_property_proposal/client_property_proposal_view.dart';
import 'package:broker_join/clients/clients_property_deals/client_property_deals_view.dart';
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
      drawer: Drawer(
        // Add your drawer contents here
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Add your onTap action here
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Add your onTap action here
              },
            ),
            // Add more list items as needed
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10.h, width: double.infinity),
          SearchForBrokerButton(),
          // SizedBox(height: 2.h),
          // requestpropertyButton(),
          SizedBox(height: 2.h),
          sellrentpropertyButton(),
          SizedBox(height: 2.h),
          propertyproposalsButton(),
          SizedBox(height: 2.h),
          DealsButton(),
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

  //------------------------------------
  Widget propertyproposalsButton() {
    return GestureDetector(
      onTap: () {
        //Get.to(() => SellRentPropertyView());
        Get.to(() => ClientPropertyProposalView());
      },
      child: Container(
        height: 9.h,
        width: 60.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Property proposals",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }

  //-----------------------------
  Widget DealsButton() {
    return GestureDetector(
      onTap: () {
        // Get.to(() => ClientPropertyProposalView());
        Get.to(() => ClientPropertyDealsView());
      },
      child: Container(
        height: 9.h,
        width: 60.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("My deals",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }
}
