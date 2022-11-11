import 'package:dikazo/src/view/account_view/account_view.dart';
import 'package:dikazo/src/view/cart_view/cart_view.dart';
import 'package:dikazo/src/view/category_view/category_view.dart';
import 'package:dikazo/src/view/home_view/home_view.dart';
import 'package:flutter/material.dart';

class BottomController with ChangeNotifier{

   int selectedIndex = 0;
  int currentIndex = 0;

  List<String> icons = [
    'assets/home-smile.png',
    'assets/category icon.png',
    'assets/account icon.png',
    'assets/Shopping_Cart_01.png',
  ];
  List pages = [
       const HomeView(),
       const CategoryView(),
       const AccountView(),
       const CartView()
    ];

  selectecdIndexUpdate(int index) {
    selectedIndex = index;
    currentIndex = index;
    notifyListeners();
  }
}
