import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Text_field extends StatelessWidget {
  const Text_field({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding:  EdgeInsets.only(right: 13.w),
                child: FadeInUp(
                  duration: Duration(milliseconds: 1000),
                  delay: Duration(milliseconds: 200),
                  child: TextField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(172, 171, 15, 15))),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(172, 171, 15, 15))),
                        hintText: "Search here . . . ."),
                  ),
                ),
              );
  }
}