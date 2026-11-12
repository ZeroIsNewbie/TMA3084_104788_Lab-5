import 'package:flutter/material.dart';

class Student {
  final String name;
  final String matricNo;
  final String programme;
  final String email;

  const Student({
    required this.name,
    required this.matricNo,
    required this.programme,
    required this.email,
  });
}

const List<Student> students = [
  Student(
    name: 'Jee Hui Ying',
    matricNo: '104511',
    programme: 'Software Engineering',
    email: '104511@siswa.unimas.my',
  ),
  Student(
    name: 'Leong Jao Yuan',
    matricNo: '104742',
    programme: 'Software Engineering',
    email: '104742@siswa.unimas.my',
  ),
  Student(
    name: 'Lim Gek Hong',
    matricNo: '104763',
    programme: 'Software Engineering',
    email: '104763@siswa.unimas.my',
  ),
  Student(
    name: 'Loh Zhi Yun',
    matricNo: '104788',
    programme: 'Software Engineering',
    email: '104788@siswa.unimas.my',
  ),
];

class Details extends StatelessWidget {
  final Student student;
  const Details({super.key, required this.student});

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
                subtitle: SelectableText(student.name),
              ),
              ListTile(
                leading: Icon(Icons.badge),
                title: Text('Matric Number'),
                subtitle: SelectableText(student.matricNo),
              ),
              ListTile(
                leading: Icon(Icons.school),
                title: Text('Course'),
                subtitle: SelectableText(student.programme),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: SelectableText(student.email),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
