import 'package:calculator_as/button.dart';
import 'package:calculator_as/colors.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

   String userInput = "";
   String answer = " ";
   bool isEqualPress = false;

  void buttonClick(String btntext){
    setState(() {
      isEqualPress = false;
      if(btntext == "="){
        equaloperation();
      }
      else if(btntext == "C"){
        userInput = " ";
        answer = " ";
      }
      else if(btntext =="D"){
        if(userInput.isNotEmpty){
          userInput = userInput.substring(0, userInput.length - 1);
        }
        else if(userInput.isEmpty){
          answer = " ";
        }
        else{
          userInput += btntext;
        }

      }
      else if("+-/.×%".contains(btntext)){
        if(userInput.isNotEmpty && "+-/.×%".contains(userInput[userInput.length-1]))
        {
          userInput = userInput.substring(0, userInput.length - 1)+btntext;
        }
        else{
          userInput += btntext;
        }
      }
      else{
        userInput += btntext;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu, size: 40,),
              Text(
                "Calculator",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: appTitle),
              ),
              Icon(Icons.settings, size: 40,)
            ],
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //input box
                    margin: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      child:
                      Text(
                        "$userInput",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                      )
                  ),
                  Container(
                    //answer box
                      margin: EdgeInsets.only(right: 10),
                      alignment: Alignment.centerRight,
                      child:
                      Text(
                        "$answer",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: isEqualPress ? 50 : 30,
                          color: isEqualPress ? apptextgreay:appBlack
                        ),


                      )
                  ),
                ],
              ),
            ),
            //cal button
            Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        calButton(textcolor: appBlack, buttontext: "C", buttoncolor: appButtonDark,buttonTap: (){
                          setState(() {
                            buttonClick("C");
                            equaloperation();

                          });
                        }, ),
                        calButton(textcolor: appBlack, buttontext: "D", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick("D");
                            equaloperation();

                          });
                        }, ),
                        calButton(textcolor: appBlack, buttontext: "%", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick("%");
                            equaloperation();

                          });
                        }, ),
                        calButton(textcolor: appBlack, buttontext: "/", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick("/");
                            equaloperation();

                          });
                        }, ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        calButton(textcolor: appBlack, buttontext: "7", buttoncolor: appButton,
                          buttonTap: (){
                          setState(() {
                            buttonClick("7");
                            equaloperation();

                          });
                        }, ),
                        calButton(textcolor: appBlack, buttontext: "8", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick("8");
                            equaloperation();

                          });
                        }, ),
                        calButton(textcolor: appBlack, buttontext: "9", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick("9");
                            equaloperation();

                          });
                        }, ),
                        calButton(textcolor: appBlack, buttontext: "×", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick("×");
                            equaloperation();

                          });
                        }, ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        calButton(textcolor: appBlack, buttontext: "4", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick("4");
                            equaloperation();

                          });
                        }, ),
                        calButton(textcolor: appBlack, buttontext: "5", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick("5");
                            equaloperation();

                          });
                        }, ),
                        calButton(textcolor: appBlack, buttontext: "6", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick("6");
                            equaloperation();

                          });
                        }, ),
                        calButton(textcolor: appBlack, buttontext: "-", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick("-");
                            equaloperation();

                          });
                        }, ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        calButton(textcolor: appBlack, buttontext: "1", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick("1");
                            equaloperation();

                          });
                        }, ),
                        calButton(textcolor: appBlack, buttontext: "2", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick("2");
                            equaloperation();

                          });
                        }, ),
                        calButton(textcolor: appBlack, buttontext: "3", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick("3");
                            equaloperation();

                          });
                        }, ),
                        calButton(textcolor: appBlack, buttontext: "+", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick("+");
                            equaloperation();

                          });
                        }, ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        calButton(textcolor: appBlack, buttontext: "0", buttoncolor: appButtonLight,buttonTap: (){
                          setState(() {
                            buttonClick("0");
                            equaloperation();

                          });
                        }, ),
                        calButton(textcolor: appBlack, buttontext: "00", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick("00");
                            equaloperation();

                          });
                        }, ),
                        calButton(textcolor: appBlack, buttontext: ".", buttoncolor: appButton,buttonTap: (){
                          setState(() {
                            buttonClick(".");
                            equaloperation();

                          });
                        }, ),
                        calButton(textcolor: appBlack, buttontext: "=", buttoncolor: appButtonDark,buttonTap: (){
                          setState(() {
                            buttonClick("=");
                            equaloperation();
                            isEqualPress = true;

                          });
                        }, ),
                      ],
                    ),
                    SizedBox(height: 10,)
                  ],
                ))
          ],


        ),
      ),
    );
  }
  //logic part
void equaloperation(){
    String finaluserInput = userInput;
    finaluserInput = userInput.replaceAll("×", "*").replaceAll("%", "/100");

    Parser p = Parser();
    Expression expression = p.parse(finaluserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer= eval.toString();
}
}

