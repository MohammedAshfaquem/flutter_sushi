import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer(
      {super.key, required this.lead, required this.text, required this.niram, required this.nextpage});
  final IconButton lead;
  final String text;
  final Color niram;
  final Widget nextpage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 19, right: 39, top: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context) => nextpage));
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 255, 255, 255)),
              color: niram, borderRadius: BorderRadius.circular(10)),
          height: 53,
          child: Center(
            child: ListTile(
              leading: lead,
              iconColor: Colors.white,
              title: Text(
                text,
                style: TextStyle(color: Colors.white),
                
              ),
            ),
          ),
        ),
      ),
    );
  }
}
