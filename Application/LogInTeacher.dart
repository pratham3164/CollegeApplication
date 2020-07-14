import 'package:flutter/material.dart';

class LogInTeacher extends StatefulWidget {
  static const routeName = '/logInTeacher';
  @override
  _LogInTeacherState createState() => _LogInTeacherState();
}

class _LogInTeacherState extends State<LogInTeacher> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('I am in Teacher'),
    );
  }
}
