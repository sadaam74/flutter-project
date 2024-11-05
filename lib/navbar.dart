import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('sadaam'),
            accountEmail: Text('sadaamabdi@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(//sawirka ayyuu circle ama wareeg ka dhigayaa
                child: Image.asset('images/s.png'),
              ),
            ),
            decoration: BoxDecoration(color: Colors.black),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('settings'),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Acounts'),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('home'),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('share'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('notification'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('logout'),
          ),
        ],
      ),
    );
  }
}
