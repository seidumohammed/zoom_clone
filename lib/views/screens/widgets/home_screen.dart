import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';
import 'package:zoom_clone/views/screens/widgets/history_screen.dart';
import 'package:zoom_clone/views/screens/widgets/meeting_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageIndex = 0;

  final pages = [MeetingScreen(), HistoryScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Text(
          'Meet & Chat',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              pageIndex = index;
            });
          },
          currentIndex: pageIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: footerColor,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank),
              label: "Meet & chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock),
              label: "Meeting",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Contacts",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: "Settings",
            ),
          ]),
    );
  }
}
