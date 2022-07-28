import 'package:flutter/material.dart';
import 'package:show_dialog_custom_widget_design/design/custom_button.dart';
import 'package:show_dialog_custom_widget_design/design/custom_text.dart';

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({Key? key,required this.nameController,required this.emailController,required this.addressController}) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController addressController;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[100],
      titlePadding: const EdgeInsets.only(top: 60,left: 60),
      title: CustomText(text: 'Registration Success!', clr: Colors.black.withOpacity(0.5), fs: 15, fw: FontWeight.bold),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(text: nameController.text, clr: Colors.black.withOpacity(0.5), fs: 15, fw: FontWeight.bold),
          CustomText(text: emailController.text, clr: Colors.black.withOpacity(0.5), fs: 15, fw: FontWeight.bold),
          CustomText(text: addressController.text, clr: Colors.black.withOpacity(0.5), fs: 15, fw: FontWeight.bold),

        ],
      ),
      actions: [
        CustomButton(iconName: 'Close',onPress: (){
          Navigator.of(context).pop();
        },)
      ],
      actionsPadding: const EdgeInsets.only(bottom: 100,right: 30),
    );
  }
}
