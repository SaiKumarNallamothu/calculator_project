import 'package:flutter/cupertino.dart';

class MyButton extends StatelessWidget {
  final color;
  final textcolor;
  final String buttonText;
  final buttonTapped;
  MyButton({this.color,this.textcolor,required this.buttonText,this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:buttonTapped ,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: color,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(color: textcolor,fontSize: 20),
            ),
          ),
        ),
      ),

    );
  }
}
