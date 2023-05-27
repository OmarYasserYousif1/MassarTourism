import 'package:flutter/material.dart';
import 'package:traveling_app/screens/homepage.dart';
import '../widgets/app_drawer.dart';
import './categories_screen.dart';
import './favorites_screen.dart';
import '../models/trip.dart';
import 'booking.dart';

class TabsScreen extends StatefulWidget {
  // const TabsScreen({Key key}) : super(key: key);

  final List<Trip> favoriteTrips;

  TabsScreen(this.favoriteTrips);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  int _selectedScreenIndex = 0;

  List<Map<String, Object>> _screens;

  @override
  void initState() {
    _screens = [
      {
        'Screen': CategoriesScreen(),
        'Title': 'تصنيفات الرحلات',
      },
      {
        'Screen': FavoritesScreen(widget.favoriteTrips),
        'Title': 'الرحلات المفضلة',
      },
      {
        'Screen': booking(),
        'Title': ' حجز الرحلات ',
      },
      {
        'Screen': HomeForm(),
        'Title': ' الملف الشخصي',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['Title']),
      ),
      drawer: AppDrawer(),
      body: _screens[_selectedScreenIndex]['Screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.dashboard),
            label: 'التصنيفات',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.star),
            label: 'المفضلة',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.book_online),
            label: 'حجز الرحلات ',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.person),
            label: 'الملف الشخصي',
          ),
        ],
      ),
    );
  }
}
