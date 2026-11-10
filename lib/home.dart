
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Application Name
            Text(
              'StudentHub',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),

            SizedBox(height: 8),

            // Welcome Message
            Text(
              'Welcome to StudentHub! Manage student information easily.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),

            SizedBox(height: 20),

            // Relevant Image
            Center(
              child: Image.asset(
                'assets/images/home_image.jpg',
                height: 200,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 25),

            // Student Information Summary
            Text(
              'Student Overview',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 15),

            // Summary Cards
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Icon(Icons.people,
                              color: Colors.blue, size: 35),
                          SizedBox(height: 8),
                          Text(
                            '120',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Total Students'),
                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Icon(Icons.school,
                              color: Colors.green, size: 35),
                          SizedBox(height: 8),
                          Text(
                            '5',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Programmes'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Icon(Icons.male,
                              color: Colors.purple, size: 35),
                          SizedBox(height: 8),
                          Text(
                            '65',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Male Students'),
                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Icon(Icons.female,
                              color: Colors.orange, size: 35),
                          SizedBox(height: 8),
                          Text(
                            '55',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Female Students'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
