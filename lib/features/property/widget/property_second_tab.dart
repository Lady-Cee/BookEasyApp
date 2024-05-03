//import 'dart:js';

import 'package:book_easy/features/property/widget/property_first_tab_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PropertySecondTab extends StatelessWidget {
  const PropertySecondTab({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return PropertySecondTab();
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text("2. Make your property stand out", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),),
            Text("Select all amenities applicable, give your property a title and add description", style: TextStyle(color: Colors.blueGrey),),
            SizedBox(height: 10,),
            Text("Amenities", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.2,
                      height: MediaQuery.of(context).size.height*0.07,
                      decoration: BoxDecoration(
                       // color: Colors.blue,
                        borderRadius:  BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 2),
                      ),
                      child: Center(
                        child: Text("Pool", style: TextStyle(fontSize:20, color: Colors.black),),
                      ),
                    ),
                    SizedBox(width: 25,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.25,
                      height: MediaQuery.of(context).size.height*0.07,
                      decoration: BoxDecoration(
                        //color: Colors.blue,
                        borderRadius:  BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 2),
                      ),
                      child: Center(
                        child: Text("Hot tube", style: TextStyle(fontSize:20,),),
                      ),
                    ),
                    SizedBox(width: 25,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.25,
                      height: MediaQuery.of(context).size.height*0.07,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius:  BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue, width: 2),
                      ),
                      child: Center(
                        child: Text("Water", style: TextStyle(fontSize:20,),),
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
                        color: Colors.blue,
                        borderRadius:  BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue, width: 2),
                      ),
                      child: Center(
                        child: Text("Security", style: TextStyle(fontSize:20,color: Colors.white),),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Container(
                      width: MediaQuery.of(context).size.width*0.55,
                      height: MediaQuery.of(context).size.height*0.07,
                      decoration: BoxDecoration(
                        //color: Colors.blue,
                        borderRadius:  BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 2),
                      ),
                      child: Center(
                        child: Text("Exercise equipment", style: TextStyle(fontSize:20,),),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Text("Property title", style: TextStyle(fontSize: 20,),),

            SizedBox(height: 20,),
              TextField(
                keyboardType: TextInputType.name,
                maxLines: 2,
                decoration: InputDecoration(
                 // hintText: "Fill in your property title ",
                  //filled: true,
                 // fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide(
                      width: 2, color: Colors.grey
                    ), // Remove outline border
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  hintStyle: TextStyle(color: Colors.black38),
                ),
                // onChanged: (newText){
                //   fullName = newText;
                // },
              ),

            Text("40 characters max", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 20,),

            Text("Description", style: TextStyle(fontSize: 20,),),

            SizedBox(height: 20,),
            TextField(
              keyboardType: TextInputType.name,
              maxLines: 7, // Allow multiple lines of text
             //  minLines: null,
             //  expands: true,
              decoration: InputDecoration(
                 hintText: "Write a clear and detailed description of your property ",
                //filled: true,
                // fillColor: Colors.grey.shade200,
                border: OutlineInputBorder( // Define border appearance
                  borderSide: BorderSide(
                      width: 2, color: Colors.grey
                  ), // Remove outline border
                  borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                hintStyle: TextStyle(color: Colors.black38),
              ),
              // onChanged: (newText){
              //   fullName = newText;
              // },
            ),
            SizedBox(height: 10,),
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
                    //  Navigator.push(context, PropertySecondTab.route());

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
                    child: Center(child: Text("SWIPE", style: TextStyle(color: Colors.white),)),
                  ),
                ),
              ],
            )

          ],

        ),



      ),
    );
  }
}
