import 'package:calcount/constant/constants.dart';
import 'package:flutter/material.dart';


class UserButton extends StatelessWidget
{
  Function? gestureTapCallback;
  String? textValue;
  UserButton({this.gestureTapCallback, this.textValue});

  @override
  Widget build(BuildContext context)
  {
    return LayoutBuilder(builder: (context,constraint)
      {
        return FlatButton(
          color: ColorConstants.themeColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          child: Text(textValue.toString(),
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: constraint.maxWidth*0.14)
          ),
          onPressed: (){
            gestureTapCallback!();
          },
        );
      },);
  }
}