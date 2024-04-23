import 'package:broker_join/helper/global_variables.dart';
import 'package:broker_join/helper/widgets/loader_view.dart';
import 'package:broker_join/screen/update_user_profile/update_user_profile_view.dart';
import 'package:broker_join/screen/user_profile_properties/user_profile_properties_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:sizer/sizer.dart';

class UserProfileProperties extends StatelessWidget {
  UserProfileProperties({super.key});
  UserprofilePropertiesViewModel viewModel =
      Get.put(UserprofilePropertiesViewModel());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 10.h, width: double.infinity),
              CircleAvatar(
                //backgroundColor: Colors.blueAccent,
                radius: 10.h,
                backgroundImage: const AssetImage('images/user_img.png'),
              ),
              nametext(),
              SizedBox(height: 5.h),
              text(),
              SizedBox(height: 2.h),
              button(),
              SizedBox(height: 2.h),
              tab_bar(),
              //-------------
              Expanded(
                child: TabBarView(
                  children: [
                    // Views corresponding to each tab
                    // Replace with your actual views
                    // Container(child: Text("Posts View")),
                    // Container(child: Text("About View")),
                    About(),
                    experiences(),
                    // Container(child: Text("Experiences View")),
                    Container(child: Center(child: Text("testimonials View"))),
                  ],
                ),
              ),
            ],
          ),
          const LoaderView(),
        ],
      )),
    );
  }

  Widget nametext() {
    return const Text(
      "Ahmad Ali",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
    );
  }

  //-------------------------
  Widget text() {
    return const Column(
      children: [
        Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting",
          style: TextStyle(fontSize: 10),
        ),
        Text(
          "industry. Lorem Ipsum has been the industry's standard dummy text ever",
          style: TextStyle(fontSize: 10),
        ),
        Text(
          "since the 1500s, when an unknown printer took a galley of type and",
          style: TextStyle(fontSize: 10),
        ),
        Text(
          "scrambled it to make a type specimen book. essentially unchanged.",
          style: TextStyle(fontSize: 10),
        )
      ],
    );
  }
  //-------------------------

  //-------------
  Widget button() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 6.h,
          width: 35.w,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.add_box_outlined,
                color: Colors.white,
              ),
              Text(
                "New post",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        Container(
          height: 6.h,
          width: 35.w,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.mail_outline_sharp,
                color: Colors.white,
              ),
              Text(
                "Message",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }

  //---------------------
  Widget tab_bar() {
    return const TabBar(
      labelColor: Colors.black,
      tabs: [
        //Tab(text: "Posts"),
        Tab(text: "About"),
        Tab(text: "Experiences"),
        Tab(text: "testimonials"),
      ],
    );
  }

  //-------------------------------
  Widget About() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Haedline : "),
                  Text(
                      "${GlobalVariables.headline.value == "" ? "N/A" : GlobalVariables.headline.value}")
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Current Company : "),
                  Text(
                      "${GlobalVariables.current_company.toString() == "" ? "N/A" : GlobalVariables.current_company}")
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Mobile : "), Text("${GlobalVariables.user_no}")],
            ),
            SizedBox(height: 1.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Email : "),
                Text("${GlobalVariables.user_email}")
              ],
            ),
            SizedBox(height: 1.h),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("City : "),
                  Text(
                      "${GlobalVariables.city == "" ? "N/A" : GlobalVariables.city}")
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Date of birth : "),
                  Text(
                      "${GlobalVariables.dob == "" ? "N/A" : GlobalVariables.dob}")
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Profession type : "),
                  Text(
                      "${GlobalVariables.professional_type == "" ? "N/A" : GlobalVariables.professional_type}")
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Education : "),
                  Text(
                      "${GlobalVariables.education == "" ? "N/A" : GlobalVariables.education}")
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Linkeddin profile : "),
                  Text(
                      "${GlobalVariables.linkedin_link == "" ? "N/A" : GlobalVariables.linkedin_link}")
                ],
              ),
            ),
            SizedBox(height: 3.h),
            GestureDetector(
              onTap: () {
                Get.to(() => UpdateUserProfile());
              },
              child: Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Text(
                    "Edit profile",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
          ],
        ),
      ),
    );
  }

  //------------------------------
  Widget experiences() {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 7.h),
                  SizedBox(width: 1.w),
                  const Column(
                    children: [
                      Text("Sales Manager"),
                      Text("Mountain view"),
                      Text("jun 2016")
                    ],
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  CircleAvatar(radius: 7.h),
                  SizedBox(width: 1.w),
                  const Column(
                    children: [
                      Text("Sales Manager"),
                      Text("Mountain view"),
                      Text("jun 2016")
                    ],
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  CircleAvatar(radius: 7.h),
                  SizedBox(width: 1.w),
                  const Column(
                    children: [
                      Text("Sales Manager"),
                      Text("Mountain view"),
                      Text("jun 2016")
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
