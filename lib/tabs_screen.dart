import 'package:abc/categories_screen.dart';
import 'package:abc/favorite_screen.dart';
import 'package:abc/main_drawer.dart';
import 'package:flutter/material.dart';
import './models/meal.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  TabsScreen(this.favoriteMeals);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Widget> pages;

  int selectedIndex = 0;
  @override
  void initState() {
    pages = [
      CategoriesScreen(),
      FavoriteScreen(widget.favoriteMeals),
    ];
    super.initState();
  }

  void selectedPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NanjiMeals'),
      ),
      drawer: MainDrawer(),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectedPage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
