import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PropertyThirdTab extends StatelessWidget {
  const PropertyThirdTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text("3. Upload pictures of the proprty", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),),
          Text("Select all amenities applicable, give your property a title and add description", style: TextStyle(color: Colors.blueGrey),),
          SizedBox(height: 10,),
          Text("Add Photo", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

          SizedBox(height: 20,),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.1,
                    decoration: BoxDecoration(
                      // color: Colors.blue,
                      borderRadius:  BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 2),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row (
                          children: [
                            Image.asset("assets/home/download.png", width: 30,),
                        SizedBox(width:20),
                        Text("Upload Photos", style: TextStyle(fontSize:20, color: Colors.black),),
                    ],
                        ),
                      ),

                  ),
            ]
           ),
              SizedBox(height: 30,),
              Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: MediaQuery.of(context).size.height*0.1,
                      decoration: BoxDecoration(
                        // color: Colors.blue,
                        borderRadius:  BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 2),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row (
                          children: [
                            Image.asset("assets/home/camera.png", width: 30,),
                            SizedBox(width:20),
                            Text("Take new Photos", style: TextStyle(fontSize:20, color: Colors.black),),
                          ],
                        ),
                      ),

                    ),
                  ]
              ),
        ],
    ),




          SizedBox(height: 220,),

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



    );
  }
}
