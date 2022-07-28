import 'package:flutter/material.dart';
import 'package:show_dialog_custom_widget_design/design/custom_button.dart';
import 'package:show_dialog_custom_widget_design/widget/registration_dialog.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final nameController=TextEditingController();
  final emailController=TextEditingController();
  final addressController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: CustomButton(iconName: 'Click Me',onPress: (){
          showDialog(
              context: context,
              builder: (context){
                return RegistrationDialog(nameController: nameController, emailController: emailController, addressController: addressController);
              }
          );
        },)
        ),
    );
  }
}
