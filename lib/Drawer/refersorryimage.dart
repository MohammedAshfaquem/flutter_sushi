import 'package:flutter/material.dart';

class sorry extends StatelessWidget {
  const sorry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: 800,color: Colors.red,
        child: Image.asset("lib/images/sorry.jpg",fit: BoxFit.fill,)),
    );
  }
}