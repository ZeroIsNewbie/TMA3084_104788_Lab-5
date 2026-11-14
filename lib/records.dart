import 'package:flutter/material.dart';

class StudentRecordDataTable extends StatefulWidget {
  const StudentRecordDataTable({super.key});

  @override
  State<StudentRecordDataTable> createState() => _StudentRecordDataTableState();
}

final List<User> studentUsers = [
    User("Jee Hui Ying", 21, 104511, 4.0, "Software Engineering"),
    User("Leong Jao Yuan", 22, 104742, 4.0, "Software Engineering"),
    User("Lim Gek Hong", 22, 104763, 4.0, "Software Engineering"),
    User("Loh Zhi Yun", 22, 104788, 4.0, "Software Engineering"),
    User("Ali", 21, 100000, 3.4, "Multimedia Computing"),
    User("Siti", 19, 100001, 2.8, "Multimedia Computing"),
    User("Rahman", 25, 100002, 3.9, "Computational Science"),
    User("Bala", 22, 100003, 2.7, "Network Computing"),
    User("Zara", 20, 100004, 2.3, "Data Engineering"),
    User("Hafiz", 23, 100005, 3.1, "Data Engineering"),
  ];


class _StudentRecordDataTableState extends State<StudentRecordDataTable> {
  
  List<User> users= List.of(studentUsers);
  bool sortAscending = true;
  int? sortColumnIndex = 0;

  void _sort<T>(
    Comparable<T> Function(User user) getField,
    int columnIndex,
    bool ascending,
  ) {
    setState(() {
      users.sort((a, b) {
        final aValue = getField(a);
        final bValue = getField(b);
        return ascending
            ? Comparable.compare(aValue, bValue)
            : Comparable.compare(bValue, aValue);
      });

      sortColumnIndex = columnIndex;
      sortAscending = ascending;
    });
  }

  @override
  void initState() {
    super.initState();

    users.sort((a, b) => a.name.compareTo(b.name));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        title: const Text(
          "Student Records",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 4,
      ),

      body: Center(
        child: Card(
          elevation: 8,
          shadowColor: Colors.deepPurple.withValues(alpha: 0.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: const EdgeInsets.all(20),
            width: MediaQuery.sizeOf(context).width * 0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [Colors.white, Colors.deepPurple.shade50],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),

            child: LayoutBuilder(
              builder: (context, constraints) {
                return SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.65,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: constraints.maxWidth,
                        ),
                        child: Center(
                          child: DataTable(
                            sortColumnIndex: sortColumnIndex,
                            sortAscending: sortAscending,
                            columnSpacing: 50,
                            headingRowColor: WidgetStateProperty.all(
                              Colors.deepPurple.shade200,
                            ),
                            headingTextStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),

                            dataRowColor:
                                WidgetStateProperty.resolveWith<Color?>((
                                  states,
                                ) {
                                  if (states.contains(WidgetState.selected)) {
                                    return Colors.deepPurple.shade100;
                                  }
                                  return Colors.deepPurple.shade50;
                                }),

                            columns: [
                              DataColumn(
                                label: const Text(
                                  "Name",
                                  style: TextStyle(fontSize: 16),
                                ),
                                onSort: (columnIndex, ascending) {
                                  _sort(
                                    (user) => user.name,
                                    columnIndex,
                                    ascending,
                                  );
                                },
                              ),
                              DataColumn(
                                numeric: true,
                                label: const Text(
                                  "Age",
                                  style: TextStyle(fontSize: 16),
                                ),
                                onSort: (columnIndex, ascending) {
                                  _sort(
                                    (user) => user.age,
                                    columnIndex,
                                    ascending,
                                  );
                                },
                              ),
                              DataColumn(
                                numeric: true,
                                label: const Text(
                                  "Matric No.",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              DataColumn(
                                numeric: true,
                                label: const Text(
                                  "CGPA",
                                  style: TextStyle(fontSize: 16),
                                ),
                                onSort: (columnIndex, ascending) {
                                  _sort(
                                    (user) => user.cgpa,
                                    columnIndex,
                                    ascending,
                                  );
                                },
                              ),
                              DataColumn(
                                label: const Text(
                                  "Program",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],

                            rows: users.map((user) {
                              return DataRow(
                                cells: [
                                  DataCell(
                                    Text(
                                      user.name,
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      user.age.toString(),
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      user.matricNo.toString(),
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      user.cgpa.toString(),
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  DataCell(
                                    Text(
                                      user.program,
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  ),
                                ],
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class User {
  final String name;
  final int age;
  final int matricNo;
  final num cgpa;
  final String program;

  User(this.name, this.age, this.matricNo, this.cgpa, this.program);
}
