import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'chats.dart';
import 'movies.dart';
import 'notifications.dart';
import 'freinds.dart';
import 'groupes.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab;
  Widget _currentPage;
  HomeScreen _homescreen;
  FreindsScreen _freindsscreen;
  ChatScreen _chatscreen;
  NotificationsScreen _notificationsscreen;
  MoviesScreen _moviesscreen;
  GroupesScreen _groupesscreen;
  List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _homescreen = HomeScreen();
    _freindsscreen = FreindsScreen();
    _chatscreen = ChatScreen();
    _notificationsscreen = NotificationsScreen();
    _moviesscreen = MoviesScreen();
    _groupesscreen = GroupesScreen();

    _pages = [
      _homescreen,
      _freindsscreen,
      _chatscreen,
      _notificationsscreen,
      _moviesscreen,
      _groupesscreen
    ];
    _currentPage = HomeScreen();
    _selectedTab = 0;
  }

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          color: Colors.white,
          height: _height,
          width: _width,
          child: Column(
            children: [
              _blackHeader(_height),
              _whiteHeader(_height),
            ],
          )),
    );
  }

  Widget _blackHeader(double _height) {
    return Container(
      height: _height * 0.13,
      color: Colors.black,
      child: Row(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 25.0),
                child: Text("Mode Payant ",
                    style: TextStyle(
                        color: Colors.white70,
                        fontStyle: FontStyle.normal,
                        fontSize: ScreenUtil().setSp(25))),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 5.0),
                  child: CircleAvatar(
                    radius: 10.0,
                    backgroundColor: Colors.grey,
                    child: Text(
                      "?",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  )),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 8.0),
                child: Container(
                  width: 100.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(
                        Radius.circular(2),
                      ),
                      boxShadow: [BoxShadow(color: Colors.black)]),
                  child: Center(child: Text("Passer en mode gratuit")),
                )),
          )
        ],
      ),
    );
  }

  Widget _whiteHeader(double _height) {
    return Container(
      height: _height * 0.20,
      color: Colors.white,
      child: Stack(
        children: [
          _firstRangWhiteHeader(),
          // _currentPage,
          _bottomnavigator(),
        ],
      ),
    );
  }

  Widget _firstRangWhiteHeader() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0),
          child: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.grey[400],
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.grey[400],
                  child: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Badge(
                  padding: EdgeInsets.only(top: 1.0),
                  badgeContent: Icon(
                    Icons.arrow_downward_rounded,
                    size: 25.0,
                    color: Colors.white,
                  ),
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.grey[400],
                    child: Icon(
                      Icons.menu_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  _bottomnavigator() {
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedTab,
          onTap: (int tab) {
            setState(() {
              _selectedTab = tab;
              if (tab == 0 || tab == 1 || tab == 2 || tab == 3 || tab == 4 || tab == 5) {
                _currentPage = _pages[tab];
              }
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,
                    color: _selectedTab == 0
                        ? Colors.white
                        : Colors.blue),
                // ignore: deprecated_member_use
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(Icons.group_rounded,
                    color: _selectedTab == 1
                        ? Colors.grey[800]
                        : Colors.red[900]),
                // ignore: deprecated_member_use
                title: Text("")),
            BottomNavigationBarItem(
                icon: Icon(Icons.source_rounded,
                    color: _selectedTab == 2
                        ? Colors.grey[800]
                        : Colors.grey[800]),
                // ignore: deprecated_member_use
                title: Text("")),
            
            BottomNavigationBarItem(
                icon: Icon(Icons.notification_important,
                    color: _selectedTab == 1
                        ? Colors.grey[800]
                        : Colors.red[900]),
                // ignore: deprecated_member_use
                title: Text("")),
                BottomNavigationBarItem(
                icon: Icon(Icons.ondemand_video_outlined,
                    color: _selectedTab == 1
                        ? Colors.grey[800]
                        : Colors.red[900]),
                // ignore: deprecated_member_use
                title: Text("")),
                BottomNavigationBarItem(
                icon: Icon(Icons.group_work_rounded,
                    color: _selectedTab == 1
                        ? Colors.grey[800]
                        : Colors.red[900]),
                // ignore: deprecated_member_use
                title: Text("")),
          ],
        ),
      ),
    );
  }
}
