import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;


  const CalculatorButton({
    this.text,
    this.fillColor,
    this.textColor,
    this.textSize,
    this.callback


  });

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.all(5.0),
      child: SizedBox(
        width: 70,
        height: 60,
        // ignore: deprecated_member_use
        child: FlatButton(
          color: Color(fillColor),
          textColor: Color(textColor),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0)
          ),
          child: Text(
              text,
              style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                      fontSize: textSize,
                  )
              )
          ),

          onPressed: (){
            callback(text);

          },

        ),
      ),
    );
  }
}
