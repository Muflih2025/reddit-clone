import 'package:flutter/material.dart';

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Communities'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.star_border),
            title: Text('Favorites'),
            trailing: Icon(Icons.arrow_forward_ios, size: 14),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(child: Text('r/F')),
            title: Text('r/FlutterDev'),
          ),
          ListTile(
            leading: CircleAvatar(child: Text('r/D')),
            title: Text('r/Dart'),
          ),
          ListTile(
            leading: CircleAvatar(child: Text('r/R')),
            title: Text('r/RedditClone'),
          ),
        ],
      ),
    );
  }
}
