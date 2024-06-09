import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
                'assets/pp.jpeg'), // Replace with your profile image asset
          ),
          SizedBox(height: 10),
          Text(
            'Doğukan',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'dogukan@gmail.com',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 30),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profil'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Handle profile tap
                  },
                ),
                ListTile(
                  leading: Icon(Icons.bookmark),
                  title: Text('Kaydedilenler'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Handle saved items tap
                  },
                ),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text('Önceki Gezilerim'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Handle previous trips tap
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Ayarlar'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Handle settings tap
                  },
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text('Version'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // Handle version tap
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
