import 'package:broker_join/helper/widgets/loader_view.dart';
import 'package:broker_join/screen/update_user_profile/update_user_profile_viewmodel.dart';
import 'package:broker_join/screen/user_profile_properties/user_profile_properties_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class UpdateUserProfile extends StatelessWidget {
  UpdateUserProfile({super.key});
  // final UpdateUserProfileViewModel viewModel =
  //     Get.put(UpdateUserProfileViewModel());
  UserprofilePropertiesViewModel viewModel =
      Get.put(UserprofilePropertiesViewModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
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
                    "Update Profile",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              textfield(viewModel.headline, 'Headline', 'Enter Headline'),
              SizedBox(height: 2.h),
              textfield(viewModel.current_company, 'Current company',
                  'Enter current company'),
              SizedBox(height: 2.h),
              // textfield(viewModel.mobile, 'mobile', 'Enter mobile number'),
              // SizedBox(height: 2.h),
              // textfield(viewModel.email, 'email', 'Enter email'),
              // SizedBox(height: 2.h),
              textfield(viewModel.city, 'City', 'Enter city'),
              SizedBox(height: 2.h),
              textfield(viewModel.date_of_birth, 'Date of birth',
                  'Enter date of birth'),
              SizedBox(height: 2.h),
              textfield(viewModel.profession_type, 'Profession type',
                  'Enter profession type'),
              SizedBox(height: 2.h),
              textfield(viewModel.education, 'Education', 'Enter education'),
              SizedBox(height: 2.h),
              textfield(viewModel.linkedin_profile, 'Linkedin',
                  'Enter linkedin profile'),
              SizedBox(height: 2.h),
              GestureDetector(
                onTap: () {
                  viewModel.updateprofile();
                },
                child: Container(
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                    child: Text(
                      "Update Profile",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
            ],
          ),
        ),
        LoaderView()
      ],
    ));
  }
  //--------------------------

  Widget textfield(mobile, lable, hint) {
    return Center(
      child: SizedBox(
        width: 90.w,
        child: TextFormField(
          //keyboardType: TextInputType.number,
          controller: mobile,
          decoration: InputDecoration(
            labelText: lable,
            hintText: hint,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(20), // Adjust the value as needed
              borderSide: BorderSide(color: Colors.grey), // Border color
            ),
          ),
        ),
      ),
    );
  }
}
