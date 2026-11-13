import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// ignore: camel_case_types
class error extends StatelessWidget {
  const error({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: [
                Lottie.asset("lib/animations/page not found.json"),
                Text("page not found",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),)
              ],
            ),
          )),
    );
  }
}
