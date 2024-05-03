
import 'package:book_easy/features/home/widgets/home_bottom_sheet.dart';
import 'package:book_easy/features/home/widgets/home_drawer.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.blue.shade900,
            size:40,// Change color of the drawer icon to red
          ),
        actions: [
          GestureDetector(
            onTap: (){},
            child: CircleAvatar(
              backgroundColor: Colors.blue.shade900,
              radius: 20,
              child: Image.asset("assets/home/bell.png", width: 20, height: 30),
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
          GestureDetector(
              onTap: () {},
              child: Image.asset("assets/home/face.png", width: 40, height: 50)
          ),
          SizedBox(width:MediaQuery.of(context).size.width * 0.032),
        ],
        ),
          drawer: HomeDrawer(),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
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
                        SizedBox(width: MediaQuery.of(context).size.width * 0.001), // Adjust spacing between TextField and Image
                        Image.asset("assets/home/filter.png", width: 50, height: 60),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
               Padding(
                 padding: const EdgeInsets.only(left: 8.0, right: 8),
                 child: DefaultTabController(
                  length: 4, // Number of tabs
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TabBar(
                        isScrollable: true,
                        //controller: _tabController,
                        labelColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: Colors.transparent,
                        indicatorColor: Colors.transparent,
                        labelPadding: EdgeInsets.symmetric(horizontal: 6),
                        unselectedLabelColor: Colors.blue.shade900,
                        labelStyle: TextStyle(fontSize: 20),
                        unselectedLabelStyle: TextStyle(fontSize: 18),
                        indicator: BoxDecoration(
                          color: Colors.blue.shade900,
                         // color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10),

                        ),

                        tabs: [
                           Container(
                            width: MediaQuery.of(context).size.width * 0.1,
                          //   height: 50,
                            decoration:BoxDecoration(
                              border: Border.all(color: Colors.blue.shade900, width: 2), // Border color and width
                               borderRadius: BorderRadius.circular(10),
                          ),
                              child: Tab(text: 'All')),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.18,
                              //height: 50,
                              decoration:BoxDecoration(
                                border: Border.all(color: Colors.blue.shade900, width: 2), // Border color and width
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Tab(text: 'Duplex')),
                          Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              decoration:BoxDecoration(
                                border: Border.all(color: Colors.blue.shade900, width: 2), // Border color and width
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Tab(text: 'Bungalow')),
                          Container(
                              width: 100,
                              decoration:BoxDecoration(
                                border: Border.all(color: Colors.blue.shade900, width: 2), // Border color and width
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Tab(text: 'Apartment')),
                        ],
                      ),
                      SizedBox(height:10),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: TabBarView(
                          children: [
                            Container(
                              child: Stack(
                          children:[
                              GestureDetector(
                                onTap: (){

                                  showModalBottomSheet(
                                      context: context,
                                      //showDragHandle: true,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(24.0),
                                          topRight: Radius.circular(24.0),
                                        ),
                                      ),
                                      isScrollControlled: true,
                                      constraints: BoxConstraints.tight(
                                        Size(
                                          MediaQuery.of(context).size.width,
                                          MediaQuery.of(context).size.height * 0.75,
                                        ),
                                      ),
                                      builder: (ctx) {
                                        return HomeBottomSheet();
                                      }

                                  );
                                },
                                child: Container(
                                  width: 350,
                                   height: 250,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/home/firsthouse.png"),
                                      fit: BoxFit.cover,
                                    )
                                  ),

                        ),
                              ),
                              Positioned(
                                  right: 10,
                                  top: 10,
                                  child: Image.asset("assets/home/Like.png", width: 50,),
                              ),
                            Positioned(
                              left: 5,
                              top: 260,
                              child: Row(
                                children: [
                                  Text("Bella View Duplex", style: TextStyle(fontSize: 16),),
                                  SizedBox(width:20),
                                  Image.asset("assets/home/badge.png", width: 20,),
                                ],
                              ),

                            ),
                            Positioned(
                              right: 5,
                              top: 260,
                              child: Row(
                                children: [
                                  Image.asset("assets/home/star.png", width: 15,),
                                  SizedBox(width:16),
                                  Text("4.2", style: TextStyle(fontSize: 16),),


                                ],
                              ),

                            ),

                            Positioned(
                              left: 5,
                              top: 290,
                              child: Row(
                                children: [
                                  Image.asset("assets/home/locationred.png", width: 20,),
                                  SizedBox(width:16),
                                  Text("Ikeja", style: TextStyle(fontSize: 16,),),


                                ],
                              ),

                            ),
                            Positioned(
                              right: 5,
                              top: 290,
                              child: Row(
                                children: [
                                  Text("N2.5M", style: TextStyle(fontSize: 16, color: Colors.blue),),


                                ],
                              ),

                            ),
                            Positioned(
                              top: 340,
                              child:  Container(
                                width: 350,
                                height: 250,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/home/lasthouse.png"),
                                      fit: BoxFit.cover,
                                    )
                                ),

                              ),

                            ),
                            Positioned(
                              right: 10,
                              top: 350,
                              child: Image.asset("assets/home/redLike.png", width: 50,),
                            ),


                        ]
                                ),
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
               ),
                  ],


            ),
              ),
        ),
        );



  }
}



