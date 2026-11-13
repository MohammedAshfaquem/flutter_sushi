import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Startbuttton extends StatelessWidget {
  final String text;
  final IconData buttonicon;
  final Function() ontap;
  final double height;
  final double width;

  const Startbuttton({
    super.key,
    required this.text,
    required this.buttonicon,
    required this.ontap,
    required this.height, required this.width,
    
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 10.w, right: 10.w, top: 5.w),
      child: GestureDetector(
        onTap: ontap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 147, 75, 75),
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'my fonts',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Icon(
                buttonicon,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
