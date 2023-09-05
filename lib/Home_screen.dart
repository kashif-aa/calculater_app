import 'package:calculater/components/MyButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  var userinput='';
  var answer ='';
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                  Text(userinput.toString(),style: TextStyle(fontSize: 30,color:Colors.white )),
                    Text(answer.toString(),style: TextStyle(fontSize: 30,color:Colors.white )),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    children: [
                      MyButton(title: 'Ac',onpress: (){
                  userinput ='';
                  answer='';
                  setState(() {

                  });
                      },),
                      MyButton(title: '+/-',onpress: (){
                        userinput +='+/-';
                        setState(() {

                        });
                      },),
                      MyButton(title: '%',onpress: (){
                        userinput +='%';
                        setState(() {

                        });
                      }),
                      MyButton(title: '/',onpress: (){
                        userinput +='/';
                        setState(() {

                        });
                      } ,color: Colors.white,),


                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '7',onpress: (){
                       userinput +='7';
                       setState(() {

                       });
                      },),
                      MyButton(title: '8',onpress: (){
                        userinput+='8';
                        setState(() {

                        });
                      },),
                      MyButton(title: '0',onpress: (){
                        userinput+='0';
                        setState(() {

                        });
                      }),
                      MyButton(title: 'x',onpress: (){
                        userinput+='x';
                        setState(() {

                        });
                      } ,color: Colors.white,),


                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '4',onpress: (){
                        userinput+='4';
                        setState(() {

                        });
                      },),
                      MyButton(title: '5',onpress: (){
                        userinput+='5';
                        setState(() {

                        });
                      },),
                      MyButton(title: '6',onpress: (){
                        userinput+='6';
                        setState(() {

                        });
                      }),
                      MyButton(title: '-',onpress: (){
                        userinput+='-';
                        setState(() {

                        });
                      } ,color: Colors.white,),


                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '1',onpress: (){
                        userinput+='1';
                        setState(() {

                        });
                      },),
                      MyButton(title: '2',onpress: (){
                        userinput+='2';
                        setState(() {

                        });
                      },),
                      MyButton(title: '3',onpress: (){
                        userinput+='3';
                        setState(() {

                        });
                      }),
                      MyButton(title: '+',onpress: (){
                        userinput+='+';
                        setState(() {

                        });
                      } ,color: Colors.white,),


                    ],
                  ),
                  Row(
                    children: [
                      MyButton(title: '0',onpress: (){
                        userinput+='0';
                        setState(() {

                        });
                      },),
                      MyButton(title: '.',onpress: (){
                        userinput+='.';
                        setState(() {

                        });
                      },),
                      MyButton(title: 'DEl',onpress: (){
                        userinput =userinput.substring(0,userinput.length - 1);
                        setState(() {

                        });
                      }),
                      MyButton(title: '=',onpress: (){
                        equalpress();
                        setState(() {

                        });

                      } ,color: Colors.white,),


                    ],
                  ),

                ],
              ),
            ),


                ],
        ),
      ),
    );
  }
  void equalpress (){
    String finaluserinput = userinput.replaceAll('x', '*');
  Parser p =Parser();
  Expression expression =p.parse(finaluserinput);

  ContextModel contextModel = ContextModel();
  double eval =expression.evaluate(EvaluationType.REAL,contextModel);
  answer =eval.toString();
  }
}




