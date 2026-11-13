import 'package:flutter/material.dart';

class pop extends StatelessWidget {
  const pop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 250,
          color: Colors.red[800],
          child: Center(
              child: TextButton(child: Text("English",style: TextStyle(
                fontSize: 19,
                color: Colors.white),),onPressed: () {
                
              },)),
        ),
        Container(
          height: 50,
          width: 250,
          color: Colors.red[600],
          child: Center(
              child: Text(
            "CHINEESE",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
          )),
        ),
        Container(
          height: 50,
          width: 250,
          color: Colors.red[400],
          child: Center(
              child: Text(
            "KOREAN",
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
          )),
        ),
      ],
    );
  }
}
