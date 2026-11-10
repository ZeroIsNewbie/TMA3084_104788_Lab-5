
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [

              //University Picture
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/about_university.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Dark Overlay
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.2),
                      Colors.black.withOpacity(0.7),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),

              // Application Logo
              Positioned(
                top: 20,
                right: 20,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    'assets/images/app_logo.jpg',
                  ),
                ),
              ),

              // Application Name
              Positioned(
                left: 20,
                bottom: 25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'StudentHub',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    Text(
                      'Student Management Application',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 20),

          // About Application
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About the Application',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'StudentHub is a student management application '
                        'designed to organise and manage student information '
                        'and academic records efficiently. It provides a '
                        'convenient way to view student details and records.',
                    style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 15),

          // Developer Information
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Developer Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),

                  ListTile(
                    leading: Icon(Icons.group, color: Colors.pink),
                    title: Text('Development Team'),
                    subtitle: Text('JL3'),
                  ),

                  ListTile(
                    leading: Icon(Icons.school, color: Colors.pink),
                    title: Text('Programme'),
                    subtitle: Text('Software Engineering'),
                  ),

                  ListTile(
                    leading: Icon(
                      Icons.account_balance,
                      color: Colors.pink,
                    ),
                    title: Text('Institution'),
                    subtitle: Text(
                      'Universiti Malaysia Sarawak (UNIMAS)',
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 15),

          // Application Features
          Card(
            margin: EdgeInsets.symmetric(horizontal: 16),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Application Features',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),

                  ListTile(
                    leading: Icon(Icons.people, color: Colors.pink),
                    title: Text('Student Information'),
                    subtitle: Text('View and manage student details'),
                  ),

                  ListTile(
                    leading: Icon(
                      Icons.table_chart,
                      color: Colors.pink,
                    ),
                    title: Text('Student Records'),
                    subtitle: Text('View organised student records'),
                  ),

                  ListTile(
                    leading: Icon(Icons.category, color: Colors.pink),
                    title: Text('Category Management'),
                    subtitle: Text('Browse student categories and programmes'),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          // Footer
          Text(
            'Developed using Flutter',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 13,
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
