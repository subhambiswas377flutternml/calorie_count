import 'package:calcount/constant/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget
{
  double? widthValue;
  String? textValue;
  TextEditingController? textEditingController;

  InputField({this.textEditingController,this.widthValue, this.textValue});

  Widget build(BuildContext context)
  {
    return Container(
      width: widthValue,

      child: TextFormField(
        style: GoogleFonts.mavenPro(fontSize: widthValue!*0.055, color: Colors.white, fontWeight: FontWeight.w400),
        controller: textEditingController,

        decoration: InputDecoration(
          hintText: "Name",
          hintStyle: GoogleFonts.mavenPro(fontSize: widthValue!*0.055, color: Colors.white24, fontWeight: FontWeight.w400),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.deepPurpleAccent),
            borderRadius: BorderRadius.circular(10),
          ),

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: ColorConstants.themeColor),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}