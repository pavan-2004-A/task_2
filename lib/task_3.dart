import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

class task extends StatelessWidget {
  const task({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: task_3(),
    );
  }
}

class task_3 extends StatefulWidget {
  const task_3({super.key});

  @override
  State<task_3> createState() => _task_3State();
}

class _task_3State extends State<task_3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
