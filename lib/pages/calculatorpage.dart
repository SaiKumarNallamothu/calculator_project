import 'package:calculator_project/buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';


class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  var userQuestion = '';
  var userAnswer = '';
  List<String> myList = [
    "C",
    "DEL",
    "/",
    "=",
    "7",
    "8",
    "9",
    "+",
    "4",
    "5",
    "6",
    "-",
    "3",
    "2",
    "1",
    "x",
    "0",
    ".",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              height: 250,
              width: double.infinity,
              color: Colors.deepPurple[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(userQuestion, style: TextStyle(fontSize: 36)),
                          Text(userAnswer, style: TextStyle(fontSize: 36)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: myList.length,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            userQuestion = "";
                            userAnswer = "";
                          });
                        },
                        child: MyButton(
                          buttonText: myList[index],
                          color: Colors.green,
                          textcolor: Colors.white,
                        ),
                      );
                    } else if (index == 1) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            // store substring in variable
                            // update user question with temp var
                            String temp = userQuestion.substring(
                                0, userQuestion.length - 1);
                            userQuestion = temp;
                          });
                        },
                        child: MyButton(
                          buttonText: myList[index],
                          color: Colors.red,
                          textcolor: Colors.white,
                        ),
                      );
                    }
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (myList[index] == '=') {
                            //store user question in temp var
                            //evaluate temp by using math function
                            //user ans = temp
                            String temp = userQuestion;
                            temp = temp.replaceAll("x", "*");
                             Parser p = Parser();
                             Expression exp = p.parse(temp);
                             ContextModel cm = ContextModel();
                            double eval = exp.evaluate(EvaluationType.REAL, cm);
                            userAnswer = eval.toString();
                          }
                          userQuestion += myList[index];
                        });
                      },
                      child: MyButton(
                        buttonText: myList[index],
                        color: isOperator(myList[index])
                            ? Colors.deepPurple
                            : Colors.deepPurple[50],
                        textcolor: isOperator(myList[index])
                          ? Colors.white
                          : Colors.lightBlue,
                      ),
                      // child: Container(
                      //   height: 50,
                      //   width: 50,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(5),
                      //     color: isOperator(myList[index])
                      //         ? Colors.deepPurple
                      //         : Colors.deepPurple[50],
                      //   ),
                      //   child: Center(
                      //     child: Text(myList[index],
                      //         style: TextStyle(
                      //             fontSize: 30,
                      //             color: isOperator(myList[index])
                      //                 ? Colors.white
                      //                 : Colors.lightBlue)),
                      //   ),
                      // ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

bool isOperator(String x) {
  if (x == '%' || x == 'x' || x == '/' || x == '-' || x == '=' || x == '+') {
    return true;
  }
  return false;
}
