
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';
import 'package:provider/provider.dart';
import 'package:sushi/likepage/likecontroller.dart';

class Page2 extends StatelessWidget {
  const Page2(
      {super.key,
      });
  
  @override
  Widget build(BuildContext context) {
    final Likecontroller likeholder = Provider.of(context, listen: false);
    return Consumer<Likecontroller>(
        builder: (context, likedItemsModel, child) {
          return ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                
                title: Text('Item ${index + 1}'),
                trailing: IconButton(
                  icon: likedItemsModel.likedItems.contains(index)
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
                  onPressed: () {
                    likedItemsModel.toggleLike(index);
                  },
                ),
              );
            },
          );
        },
      );
     
    
      
  }
}
