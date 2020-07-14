import 'package:Application/pages/Student/LogInStudent.dart';
import 'package:flutter/material.dart';
import './Student/LogInStudent.dart';
import './Admin/LogInAdmin.dart';
import './Teacher/LogInTeacher.dart';

class UserSelection extends StatefulWidget {
  @override
  _UserSelectionState createState() => _UserSelectionState();
}

class _UserSelectionState extends State<UserSelection> {
  List<Map<String, Object>> _users = [
    {'name': 'Student', 'route': LogInStudent.routeName},
    {'name': 'Teacher', 'route': LogInTeacher.routeName},
    {'name': 'Admin', 'route': LogInAdmin.routeName},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(20),
              child: Text(
                'Hello user!',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Welcome to Shree Rayeshwar Institute Of Engineering and Information Technology..',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(20),
              child: Text(
                'So choose the category you belong to from below',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: DropdownButton(
                onChanged: (_) {},
                hint: Text('Select'),
                elevation: 40,
                items: _users
                    .map(
                      (user) => DropdownMenuItem(
                        child: GestureDetector(
                          onTap: () =>
                              Navigator.of(context).pushNamed(user['route']),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(user['name']),
                          ),
                        ),
                        value: user['name'],
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
