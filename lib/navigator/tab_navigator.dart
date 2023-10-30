import 'package:flutter/material.dart';
import 'package:my_app/pages/index.dart';
import 'package:my_app/pages/search.dart';
import 'package:my_app/pages/travel.dart';
import 'package:my_app/pages/user.dart';


class TabNavigator extends StatefulWidget {
  const TabNavigator({Key? key}) : super(key: key);

  @override
  State<TabNavigator> createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final PageController _controller = PageController(
    initialPage: 0,
  );
  int _controllerIndex = 0;
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: const <Widget>[
          HomePageState(),
          SearchPageState(),
          TravelPAgesState(),
          UserPageState()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _controllerIndex,
        type:BottomNavigationBarType.fixed,
        onTap: (index){
          _controller.jumpToPage(index);
          setState(() {
            _controllerIndex = index;
          });
        },
        unselectedLabelStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 14
        ),
        selectedLabelStyle: const TextStyle(
          color: Colors.blue,
          fontSize: 14
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
             Icons.home,
              color: _defaultColor,
            ),
            activeIcon: Icon(
              Icons.home,
              color: _activeColor,
            ),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: _defaultColor,
            ),
            activeIcon: Icon(
              Icons.search,
              color: _activeColor,
            ),
            label: '搜索',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt,
              color: _defaultColor,
            ),
            activeIcon: Icon(
              Icons.camera_alt,
              color: _activeColor,
            ),
            label: '旅拍',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: _defaultColor,
            ),
            activeIcon: Icon(
              Icons.account_circle,
              color: _activeColor,
            ),
            label: '我的',
          )
        ],
      ),
    );
  }
}
