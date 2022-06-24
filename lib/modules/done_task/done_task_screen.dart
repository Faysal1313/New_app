import 'package:flutter/material.dart';

class doneTaskScreen extends StatefulWidget {
  doneTaskScreen({Key? key}) : super(key: key);

  @override
  State<doneTaskScreen> createState() => _doneTaskScreenState();
}

class _doneTaskScreenState extends State<doneTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'done Task',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
