import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi/likepage/likecontroller.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Like extends StatelessWidget {
  const Like({super.key});

  @override
  Widget build(BuildContext context) {
    final cntler = Provider.of<Likecontroller>(context, listen: false);
  
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(212, 0, 0, 0),
        title: const Text(
          "Favourites",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body:  Consumer<Likecontroller>(
          builder: (context, value, child) =>ListView.builder(
            itemCount: value.likedItems.length,
            itemBuilder: (context, index) {
              final items= value.likedItems[index];
              return ListTile(
                title: Text('Liked Item ${items}'),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    value.removeFromLikedItems(items);
                  },
                ),
              );
            },
          ),
        ),
        
      );
    
  }
}
