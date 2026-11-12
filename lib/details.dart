import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String name;
  final String id;
  final String course;
  final String email;

  const Details({
    super.key,
    required this.name,
    required this.id,
    required this.course,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Details')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Name"),
                subtitle: SelectableText(name),
              ),
              ListTile(
                leading: Icon(Icons.badge),
                title: Text('Matric Number'),
                subtitle: SelectableText(id),
              ),
              ListTile(
                leading: Icon(Icons.school),
                title: Text('Course'),
                subtitle: SelectableText(course),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: SelectableText(email),
              ),
              /*SelectableText(
                showCursor: true,
                cursorColor: Colors.blue,
                cursorWidth: 2.0,
                style: TextStyle(fontSize: 16),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
