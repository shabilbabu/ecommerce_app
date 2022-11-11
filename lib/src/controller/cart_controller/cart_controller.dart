
import 'package:flutter/material.dart';

class CartController with ChangeNotifier{
  List<String> imageList = [
    'assets/201.png',
    'assets/202.png',
    'assets/203.png',
    'assets/204.png',
    'assets/203.png',
    'assets/204.png',
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
    'XS','S','M','L','XL','XXL',
  ];
}