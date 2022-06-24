import 'package:flutter/material.dart';

class ArchiveTaskScreen extends StatefulWidget {
  ArchiveTaskScreen({Key? key}) : super(key: key);

  @override
  State<ArchiveTaskScreen> createState() => _ArchiveTaskScreenState();
}

class _ArchiveTaskScreenState extends State<ArchiveTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Archive Task',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
  }
}
