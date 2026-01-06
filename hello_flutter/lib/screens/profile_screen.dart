import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              color: Colors.blue,
              child: const Center(
                  child: Icon(Icons.person, size: 80, color: Colors.white)),
            ),
            const SizedBox(height: 16),
            const Text(
              'u/User',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text('1 karma • 1d'),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('History'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
