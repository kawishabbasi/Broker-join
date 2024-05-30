import 'package:broker_join/clients/clients_property_deals/client_property_deals_view.dart';
import 'package:broker_join/clients/clients_request_property/clients_request_property_view.dart';
import 'package:broker_join/screen/add_property/add_property_view.dart';
import 'package:broker_join/screen/show_property/show_property_view.dart';
import 'package:broker_join/screen/user_profile_properties/user_profile_properties_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MainView extends StatelessWidget {
  GlobalKey<ScaffoldState> scafoldkey = GlobalKey<ScaffoldState>();
  MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafoldkey,
      drawer: Drawer(
        width: 201,
        child: Column(
          children: [
            const SizedBox(height: 29),
            Container(
              height: 43,
              width: 169,
              decoration: BoxDecoration(
                  color: const Color(0xff0062AD),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  const SizedBox(width: 7),

                  const SizedBox(width: 5),

                  // ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      // Get.to(() => UpdateProfileView());
                    },
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                // print("write");
                // readbottomsheet(context);
                // viewModel.writeData();
                // ? Get.back()
                // : print("Error: Fail to write");
              },
              child: Container(
                height: 43,
                width: 169,
                decoration: BoxDecoration(
                    // color: Color.fromARGB(255, 241, 235, 235),
                    color: Color(0xffF1F1F1),
                    borderRadius: BorderRadius.circular(20)),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Image(
                        image: AssetImage('images/Icons2.png'),
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "NFC card",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            // color: Color(0xff2A2A2E),
                            color: Color(0xff2A2A2E)),
                      )
                    ]),
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
            ),
            InkWell(
              onTap: () {
                // Navigator.of(context).pop();
                // Get.to(() => UpdateProfileView());
              },
              child: draweritem(
                "My Profile",
                const Image(
                  image: AssetImage('images/Icons2.png'),
                  height: 20,
                  width: 20,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // Navigator.of(context).pop();
                // Get.to(() => UpdateSocialLinkView());
              },
              child: draweritem(
                  'Social Profile',
                  const Image(
                    image: AssetImage('images/Icons2.png'),
                    height: 20,
                    width: 20,
                  )),
            ),

            // SizedBox(height: 27.h),

            SizedBox(height: 3.h),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10.h, width: double.infinity),
          AddPropertyButton(),
          SizedBox(height: 2.h),
          //FindRequestButton(),
          // SizedBox(height: 2.h),
          CompleteProfileButton(),
          SizedBox(height: 2.h),
          ProfileButton(),
          SizedBox(height: 2.h),
          DealsButton()
        ],
      ),
    );
  }

  //---------------------
  Widget AddPropertyButton() {
    return GestureDetector(
      onTap: () {
        Get.to(() => AddPropertyView());
        //Get.to(() => ShowPropertyView());
      },
      child: Container(
        height: 9.h,
        width: 60.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Add project / property",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }

  //---------------------------
  Widget FindRequestButton() {
    return GestureDetector(
      onTap: () {
        Get.to(() => ShowPropertyView());
      },
      child: Container(
        height: 9.h,
        width: 60.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Find a request",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }

  //----------------------
  Widget CompleteProfileButton() {
    return GestureDetector(
      onTap: () {
        Get.to(() => UserProfileProperties());
      },
      child: Container(
        height: 9.h,
        width: 60.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Complete your profile",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }

  //------------
  Widget ProfileButton() {
    return GestureDetector(
      onTap: () {
        //Get.to(() => UserProfileProperties());
        Get.to(() => ClientsRequestPropertyView());
      },
      child: Container(
        height: 9.h,
        width: 60.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(12)),
        child: const Center(
            child: Text("Find a request",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold))),
      ),
    );
  }

  //-------------------------------------
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

  //--------------------------
  Widget draweritem(text, image) {
    return Container(
      height: 43,
      width: 169,
      decoration: BoxDecoration(
          // color: Color.fromARGB(255, 241, 235, 235),
          //color: Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(20)),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        const SizedBox(width: 20),
        image,
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 11,
              color: Color(0xff2A2A2E)),
        )
      ]),
    );
  }
}
