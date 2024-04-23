import 'package:flutter/material.dart';

class BottomSheetItemRow extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget? tickIcon;
  final GestureTapCallback? onTap;

  const BottomSheetItemRow({
    Key? key,
    required this.title,
    required this.icon,
    this.onTap,
    this.tickIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 5, top: 8, bottom: 8),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 1,
                  color: Color(0xffFFFFFF),
                ),
              ),
              child: Icon(
                icon,
                size: 20,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(width: 13),
            Text(
              title,
              style: TextStyle(

                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Expanded(child: SizedBox()),
            tickIcon??SizedBox(),
          ],
        ),
      ),
    );
  }
}


