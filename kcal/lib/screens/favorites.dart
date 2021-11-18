import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kcal/screens/foods.dart';
import 'package:kcal/screens/recipe.dart';

void main() {
  runApp(favoriteScreen());
}

class favoriteScreen extends StatefulWidget {
  @override
  _favoriteScreenState createState() => _favoriteScreenState();
}

class _favoriteScreenState extends State<favoriteScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _togglePages = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Favorites',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            centerTitle: true,
            shadowColor: Colors.white,
            bottom: TabBar(
                indicatorColor: Colors.green.shade400,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: "Foods",
                  ),
                  Tab(
                    text: "Recipes",
                  ),
                ]),
          ),
          body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 600,
                      child: TabBarView(
                        children: [foods(), Recipe()],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              elevation: 5,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.red.shade100,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.camera,
                    ),
                    label: 'Camera'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: 'Favorite'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_rounded), label: 'Me'),
              ]),
        ),
      ),
    );
  }
}
