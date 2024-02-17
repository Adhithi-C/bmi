import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalculator> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  double height_value=0;
  double weight_value=0;
  double result=0;
  void calculate(){
    height_value=double.parse(height.text)/100;
    weight_value=double.parse(weight.text);
    result=weight_value/(height_value*height_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
          title: Text(
            'BMI CALCULATOR',
            style: TextStyle(color: Colors.deepOrange[50]),
          )),
      backgroundColor: Colors.deepOrange[50],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: height,
              decoration: InputDecoration(
                border: OutlineInputBorder(),hintText: 'Height in cm'),),
          ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: weight,
            decoration: InputDecoration(
                border: OutlineInputBorder(),hintText: 'Weight in kg'),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(onPressed: (){}, child: Text('Calculate'),),
        SizedBox(height: 20),
        TextButton(onPressed: () {
          setState(() {
            calculate();
          });
        },child:Text('Result')),
        Text(result.toString())
      ],
      ),
    );
  }
}
