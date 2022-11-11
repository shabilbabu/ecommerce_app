import 'package:flutter/cupertino.dart';

class FilterPageController with ChangeNotifier {
  List<String> titleList = [
    'Size',
    'Fit',
    'Brand',
    'Costomer',
    'Color',
    'Distress',
    'Fade',
    'Rise',
    'Theme',
    'Offers',
    'Delivery in\n1 Day',
    'Availability',
    'Discount',
    'Price',
    'Deliver At',
  ];

  List<String> sizelist = [
    '3XS',
    '2XS',
    'S',
    'M',
    'L',
    'XL',
  ];

  int selectedIndex = 0;

  void changeSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
