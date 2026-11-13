import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class coupon extends StatelessWidget {
  const coupon(
      {super.key,
      required this.logo,
      required this.logoname,
      required this.logosub,
      required this.date,
      required this.logoheight,
      required this.evdkka});
  final String logo;
  final String logoname;
  final String logosub;
  final String date;
  final double logoheight;
  final Widget evdkka;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 19.w, right: 19.w, bottom: 20.h),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => evdkka));
            },
            child: Container(
              height: 95.h,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Padding(
                    padding:EdgeInsets.only(left: 40.w),
                    child: Image.asset(logo, height: logoheight),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  VerticalDivider(
                    thickness: 1.5,
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          logoname,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          logosub,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 9.h,
                        ),
                        Text(
                          date,
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top: 25.h,
              left: -21.w,
              child: CircleAvatar(
                  backgroundColor: Color.fromARGB(250, 0, 0, 0))),
          Positioned(
              top: 25.h,
              right: -21.w,
              child: CircleAvatar(
                  backgroundColor: Color.fromARGB(251, 0, 0, 0))),
        ],
      ),
    );
  }
}
