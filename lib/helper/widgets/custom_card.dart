import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomDashboardCard extends StatelessWidget {
  final String icon;
  final String? title;
  final String text;
  final VoidCallback onTap;

  const CustomDashboardCard({
    Key? key,
    required this.icon,
    this.title,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: Get.width * 0.42,
      decoration: BoxDecoration(
        color: const Color(0xff0C8A7B),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title!,
                  style: TextStyle(
                    fontSize: 14.5,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFFFFF),
                  ),
                ),
                const SizedBox(width: 10),
                // SvgPicture.asset(
                //   icon,
                //   height: 30,
                //   width: 30,
                //   color: const Color(0xffFFFFFF),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
