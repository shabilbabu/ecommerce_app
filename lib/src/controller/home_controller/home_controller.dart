import 'package:flutter/cupertino.dart';

class HomeController with ChangeNotifier{
  int carouselIndex = 0;

  void carouselChange(int index){
    carouselIndex = index;
    notifyListeners();
  }
}