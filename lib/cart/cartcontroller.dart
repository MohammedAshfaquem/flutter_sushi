import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'cartcontroller.g.dart';

class Cartcontroller extends ChangeNotifier {
  List<cartmodel> _cart = [];
  List<cartmodel> get cart => _cart;
  int _quantity = 0;
  int get quantity => _quantity;

  String totalamount() {
    double totalprice = 0;
    for (int i = 0; i < _cart.length; i++) {
      totalprice = totalprice + double.parse(cart[i].price);
    }
    return totalprice.toStringAsFixed(2);
  }

  Future<void> addtocart(cartmodel getcartmodel) async {
    final _mybox = await Hive.openBox<cartmodel>('mybox');
    _mybox.add(getcartmodel);
    _cart.add(getcartmodel);
    notifyListeners();
  }

  Future<void> deletecart(int removecart, BuildContext context) async {
    final _mybox = await Hive.openBox<cartmodel>('mybox');
    _mybox.deleteAt(removecart);
    _cart.removeAt(removecart);
    notifyListeners();
  }

  void increment() {
    _quantity++;
    print(quantity);
    notifyListeners();
  }

  void decrement() {
    if (_quantity > 0) {
      _quantity--;
    }
    notifyListeners();
  }

  Future<void> viewcart() async {
    final _mybox = await Hive.openBox<cartmodel>('mybox');
    _cart.clear();
    _cart.addAll(_mybox.values);
    notifyListeners();
  }
}

@HiveType(typeId: 1)
class cartmodel {
  @HiveField(1)
  final String image;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final String price;
  cartmodel({required this.image, required this.name, required this.price});
}
