import 'package:book_easy/features/property/widget/landlord_agent_location.dart';
import 'package:book_easy/features/property/widget/property_first_tab.dart';
import 'package:book_easy/features/property/widget/property_second_tab.dart';
import 'package:book_easy/features/property/widget/property_third_tab.dart';
import 'package:flutter/material.dart';

//import '../../gen/assets.gen.dart';

class PropertyInfo extends StatefulWidget {
  const PropertyInfo({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return PropertyInfo();
  });

  @override
  State<PropertyInfo> createState() => _PropertyInfoState();
}

class _PropertyInfoState extends State<PropertyInfo> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left:16.0, right: 16, top:4),
          child: Column(
            children: [
              Text("To get started, you'd have to tell us about the following:", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),

              SizedBox(height: 10),
              // DefaultTabController(
              //   length: 3,
              //   child: Column(
              //     children: [
              //       TabBar(
              //         //isScrollable: true,
              //         indicatorSize: TabBarIndicatorSize.tab,
              //         tabs: [
              //           Tab( text: "",),
              //           Tab(text: "",),
              //           Tab(text:""),
              //         ],
              //       ),
              //       SizedBox(height: 10),
              //       SizedBox(
              //         height: 700,
              //         child: TabBarView(
              //           children: [
              //             PropertyFirstTab(),
              //             PropertySecondTab(),
              //             Container(
              //                 child: Text("Duplex")
              //             ),
              //
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

                DefaultTabController(
                    length: 3,
                    child: Builder(
                      builder: (context) {
                        return Column(
                        children: [
                          Container(
                            height: 6,
                          // width: 30,
                           // color: Colors.yellow,
                            child: Row(
                              children: [
                                for (int i = 0; i < 3; i++)
                                  Expanded(
                                      child: InkWell(
                                        onTap:  () {
                                          setState(() {
                                            DefaultTabController.of(context).index = i;
                                          });
                                        },
                                        child: Container(
                                          height: double.infinity,
                                          color: DefaultTabController.of(context).index == i
                                            ? Colors.blue.shade900
                                              : Colors.grey,
                                        ),
                                      )
                                  ),
                               // SizedBox(width: 20,),
                              ],
                            ),
                          ),
                          //
                          // TabPageSelector(
                          //   selectedColor: Colors.red,
                          //   color: Colors.orange,
                          // ),
                          SizedBox(height:20),
                          SizedBox(
                            height: 600,
                            child: PageView(
                              onPageChanged: (index){
                                setState(() {
                                  DefaultTabController.of(context).index = index;
                                });
                              },

                              children: [
                                PropertyFirstTab(),
                                PropertySecondTab(),
                                PropertyThirdTab(),
                              ],
                            ),
                          ),
                        ]
                        );
                }
                    )
                )
            ],

          ),
        ),
      ),
    );
  }
}


