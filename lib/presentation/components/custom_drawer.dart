import 'package:flutter/material.dart';

Widget customDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: Colors.black,
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.black),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.close, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ),
        const ListTile(
          leading: Icon(Icons.settings, color: Colors.white),
          title: Text('Settings', style: TextStyle(color: Colors.white)),
        ),
        const ListTile(
          leading: Icon(Icons.logout, color: Colors.white),
          title: Text('Logout', style: TextStyle(color: Colors.white)),
        ),
      ],
    ),
  );
}
