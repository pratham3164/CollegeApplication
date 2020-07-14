import 'package:flutter/material.dart';
import './pages/UserSelect.dart';
import 'pages/Admin/LogInAdmin.dart';
import 'pages/Admin/LogInAdmin.dart';
import 'pages/Student/LogInStudent.dart';
import 'pages/Student/LogInStudent.dart';
import 'pages/Teacher/LogInTeacher.dart';
import 'pages/Teacher/LogInTeacher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RIT Application',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: UserSelection(),
      routes: {
        LogInAdmin.routeName: (context) => LogInAdmin(),
        LogInStudent.routeName: (context) => LogInStudent(),
        LogInTeacher.routeName: (context) => LogInTeacher()
      },
    );
  }
}
