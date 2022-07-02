import 'package:ecommerce/consts/my_icons.dart';
import 'package:ecommerce/screens/search.dart';
import 'package:ecommerce/screens/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'cart.dart';
import 'feeds.dart';
import 'home.dart';

class BottomBarScreen extends StatefulWidget {
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Map<String, dynamic>> _pages = [];
  int _selectedPageIndex = 0;
  // late String name;

  // String? cc;

  @override
  void initState() {
    _pages = [
       {
        'page': Home(),
      },
      {
        'page': Feeds(),
      },
      {
        'page': Search(),
      },
      {
        'page': Cart(),
      },
      {
        'page': UserInfo(),
      },
      // {'page': Home(), 'title': 'Home screen'},
      // {'page': Feeds(), 'title': 'Feeds screen'},
      // {'page': Search(), 'title': 'Search screen'},
      // {'page': Cart(), 'title': 'Cart screen'},
      // {'page': UserInfo(), 'title': 'Userinfo screen'},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // name = "Bikash";
    // String? name;
    // print(name);

    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(_pages[_selectedPageIndex]['title']),
      // ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        // color: Colors.white,
        shape: CircularNotchedRectangle(),
        notchMargin: 0.01,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: kBottomNavigationBarHeight * 0.98,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
              onTap: _selectPage,
              backgroundColor: Theme.of(context).primaryColor,
              unselectedItemColor: Theme.of(context).textSelectionColor,
              selectedItemColor: Colors.green,
              currentIndex: _selectedPageIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(MyAppIcons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(MyAppIcons.rss),
                  label: 'Feeds',
                ),
                BottomNavigationBarItem(
                  activeIcon: null,
                  icon: Icon(null),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    MyAppIcons.bag,
                  ),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(MyAppIcons.user),
                  label: 'User',
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.blue,
          hoverElevation: 10,
          splashColor: Colors.grey,
          tooltip: 'Search',
          elevation: 4,
          child: Icon(FeatherIcons.search),
          onPressed: () => setState(() {
            _selectedPageIndex = 2;
          }),
        ),
      ),
    );
  }
}
