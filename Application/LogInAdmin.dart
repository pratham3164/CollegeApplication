import 'package:flutter/material.dart';

class LogInAdmin extends StatefulWidget {
  static const routeName = '/logInAdmin';
  @override
  _LogInAdminState createState() => _LogInAdminState();
}

class _LogInAdminState extends State<LogInAdmin> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('I am in admin'),
    );
  }
}
