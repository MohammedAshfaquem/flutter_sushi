import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Likecontroller extends ChangeNotifier{

   List<int> likedItems = [];

  void toggleLike(int item) {
    if (likedItems.contains(item)) {
      likedItems.remove(item);
    } else {
      likedItems.add(item);
    }
    notifyListeners();
  }

  void removeFromLikedItems(int itemda) {
    likedItems.remove(itemda);
    notifyListeners();
  }
}

