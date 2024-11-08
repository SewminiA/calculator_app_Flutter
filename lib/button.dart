import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class calButton extends StatelessWidget {
  //const Button({super.key});
  final Color buttoncolor;
  final String buttontext;
  final Color textcolor;
  final VoidCallback? buttonTap;

  calButton({required this.textcolor, required this.buttontext, required this.buttoncolor, this.buttonTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        height: 70,
        width: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
         boxShadow: [BoxShadow(color: Colors.black45 ,
              blurRadius: 3 ,
              offset: Offset(1.0 ,1.0))],
          color: buttoncolor,
        ),

        child: ElevatedButton(
            onPressed: buttonTap,
            style: ButtonStyle(backgroundColor: WidgetStatePropertyAll( buttoncolor)),
            child: Text(
              "$buttontext", style: TextStyle(color: textcolor, fontSize: 30, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
