import 'package:flutter/material.dart';

class Bmi_result extends StatefulWidget {
  Bmi_result({Key? key}) : super(key: key);

  @override
  State<Bmi_result> createState() => _Bmi_resultState();
}

class _Bmi_resultState extends State<Bmi_result> {
  late final double result;
  late final int age;
  late final bool isMail;
  //Bmi_result();
  //Bmi_result({required this.result, required this.age, required this.isMail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Gender:MAIL',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'Result:125',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'AGE:22',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
