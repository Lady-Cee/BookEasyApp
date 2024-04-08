
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("assets/home/list.png", width: 50, height: 50),
                      SizedBox(width: 180),
                      CircleAvatar(
                        backgroundColor: Colors.blue.shade300,
                        radius: 25,
                        child: Image.asset("assets/home/bell.png", width: 30, height: 30),
                      ),
                      SizedBox(width: 10),
                      Image.asset("assets/home/face.png", width: 50, height: 50),
                    ],
                  ),

                  SizedBox(height: 20),

                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: "Search by location",
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: const Icon(Icons.search),
                            suffixIcon: const Icon(Icons.keyboard_voice_rounded),
                            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                            hintStyle: TextStyle(color: Colors.black38),
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Adjust spacing between TextField and Image
                      Image.asset("assets/home/filter.png", width: 50, height: 60),
                    ],
                  ),
                  SizedBox(height: 20),
             DefaultTabController(
              length: 4, // Number of tabs
              child: Column(
                children: [
                  TabBar(
                   isScrollable: true,
                   // controller: _tabController,,
                    labelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    indicatorColor: Colors.transparent,
                    labelPadding: EdgeInsets.symmetric(horizontal: 6),
                    unselectedLabelColor: Colors.blue,
                    labelStyle: TextStyle(fontSize: 20),
                    unselectedLabelStyle: TextStyle(fontSize: 18),
                    indicator: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),

                    ),

                    tabs: [
                       Container(
                        width: 40,
                      //   height: 50,
                        decoration:BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2), // Border color and width
                           borderRadius: BorderRadius.circular(10),
                      ),
                          child: Tab(text: 'All')),
                      Container(
                          width: 70,
                          //height: 50,
                          decoration:BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 2), // Border color and width
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Tab(text: 'Duplex')),
                      Container(
                        width: 95,
                          decoration:BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 2), // Border color and width
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Tab(text: 'Bungalow')),
                      Container(
                          width: 100,
                          decoration:BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 2), // Border color and width
                            borderRadius: BorderRadius.circular(10),
                          ),

                          child: Tab(text: 'Apartment')),
                    ],
                  ),
                  SizedBox(height:10),
                  SizedBox(
                    height: 600,
                    child: TabBarView(
                      children: [
                        Container(
                          child: Text("All Tab"),
                        ),
                        Container(
                          child: Text("Duplex"),
                        ),
                        Container(
                          child: Text("Bungalow"),
                        ),
                        Container(
                          child: Text("Apartment"),
                        ),
                      ],
                    ),
                  ),

                  // Expanded(
                  //   child: TabBarView(
                  //     children: [
                  //       Center(child: Image.asset("assets/home/firsthouse.png", width: 50, height: 50,)),
                  //     ],
                  //   ),
                  // )
            ],
      ),

            ),
                ],


          ),
            ),
      ),
      ),
    );


  }
}



