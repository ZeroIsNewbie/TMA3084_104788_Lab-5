import 'package:flutter/material.dart';

import 'records.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink.shade50,
      child: DefaultTabController(
        length: 5,
        child: Column(
          children: <Widget>[
            Material(
              color: Colors.white,
              child: TabBar(
                labelColor: Colors.pink,
                unselectedLabelColor: Colors.pink.shade200,
                indicatorColor: Colors.pinkAccent,
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                  fontSize: 16.0,
                ),
                tabs: [
                  Tab(text: "Software Engineering"),
                  Tab(text: "Computational Science"),
                  Tab(text: "Multimedia Computing"),
                  Tab(text: "Network Computing"),
                  Tab(text: "Data Engineering"),
                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  ProgramScreen(programName: "Software Engineering"),
                  ProgramScreen(programName: "Computational Science"),
                  ProgramScreen(programName: "Multimedia Computing"),
                  ProgramScreen(programName: "Network Computing"),
                  ProgramScreen(programName: "Data Engineering"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProgramScreen extends StatelessWidget {
  final String programName;

  const ProgramScreen({super.key, required this.programName});
  @override
  Widget build(BuildContext context) {
    final filteredUsers = studentUsers
        .where((user) => user.program == programName)
        .toList();
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: filteredUsers.length,
      itemBuilder: (context, index) {
        final user = filteredUsers[index];

        return Card(
          color: Colors.white,
          shadowColor: Colors.pink.withValues(alpha: 0.25),
          child: ListTile(
            leading: const Icon(Icons.person, color: Colors.pink),
            title: Text(
              user.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Matric No.: ${user.matricNo}    CGPA: ${user.cgpa}',
            ),
          ),
        );
      },
    );
  }
}
