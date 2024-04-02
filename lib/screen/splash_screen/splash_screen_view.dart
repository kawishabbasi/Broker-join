import 'package:broker_join/screen/login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:sizer/sizer.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(width: double.infinity),
          Stack(
            children: [
              Image(
                image: const AssetImage('images/splash.jpg'),
                height: 100.h,
                width: 100.w,
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 100.w,
                  height: 50.h, // Adjust as needed
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.9)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("images/logo.png")),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70.h, left: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Join Now",
                        style: TextStyle(fontSize: 28, color: Colors.white)),
                    const Text("the  Premium",
                        style: TextStyle(fontSize: 28, color: Colors.white)),
                    const Text("Broker Community",
                        style: TextStyle(fontSize: 28, color: Colors.white)),
                    SizedBox(height: 3.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Get.to(() => LoginView());
                            },
                            child: Text("Login",
                                style: TextStyle(color: Colors.white))),
                        Text("Sign up", style: TextStyle(color: Colors.white))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
