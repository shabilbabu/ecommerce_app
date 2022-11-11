import 'package:dikazo/src/view/authentication_view/login_view/login_view.dart';
import 'package:flutter/material.dart';
import '../../view/widgets/page_transitions/fade_animation.dart';

class SplashController with ChangeNotifier {
  navigate(BuildContext context) async {
    Future.delayed(const Duration(seconds: 3)).whenComplete(
      () => Navigator.pushReplacement(context, FadeRoute2(const LoginView()))
    );
  }
}
