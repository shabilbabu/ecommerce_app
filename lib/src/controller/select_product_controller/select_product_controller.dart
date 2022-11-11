import 'package:flutter/material.dart';

class SelectProductController with ChangeNotifier {
  List<String> imageList = [
    'assets/401.png',
    'assets/402.png',
    'assets/403.png',
  ];

  List<Color> colorList = [
    Colors.black,
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.pink,
    Colors.green,
  ];

  List<String> sizeList = [
    'S',
    'M',
    'L',
    'XL',
  ];

  bool isFav = false;
  void changeSelectedIndex() {
    isFav = !isFav;
    notifyListeners();
  }

  int colordIndex = 0;
  void changeColordIndex(int index) {
    colordIndex = index;
    notifyListeners();
  }

  int sizedIndex = 0;
  void changeSizedIndex(int index){
    sizedIndex = index;
    notifyListeners();
  }

int initialValue = 1;
  void incrementCount(){
    initialValue = initialValue + 1;
    notifyListeners();
  }

  void decrementCount(){
    initialValue = initialValue - 1;
    notifyListeners();
  }
}
