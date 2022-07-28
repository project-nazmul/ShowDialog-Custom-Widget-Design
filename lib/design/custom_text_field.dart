import 'package:flutter/material.dart';
import 'package:show_dialog_custom_widget_design/design/custom_text.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key,required this.labelName,required this.prefixIcon,required this.controller,required this.textInputAction}) : super(key: key);

  final String labelName;
  final IconData prefixIcon;
  final TextEditingController controller;
  final TextInputAction textInputAction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        textInputAction: textInputAction,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          label: CustomText(text: labelName, clr: Colors.black45, fs: 12, fw: FontWeight.normal),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),

        ),
      ),
    );
  }
}
