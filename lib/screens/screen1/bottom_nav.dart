// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:test_jiitek/screens/screen1/screen1.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: const NavBarDecoration(
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style15,
        navBarHeight: 76,        
    );
  }

  final PersistentTabController _controller= PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
        return [
          Screen1(),
          const JobScreen(),
          const ScanScreen(),
          const ChatScreen(),
          const MyPageScreen(),
        ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
        return [
            PersistentBottomNavBarItem(
                icon: const Icon(CupertinoIcons.search),
                title: "さがす",
                activeColorPrimary: const Color(0xFFFAAA14),
                inactiveColorPrimary: Colors.black,
                textStyle: const TextStyle(fontSize: 10)
            ),
            PersistentBottomNavBarItem(
                icon: const Icon(CupertinoIcons.bag),
                title: "お仕事",
                activeColorPrimary: const Color(0xFFFAAA14),
                inactiveColorPrimary: Colors.black,
                textStyle: const TextStyle(fontSize: 10)
            ),
            PersistentBottomNavBarItem(
                icon: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xFFFAAA14), Color(0xFFFFD78D)],
                    ),
                  ),                 
                  child: Image.asset('assets/Scan_icon.png')),
                title: "打刻する",
                activeColorPrimary: Colors.transparent,
                inactiveColorPrimary: Colors.black,
                textStyle: const TextStyle(fontSize: 10)
            ),
            PersistentBottomNavBarItem(
                icon: const Icon(CupertinoIcons.chat_bubble_text),
                title: "チャット",
                activeColorPrimary: const Color(0xFFFAAA14),
                inactiveColorPrimary: Colors.black,
                textStyle: const TextStyle(fontSize: 10)
            ),
            PersistentBottomNavBarItem(
                icon: const Icon(CupertinoIcons.person),
                title: "マイページ",
                activeColorPrimary: const Color(0xFFFAAA14),
                inactiveColorPrimary: Colors.black,
                textStyle: const TextStyle(fontSize: 10)
            ),
        ];
    }
}


class JobScreen extends StatelessWidget {
  const JobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('お仕事'),
      ),
    );
  }
}

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('打刻する'),
      ),
    );
  }
}
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('チャット'),
      ),
    );
  }
}
class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('マイページ'),
      ),
    );
  }
}