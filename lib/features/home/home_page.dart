import 'package:book_easy/features/home/home_view.dart';
import 'package:book_easy/features/like/like_view.dart';
import 'package:book_easy/features/message/message_view.dart';
import 'package:book_easy/features/profile/proile_view.dart';
import 'package:book_easy/features/search/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return HomePage();
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var listOfViews = [
    const HomeView(),
    const SearchView(),
    const LikeView(),
    const MessageView(),
    const ProfileView()
  ];

  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          index: selectedIndex,
        children: listOfViews,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue.shade800,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
             icon: Icon(Icons.store_mall_directory_outlined),
              label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ) ,
    );
  }
}
