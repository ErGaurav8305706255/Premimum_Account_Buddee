import 'package:flutter/material.dart';
import 'package:premium_account_buddee/core/onbording/profile_intro_screen.dart';

import '../constant/color_constant.dart';
import '../ui/explore/explore_screen.dart';
import '../ui/liked/liked_screen.dart';
import '../ui/messages/messages_screen.dart';
class BottomNavigatorBarScreen extends StatefulWidget {
  const BottomNavigatorBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorBarScreen> createState() => _BottomNavigatorBarScreenState();
}

class _BottomNavigatorBarScreenState extends State<BottomNavigatorBarScreen> {


  int _selectedIndex = 0;
  static List<Widget> _WidgetOption = <Widget>[
    ExploreScreen(),
    LikedScreen(),
    MessagesScreen(),
    ProfileIntroScreen()
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _WidgetOption.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_sharp),
                label: '',
                backgroundColor: ColorConstant.white
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.thumb_up),
                label: '',
                backgroundColor: ColorConstant.white
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.wechat),
                label: '',
                backgroundColor: ColorConstant.white
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
                backgroundColor: ColorConstant.white
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: ColorConstant.buttonColor,
          unselectedItemColor: ColorConstant.gray,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
