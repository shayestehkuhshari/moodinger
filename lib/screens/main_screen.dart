import 'package:flutter/material.dart';
import 'package:flutter_instagram_app/screens/activity_screen.dart';
import 'package:flutter_instagram_app/screens/add_content_screen.dart';
import 'package:flutter_instagram_app/screens/explore_screen.dart';
import 'package:flutter_instagram_app/screens/home_screen.dart';
import 'package:flutter_instagram_app/screens/user_profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedBottomNavigationItem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Color(0xff272B40),
                currentIndex: _selectedBottomNavigationItem,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                onTap: (int index) {
                  index == 2
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddContentScreen(),
                          ),
                        )
                      : setState(() {
                          _selectedBottomNavigationItem = index;
                        });
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Image.asset('images/icon_home.png'),
                      activeIcon: Image.asset('images/icon_active_home.png'),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Image.asset('images/icon_search_navigation.png'),
                      activeIcon: Image.asset(
                          'images/icon_search_navigation_active.png'),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Image.asset('images/icon_add_navigation.png'),
                      activeIcon:
                          Image.asset('images/icon_add_navigation_active.png'),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Image.asset('images/icon_activity_navigation.png'),
                      activeIcon: Image.asset(
                          'images/icon_activity_navigation_active.png'),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffC5C5C5),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('images/profile1.png'),
                          ),
                        ),
                      ),
                      activeIcon: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: Color(0xffF35383),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset('images/profile1.png'),
                          ),
                        ),
                      ),
                      label: ''),
                ]),
          ),
        ),
        body: IndexedStack(
          index: _selectedBottomNavigationItem,
          children: getLayot(),
        ));
  }

  List<Widget> getLayot() {
    return <Widget>[
      HomeScreen(),
      ExploreScreen(),
      AddContentScreen(),
      ActivityScreen(),
      UserProfileScreen(),
    ];
  }
}
