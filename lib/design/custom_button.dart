import 'package:flutter/material.dart';
import 'package:show_dialog_custom_widget_design/design/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,required this.iconName,this.onPress}) : super(key: key);
  final String iconName;
  final dynamic onPress;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 10,
      height: 40,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.blue.withOpacity(0.5),
      onPressed: onPress,
      child: CustomText(text: iconName, clr: Colors.white, fs: 12, fw: FontWeight.bold),

    );
  }
}
