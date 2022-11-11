

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileController with ChangeNotifier{
    File? img;

void chooseImage(ImageSource source, BuildContext context) async {
    final imagePicker = ImagePicker();
    final file = await imagePicker.pickImage(source: source);
    if (file != null) {
      img = File(file.path);
    }
    notifyListeners();
  }
}