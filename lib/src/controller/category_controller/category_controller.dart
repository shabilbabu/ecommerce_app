import 'package:flutter/cupertino.dart';

class CategoryController with ChangeNotifier{

   List<String> categoryList = [
    "Men's \nfashion",
    "Women's \nfashion",
    "Mobile &\nAccessories",
    "Electronics",
    "Laptop &\nAccessories",
    "Home &\nKitchen",
    "Buety &\nHealth",
    "Heading",
    "Heading",
  
  ];

  List<String> categoryImageList = [
    'assets/Ellipse 89.png',
    'assets/Ellipse 89-1.png',
    'assets/Ellipse 89-2.png',
    'assets/Ellipse 89-3.png',
    'assets/Ellipse 89-4.png',
    'assets/Ellipse 89-5.png',
    'assets/Ellipse 89-6.png',
    'assets/Ellipse 89-7.png',
    'assets/Ellipse 89-8.png'
  ];

  List<String> imageList1 = [
    'assets/101.png',
    'assets/102.png',
    'assets/103.png',
    'assets/104.png',
    'assets/105.png',
    'assets/106.png',
    'assets/107.png',
    'assets/108.png',
    'assets/109.png',
    'assets/110.png',
    'assets/111.png',
    'assets/112.png',
    'assets/113.png',
    'assets/114.png',
    'assets/115.png',
    
  ];

  List<String> imageList2 = [
    'assets/114.png',
    'assets/115.png',
    'assets/108.png',
    'assets/109.png',
    'assets/112.png',
    'assets/113.png',
    'assets/103.png',
    'assets/104.png',
    'assets/101.png',
    'assets/102.png',
  ];

  List<String> titleList = [
    'New Arrival',
    'T-Shirts',
    'Sleeves',
    'Shirts',
    'Trousers',
    'Shorts',
    'Jeans',
    'Sleeveless',
    'Loungewear',
    'Sports shoes',
    'Casual shoes',
    'Formal shoes',
    'Watches',
    'Glasses',
    'OutDress'
  ];
  
  int selecteedIndex = 0;
  void changeSelectedIndex(int index){
    selecteedIndex = index;
    notifyListeners();
  }
}