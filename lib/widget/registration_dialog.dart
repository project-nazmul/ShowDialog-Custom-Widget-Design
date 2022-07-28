import 'package:flutter/material.dart';
import 'package:show_dialog_custom_widget_design/design/custom_button.dart';
import 'package:show_dialog_custom_widget_design/design/custom_text.dart';
import 'package:show_dialog_custom_widget_design/design/custom_text_field.dart';
import 'package:show_dialog_custom_widget_design/widget/success_dialog.dart';

class RegistrationDialog extends StatelessWidget {
  const RegistrationDialog({Key? key,required this.nameController,required this.emailController,required this.addressController}) : super(key: key);

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController addressController;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: AlertDialog(
        actionsOverflowButtonSpacing: 27,
        scrollable: true,
        backgroundColor: Colors.blue[50],
        titlePadding: const EdgeInsets.only(top: 60,left: 60),
        title: CustomText(text: 'Registration Form', clr: Colors.black.withOpacity(0.5), fs: 15, fw: FontWeight.bold),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(labelName: 'Name',prefixIcon: Icons.account_box,controller: nameController,textInputAction: TextInputAction.next),
            CustomTextField(labelName: 'Email',prefixIcon: Icons.email,controller: emailController,textInputAction: TextInputAction.next),
            CustomTextField(labelName: 'Address',prefixIcon: Icons.location_on_outlined,controller: addressController,textInputAction: TextInputAction.done),

          ],
        ),
        actions: [

          CustomButton(iconName: 'Cancel',onPress: (){
            Navigator.of(context).pop();
          }),
          CustomButton(iconName: 'Submit',onPress: (){
            showDialog(context: context, builder: (context){
              return SuccessDialog(nameController: nameController, emailController: emailController, addressController: addressController);
            });
          }),
        ],
        actionsPadding: const EdgeInsets.only(bottom: 26,right: 20),


      ),
    );
  }
}
