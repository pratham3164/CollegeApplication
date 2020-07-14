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
                  hint: Text('Select'),
                  elevation: 40,
                  items: [
                    DropdownMenuItem(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Student'),
                      ),
                      value: 'Student',
                    ),
                    DropdownMenuItem(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Teacher'),
                      ),
                      value: 'Teacher',
                    ),
                    DropdownMenuItem(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Admin'),
                      ),
                      value: 'Admin',
                    ),
                  ],
                  onChanged: (value) {
                    switch (value) {
                      case "Student":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogInStudent(),
                          ),
                        );
                        break;
                      case "Teacher":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogInTeacher(),
                          ),
                        );
                        break;
                      case "Admin":
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LogInAdmin(),
                          ),
                        );
                        break;
                    }
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
