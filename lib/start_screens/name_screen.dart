import 'package:flutter/material.dart';
import '../constant/constants.dart';
import '../data_save/initial_data.dart';

import '../ui_elements/input_field.dart';
import '../ui_elements/user_button.dart';

class NameScreen extends StatelessWidget
{
  InitialData _initialData = InitialData();
  TextEditingController _nameController = TextEditingController();

  Widget build(BuildContext context)
  {
    MediaQueryData _info = MediaQuery.of(context);


    return SafeArea(child:Scaffold(
      backgroundColor: ColorConstants.bgColor,
      resizeToAvoidBottomInset: false,

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: _info.size.width*0.04),
        child:Column(
        children: [
          SizedBox(height: _info.size.height*0.07,),

          // Name Field
          InputField(widthValue: _info.size.width, textValue: "Name", textEditingController: _nameController,),

          Spacer(),

          // Next Button
          Container(
              height: _info.size.height*(0.07-0.005),
            width: _info.size.width,
            padding: EdgeInsets.symmetric(horizontal: _info.size.width*(0.4-0.1)),
            child: UserButton(textValue: "NEXT",gestureTapCallback: (){},)
          ),

          SizedBox(height: _info.size.height*0.07,),
        ],
      ),),
    ));
  }
}