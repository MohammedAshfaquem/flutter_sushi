import 'package:flutter/material.dart';

class ingredients extends StatelessWidget {
  const ingredients({super.key, required this.name, required this.image});
final String name;
final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25,top: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(backgroundImage: AssetImage(image),),
          SizedBox(width: 20,),
          Text(name),
          
        ],
      ),
    );
  }
}