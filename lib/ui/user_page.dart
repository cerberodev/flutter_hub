import 'package:flutter/material.dart';
import 'package:flutter_hub/ui/user_detail.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    'https://avatars0.githubusercontent.com/u/4?v=4'),
                child: Text(
                  '1',
                  style: TextStyle(
                    color: Colors.cyanAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                'user',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.blueGrey,
                ),
                textAlign: TextAlign.center,
              ),
              trailing: Icon(
                Icons.person,
                size: 50,
              ),
              onTap: () {
                print('hOLA');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserDetailPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
