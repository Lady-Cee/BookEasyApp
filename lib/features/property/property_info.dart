import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class PropertyInfo extends StatelessWidget {
  const PropertyInfo({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return PropertyInfo();
  });

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

              //SizedBox(height: 10),
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      //isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: [
                        Tab( text: "",),
                        Tab(text: "",),
                        Tab(text:""),
                      ],
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 700,
                      child: TabBarView(
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                            Text("1. Tell us about your property:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),),
                            Text("Share information like location, type of property, number of bedrooms and all", style: TextStyle(color: Colors.blueGrey),),
                            SizedBox(height: 10,),
                                Text("Property Type", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Column(
                                  children: [
                                    Row(
                               children: [
                                     Container(
                                       width: 120,
                                       height: 50,
                                       decoration: BoxDecoration(
                                         color: Colors.blue,
                                           borderRadius:  BorderRadius.circular(10),
                                         border: Border.all(color: Colors.blue, width: 2),
                                         ),
                                       child: Center(
                                         child: Text("Bungalow", style: TextStyle(fontSize:20, color: Colors.white),),
                                       ),
                                     ),
                                     SizedBox(width: 15,),
                                     Container(
                                       width: 85,
                                       height: 50,
                                       decoration: BoxDecoration(
                                         //color: Colors.blue,
                                         borderRadius:  BorderRadius.circular(10),
                                         border: Border.all(color: Colors.grey, width: 2),
                                       ),
                                       child: Center(
                                         child: Text("Duplex", style: TextStyle(fontSize:20,),),
                                       ),
                                     ),
                                     SizedBox(width: 15,),
                                     Container(
                                       width: 70,
                                       height: 50,
                                       decoration: BoxDecoration(
                                         //color: Colors.blue,
                                         borderRadius:  BorderRadius.circular(10),
                                         border: Border.all(color: Colors.grey, width: 2),
                                       ),
                                       child: Center(
                                         child: Text("Flat", style: TextStyle(fontSize:20,),),
                                       ),
                                     ),
                               ],

                             ),
                                    SizedBox(height: 15,),
                                    Row(
                                      children: [
                                        Container(
                                          width: 130,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            //color: Colors.blue,
                                            borderRadius:  BorderRadius.circular(10),
                                            border: Border.all(color: Colors.grey, width: 2),
                                          ),
                                          child: Center(
                                            child: Text("Apartment", style: TextStyle(fontSize:20,),),
                                          ),
                                        ),
                                        SizedBox(width: 15,),
                                        Container(
                                          width: 70,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            //color: Colors.blue,
                                            borderRadius:  BorderRadius.circular(10),
                                            border: Border.all(color: Colors.grey, width: 2),
                                          ),
                                          child: Center(
                                            child: Text("Tent", style: TextStyle(fontSize:20,),),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Text("Location", style: TextStyle(fontSize: 20,),),

                                SizedBox(height: 20,),
                                Container(
                                  width: 250,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    //color: Colors.blue,
                                    borderRadius:  BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey, width: 2),
                                  ),
                                  child: Row(
                                    children:[
                                     Padding(
                                       padding: const EdgeInsets.only(left:12.0),
                                       child: Image.asset("assets/home/locationred.png", height:24, width:24),
                                     ),
                                     SizedBox(width:10),
                                      Text("Use current location", style: TextStyle(fontSize:20,),),
                                 ],
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Text("What's the property for?", style: TextStyle(fontSize: 20,),),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Container(
                                      width: 90,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:  BorderRadius.circular(10),
                                        border: Border.all(color: Colors.blue, width: 2),
                                      ),
                                      child: Center(
                                        child: Text("For rent", style: TextStyle(color: Colors.white,fontSize:20,),),
                                      ),
                                    ),
                                    SizedBox(width: 15,),
                                    Container(
                                      width: 90,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        //color: Colors.blue,
                                        borderRadius:  BorderRadius.circular(10),
                                        border: Border.all(color: Colors.grey, width: 2),
                                      ),
                                      child: Center(
                                        child: Text("For Sale", style: TextStyle(fontSize:20,),),
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 32,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width:80,
                                        height:50,
                                        decoration: BoxDecoration(
                                          color:Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Center(child: Text("Back", style: TextStyle(color: Colors.blue),)),
                                      ),
                                    ),

                                    GestureDetector(
                                      onTap: () {
                                        //Navigator.push(context, VerificationPage.route());
                                      showModalBottomSheet(
                                          context: context,
                                          showDragHandle: true,
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(24.0),
                                            topRight: Radius.circular(24.0),
                                          ),
                                        ),
                                        //isScrollControlled: true,
                                        constraints: BoxConstraints.tight(
                                          Size(
                                            MediaQuery.of(context).size.width,
                                          MediaQuery.of(context).size.height * 0.45,
                                        ),
                                        ),
                                        builder: (ctx) {
                                            return Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Image.asset("assets/home/locationred.png", width: 24,),
                                                SizedBox(height: 10,),
                                                  Text("Allow BookEasy to access this ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                                                Text("device's location? ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                                                  SizedBox(height: 20,),
                                                Container(
                                                  width: 300,
                                                  height:50,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      //Navigator.push(context, SecondOnboardingPage.route());
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                      ),
                                                      backgroundColor: Colors.blue.shade900,
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(12.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Text("While Using the App", style: TextStyle(color: Colors.white, fontSize: 18),),
                                                          SizedBox(width: 10),
                                                          Icon(Icons.arrow_forward, size: 20, color: Colors.white,),

                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                  SizedBox(height: 20,),
                                                Container(
                                                  width: 250,
                                                  height:50,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      //Navigator.push(context, SecondOnboardingPage.route());
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                      ),
                                                      backgroundColor: Colors.blue.shade900,
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(12.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Text("Only this time", style: TextStyle(color: Colors.white, fontSize: 18),),
                                                          SizedBox(width: 10),
                                                          Icon(Icons.arrow_forward, size: 20, color: Colors.white,),

                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 20,),
                                                Container(
                                                  width: 200,
                                                  height:50,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      //Navigator.push(context, SecondOnboardingPage.route());
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(12),
                                                      ),
                                                      backgroundColor: Colors.blue.shade900,
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(12.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Text("Don't allow", style: TextStyle(color: Colors.white, fontSize: 18),),
                                                          SizedBox(width: 10),
                                                          Icon(Icons.arrow_forward, size: 20, color: Colors.white,),

                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),

                                              ],
                                            );
                                        }

                                          );
                                      },
                                      child: Container(
                                        width:80,
                                        height:50,
                                        decoration: BoxDecoration(
                                          color:Colors.blue.shade600,
                                          border: Border.all(
                                            color: Colors.blue,
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Center(child: Text("Next", style: TextStyle(color: Colors.white),)),
                                      ),
                                    ),
                                  ],
                                )

                              ],

                            ),



                    ),
                          Container(
                              child: Text("Duplex")
                          ),
                          Container(
                              child: Text("Apartment")
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


            ],

          ),
        ),
      ),
    );
  }
}
