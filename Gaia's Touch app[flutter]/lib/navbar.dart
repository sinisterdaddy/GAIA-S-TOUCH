
import 'dart:ui';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gdsc/homepage.dart';
import 'package:gdsc/list_page.dart';
import 'package:gdsc/requests.dart';


class DamnTime extends StatefulWidget {
  @override
  _DamnTimeState createState() => _DamnTimeState();
}

class _DamnTimeState extends State<DamnTime> {
  int _currentIndex = 0;
  PageController _pageController = PageController();


  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            if (index == 3) {
            }
            if (index == 1) {

            }
            setState(() => _currentIndex = index);
          },

          children: <Widget>[
            HomePage(),
            ListPage(),
            RequestPage(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 12, 25, 12),
          child: BottomNavyBar(
            backgroundColor: Colors.black,
            showElevation: false,
            selectedIndex: _currentIndex,
            onItemSelected: (index) {
              if (index == 3) {

              }
              if (_currentIndex == 3) {

              }
              if (index == 1) {

              }
              if (_currentIndex == 1) {

              }
              setState(() => _currentIndex = index);
              _pageController.jumpToPage(index);
            },
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                title: Text('Home',style: TextStyle(fontFamily: 'Inter'),),
                // icon: Icon(Icons.home),
                icon: Icon(
                  Icons.home_rounded,
                  size: 22,color: Colors.white,
                ),
                textAlign: TextAlign.center,
                activeColor: Colors.white,
                inactiveColor: Colors.white,
              ),
              BottomNavyBarItem(
                title: Text("NGO's LIST",style: TextStyle(fontFamily: 'Inter',),),
                // icon: Icon(Icons.library_books),
                icon: Icon(
                  Icons.list_alt_rounded,
                  size: 22,color: Colors.white,
                ),
                textAlign: TextAlign.center,
                activeColor: Colors.white,
                inactiveColor: Colors.white,
              ),
              BottomNavyBarItem(
                title: Text('Requests',style: TextStyle(fontFamily: 'Inter'),),
                // icon: Icon(Icons.stars),
                icon: Icon(
                  Icons.notifications_active_rounded,
                  size: 22,color: Colors.white,
                ),
                textAlign: TextAlign.center,
                activeColor: Colors.white,
                inactiveColor: Colors.white,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
