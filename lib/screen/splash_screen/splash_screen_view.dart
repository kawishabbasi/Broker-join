import 'package:broker_join/screen/login/login_view.dart';
import 'package:broker_join/screen/sign_up/sign_up_view.dart';
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
                    RichText(
                      text: const TextSpan(
                        text: 'Join', // Move "Join" to the top TextSpan
                        style: TextStyle(
                          color: Colors.white, // Text color
                          fontSize: 40,
                          //decoration: TextDecoration.underline,
                          decorationColor: Colors.white, // Underline color
                          decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 1, // Thickness of the underline
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Now', // Move "Now" to the child TextSpan
                            style: TextStyle(
                              color: Colors.white,
                              // No decoration needed here for "Now"
                            ),
                          ),
                        ],
                      ),
                    ),

                    // const Text("Join Now",
                    //     style: TextStyle(
                    //       fontSize: 50,
                    //       color: Colors.white,
                    //       decoration: TextDecoration.underline,
                    //     )),
                    const Text("the  Premium",
                        style: TextStyle(fontSize: 28, color: Colors.white)),
                    const Text("Broker Community",
                        style: TextStyle(fontSize: 28, color: Colors.white)),
                    SizedBox(height: 3.h),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => LoginView());
                            },
                            child: const Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          SizedBox(width: 20.w),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => SignUpView());
                            },
                            child: const Text(
                              "Sign up",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
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
