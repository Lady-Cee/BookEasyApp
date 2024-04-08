// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class PropertyFirstTab extends StatelessWidget {
//   const PropertyFirstTab({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 700,
//       child: TabBarView(
//         children: [
//           Container(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children:[
//                 Text("1. Tell us about your property:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54),),
//                 Text("Share information like location, type of property, number of bedrooms and all", style: TextStyle(color: Colors.blueGrey),),
//                 SizedBox(height: 10,),
//                 Text("Property Type", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
//                 SizedBox(height: 10,),
//                 Column(
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           width: 120,
//                           height: 50,
//                           decoration: BoxDecoration(
//                             color: Colors.blue,
//                             borderRadius:  BorderRadius.circular(10),
//                             border: Border.all(color: Colors.blue, width: 2),
//                           ),
//                           child: Center(
//                             child: Text("Bungalow", style: TextStyle(fontSize:20, color: Colors.white),),
//                           ),
//                         ),
//                         SizedBox(width: 15,),
//                         Container(
//                           width: 85,
//                           height: 50,
//                           decoration: BoxDecoration(
//                             //color: Colors.blue,
//                             borderRadius:  BorderRadius.circular(10),
//                             border: Border.all(color: Colors.grey, width: 2),
//                           ),
//                           child: Center(
//                             child: Text("Duplex", style: TextStyle(fontSize:20,),),
//                           ),
//                         ),
//                         SizedBox(width: 15,),
//                         Container(
//                           width: 70,
//                           height: 50,
//                           decoration: BoxDecoration(
//                             //color: Colors.blue,
//                             borderRadius:  BorderRadius.circular(10),
//                             border: Border.all(color: Colors.grey, width: 2),
//                           ),
//                           child: Center(
//                             child: Text("Flat", style: TextStyle(fontSize:20,),),
//                           ),
//                         ),
//                       ],
//
//                     ),
//                     SizedBox(height: 15,),
//                     Row(
//                       children: [
//                         Container(
//                           width: 130,
//                           height: 50,
//                           decoration: BoxDecoration(
//                             //color: Colors.blue,
//                             borderRadius:  BorderRadius.circular(10),
//                             border: Border.all(color: Colors.grey, width: 2),
//                           ),
//                           child: Center(
//                             child: Text("Apartment", style: TextStyle(fontSize:20,),),
//                           ),
//                         ),
//                         SizedBox(width: 15,),
//                         Container(
//                           width: 70,
//                           height: 50,
//                           decoration: BoxDecoration(
//                             //color: Colors.blue,
//                             borderRadius:  BorderRadius.circular(10),
//                             border: Border.all(color: Colors.grey, width: 2),
//                           ),
//                           child: Center(
//                             child: Text("Tent", style: TextStyle(fontSize:20,),),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//                 SizedBox(height: 20,),
//                 Text("Location", style: TextStyle(fontSize: 20,),),
//
//                 SizedBox(height: 20,),
//                 Container(
//                   width: 250,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     //color: Colors.blue,
//                     borderRadius:  BorderRadius.circular(10),
//                     border: Border.all(color: Colors.grey, width: 2),
//                   ),
//                   child: Row(
//                     children:[
//                       Padding(
//                         padding: const EdgeInsets.only(left:12.0),
//                         child: Image.asset("assets/home/locationred.png", height:24, width:24),
//                       ),
//                       SizedBox(width:10),
//                       Text("Use current location", style: TextStyle(fontSize:20,),),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 20,),
//                 Text("What's the property for?", style: TextStyle(fontSize: 20,),),
//                 SizedBox(height: 20,),
//                 Row(
//                   children: [
//                     Container(
//                       width: 90,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         color: Colors.blue,
//                         borderRadius:  BorderRadius.circular(10),
//                         border: Border.all(color: Colors.blue, width: 2),
//                       ),
//                       child: Center(
//                         child: Text("For rent", style: TextStyle(color: Colors.white,fontSize:20,),),
//                       ),
//                     ),
//                     SizedBox(width: 15,),
//                     Container(
//                       width: 90,
//                       height: 50,
//                       decoration: BoxDecoration(
//                         //color: Colors.blue,
//                         borderRadius:  BorderRadius.circular(10),
//                         border: Border.all(color: Colors.grey, width: 2),
//                       ),
//                       child: Center(
//                         child: Text("For Sale", style: TextStyle(fontSize:20,),),
//                       ),
//                     ),
//                   ],
//                 ),
//
//                 SizedBox(height: 32,),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     GestureDetector(
//                       onTap: () {},
//                       child: Container(
//                         width:80,
//                         height:50,
//                         decoration: BoxDecoration(
//                           color:Colors.white,
//                           border: Border.all(
//                             color: Colors.blue,
//                             width: 2,
//                           ),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: Center(child: Text("Back", style: TextStyle(color: Colors.blue),)),
//                       ),
//                     ),
//
//                     GestureDetector(
//                       onTap: () {
//                         //Navigator.push(context, VerificationPage.route());
//                       },
//                       child: Container(
//                         width:80,
//                         height:50,
//                         decoration: BoxDecoration(
//                           color:Colors.blue.shade600,
//                           border: Border.all(
//                             color: Colors.blue,
//                             width: 2,
//                           ),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: Center(child: Text("Next", style: TextStyle(color: Colors.white),)),
//                       ),
//                     ),
//                   ],
//                 )
//
//               ],
//
//             ),
//
//
//
//           ),
//
//         ],
//       ),
//     );
//   }
// }
