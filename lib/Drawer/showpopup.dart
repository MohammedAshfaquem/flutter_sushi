import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:sushi/Drawer/4popup.dart';

class Popup extends StatelessWidget {
  const Popup({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 19, right: 39, top: 8),
      child: GestureDetector(
        onTap: () {
         showPopover(context: context, bodyBuilder: (context) => pop(),height: 150,width: 250,direction: PopoverDirection.top,);
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
          height: 53,
          child: Center(
            child: ListTile(
              leading: Icon(Icons.language),
              iconColor: Colors.white,
              title: Text(
                "language",
                style: TextStyle(color: Colors.white),
                
              ),
            ),
          ),
        ),
      ),
    );
  }
}