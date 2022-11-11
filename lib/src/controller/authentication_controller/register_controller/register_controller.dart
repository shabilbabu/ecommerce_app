import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RegisterController with ChangeNotifier {

  final dateController = TextEditingController();
  File? img;

  final String chooseVerification = '';

  void chooseImage(ImageSource source, BuildContext context) async {
    final imagePicker = ImagePicker();
    final file = await imagePicker.pickImage(source: source);
    if (file != null) {
      img = File(file.path);
    }
    notifyListeners();
  }

  bool isAgree = false;
  void agree() {
    isAgree = !isAgree;
    notifyListeners();
  }

  void chooseVerificationFunction(){

  }

}
