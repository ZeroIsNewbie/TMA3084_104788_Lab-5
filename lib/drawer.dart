
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final Function(int) onItemSelected;

  const AppDrawer({
    super.key,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.pinkAccent),
            child: Text(
              'Additional Menu',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.category),
            title: const Text('Category'),
            onTap: () {
              Navigator.pop(context);
              onItemSelected(3);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('About'),
            onTap: () {
              Navigator.pop(context);
              onItemSelected(4);
            },
          ),
        ],
      ),
    );
  }
}
