
import 'package:dikazo/src/controller/authentication_controller/register_controller/register_controller.dart';
import 'package:dikazo/src/controller/bottom_controller/bottom_controller.dart';
import 'package:dikazo/src/controller/cart_controller/cart_controller.dart';
import 'package:dikazo/src/controller/category_controller/category_controller.dart';
import 'package:dikazo/src/controller/edit_profile_controller/edit_profile_controller.dart';
import 'package:dikazo/src/controller/fiter_page_controller/filter_page_controller.dart';
import 'package:dikazo/src/controller/home_controller/home_controller.dart';
import 'package:dikazo/src/controller/product_controller/product_controller.dart';
import 'package:dikazo/src/controller/select_product_controller/select_product_controller.dart';
import 'package:dikazo/src/controller/splash_controller/splash_controller.dart';
import 'package:dikazo/src/view/splash_view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';


void main(List<String> args) async {
WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}      

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override      
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => BottomController()),
            ChangeNotifierProvider(create: (context) => SplashController()),
            ChangeNotifierProvider(create: (context) => RegisterController()),
            ChangeNotifierProvider(create: (context) => CategoryController()),
            ChangeNotifierProvider(create: (context) => ProductController()),
            ChangeNotifierProvider(create: (context) => SelectProductController()),
            ChangeNotifierProvider(create: (context) => HomeController()),
            ChangeNotifierProvider(create: (context) => CartController()),
            ChangeNotifierProvider(create: (context) => FilterPageController()),
            ChangeNotifierProvider(create: (context) => EditProfileController()),
          ],
          child: const  MaterialApp(
              debugShowCheckedModeBanner: false,
              home:  SplashView(),
            ),
        );
      },
      designSize: const Size(390, 844)
    );
  }
}