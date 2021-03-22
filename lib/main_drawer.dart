import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 26,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          ListTile(
            leading: Icon(Icons.restaurant, size: 26.0),
            title: Text(
              'Meals',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto Condensed',
                fontSize: 24,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 26.0),
            title: Text(
              'Filters',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto Condensed',
                fontSize: 24,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/filters');
            },
          ),
        ],
      ),
    );
  }
}
