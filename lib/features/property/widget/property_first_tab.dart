import 'package:book_easy/features/property/widget/property_first_tab_sheet.dart';
import 'package:book_easy/features/property/widget/property_second_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'landlord_agent_location.dart';

class PropertyFirstTab extends StatelessWidget {
  const PropertyFirstTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.07,
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
                    width: MediaQuery.of(context).size.width*0.25,
                    height: MediaQuery.of(context).size.height*0.07,
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
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.height*0.07,
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
                    width: MediaQuery.of(context).size.width*0.3,
                    height: MediaQuery.of(context).size.height*0.07,
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
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.height*0.07,
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
          GestureDetector(
            onTap: (){
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
            return PropertyFirstTabSheet();
          }

      );
    },
            child: Container(
              width: MediaQuery.of(context).size.width*0.68,
              height: MediaQuery.of(context).size.height*0.07,
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
          ),
          SizedBox(height: 20,),
          Text("What's the property for?", style: TextStyle(fontSize: 20,),),
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.25,
                height: MediaQuery.of(context).size.height*0.07,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius:  BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue, width: 2),
                ),
                child: Center(
                  child: Text("For rent", style: TextStyle(color: Colors.white,fontSize:20,),),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.05,),
              Container(
                width: MediaQuery.of(context).size.width*0.25,
                height: MediaQuery.of(context).size.height*0.07,
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

          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width*0.2,
                  height: MediaQuery.of(context).size.height*0.07,
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
               //  Navigator.push(context, PropertySecondTab.route());
                  // showModalBottomSheet(
                  //     context: context,
                  //     showDragHandle: true,
                  //     backgroundColor: Colors.white,
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.only(
                  //         topLeft: Radius.circular(24.0),
                  //         topRight: Radius.circular(24.0),
                  //       ),
                  //     ),
                  //     //isScrollControlled: true,
                  //     constraints: BoxConstraints.tight(
                  //       Size(
                  //         MediaQuery.of(context).size.width,
                  //         MediaQuery.of(context).size.height * 0.45,
                  //       ),
                  //     ),
                  //     builder: (ctx) {
                  //       return PropertyFirstTabSheet();
                  //     }
                  //
                  // );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.2,
                  height: MediaQuery.of(context).size.height*0.07,
                  decoration: BoxDecoration(
                    color:Colors.blue.shade600,
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(child: Text("SWIPE", style: TextStyle(color: Colors.white),)),
                ),
              ),
            ],
          )

        ],

      ),



    );
  }
}

