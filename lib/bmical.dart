import 'package:flutter/material.dart';
class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double h_value=0;
  double w_value=0;
  double result=0;
  void calculator(){
    h_value=double.parse(height.text)/100;
    w_value=double.parse(weight.text);
    result=w_value/(h_value*h_value);
    print(result);
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:Colors.lime,
          title: Text("BMI CALCULATOR")
      ),

      backgroundColor:Colors.white70,
      body:Column(mainAxisAlignment:MainAxisAlignment.center,children:[
        TextField(
          controller: height,

        decoration: InputDecoration(
       border: OutlineInputBorder(),



          hintStyle: TextStyle(color: Colors.lime),

       hintText: ' enter your height',
    ),
    ),

    TextField(
      controller: weight,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
      hintStyle: TextStyle(color: Colors.lime),
    hintText: 'enter your weight',
    ),
    ),
        TextButton(
            onPressed: (){
            setState(() {
             calculator() ;
          });
      },
            child: Text('calculate')),
    Text(result.toString(),style: TextStyle(color: Colors.lime),)
    ]),
    );
  }
}
