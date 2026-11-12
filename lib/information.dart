import "package:flutter/material.dart";

import 'details.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Information')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Jee Hui Ying'),
            subtitle: Text('104511 · Software Engineering'),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Details(
                      name: 'Jee Hui Ying',
                      id: '104511',
                      course: 'Software Engineering',
                      email: '104511@siswa.unimas.my',
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Leong Jao Yuan'),
            subtitle: Text('104742 · Software Engineering'),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Details(
                      name: 'Leong Jao Yuan',
                      id: '104742',
                      course: 'Software Engineering',
                      email: '104742@siswa.unimas.my',
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Lim Gek Hong'),
            subtitle: Text('104763 · Software Engineering'),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Details(
                      name: 'Lim Gek Hong',
                      id: '104763',
                      course: 'Software Engineering',
                      email: '104763@siswa.unimas.my',
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Loh Zhi Yun'),
            subtitle: Text('104788 · Software Engineering'),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Details(
                      name: 'Loh Zhi Yun',
                      id: '104788',
                      course: 'Software Engineering',
                      email: '104788@siswa.unimas.my',
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
