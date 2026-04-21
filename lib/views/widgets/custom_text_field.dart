import 'package:flutter/material.dart';
import 'package:notes_app/utils/app_constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    this.maxLines = 1,
    this.onSaved,
  });
  final String text;
  final int maxLines;
  final Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      style: TextStyle(color: AppConstant.primaryColor, fontSize: 20),
      cursorColor: AppConstant.primaryColor,
      decoration: InputDecoration(
        errorStyle: TextStyle(color: Colors.red, fontSize: 14),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppConstant.primaryColor),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(16),
        ),
        hintText: text,
        hintStyle: TextStyle(color: AppConstant.primaryColor, fontSize: 20),
      ),
    );
  }
}
