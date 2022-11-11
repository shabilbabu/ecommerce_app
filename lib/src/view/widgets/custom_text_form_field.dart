import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//---------------------- This is custom textformfield -----------------------------//
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {Key? key,
      this.color,
      this.hintText,
      this.keyboardType,
      this.maxlines,
      this.validator,
      this.controller,
      this.obscuretext = false,
      this.formKey,
      this.onChanged,
      this.fillcolor,
      this.prefixicon,
      this.prefix,
      this.sufixicon})
      : super(
          key: key,
        );

  final Color? color;
  final String? hintText;
  final dynamic keyboardType;
  final int? maxlines;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final bool obscuretext;
  final Widget? sufixicon;
  final Key? formKey;
  final ValueChanged<String>? onChanged;
  final Widget? prefixicon;
  final Color? fillcolor;
  final Widget? prefix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: formKey,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide.none,
        ),
        
        hintText: hintText,
        hintStyle:  TextStyle(color: Colors.grey[400],fontSize: 15,),
        suffixIcon: sufixicon,
        prefixIcon: prefixicon,
        fillColor: fillcolor,
        filled: true,
        prefix: prefix
      ),
      keyboardType: keyboardType,
      obscureText: obscuretext,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}