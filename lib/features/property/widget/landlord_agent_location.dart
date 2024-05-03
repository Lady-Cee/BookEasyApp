import 'package:book_easy/features/property/property_info.dart';
import 'package:book_easy/features/property/widget/property_second_tab.dart';
import 'package:flutter/material.dart';


class LandlordAgentLocation extends StatelessWidget {
  const LandlordAgentLocation({super.key});

  static route() => MaterialPageRoute(builder: (context) {
    return LandlordAgentLocation();
  });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Stack(
            children: [
            Container(
            decoration: BoxDecoration(
            image:DecorationImage(
            image: AssetImage('assets/home/locationmap.png'),
            fit: BoxFit.cover,
        )
    ),
    // child: Assets.onboarding1.house1.image(),
    ),
    Positioned(
    left:16,
    top:70,
    child: Container(
    height: 100,
    width: 300,
    child: TextField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
    hintText: "Enter your address ",
    filled: true,
    fillColor: Colors.grey.shade200,
    border: OutlineInputBorder( // Define border appearance
    borderSide: BorderSide.none, // Remove outline border
  borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
  ),
  prefixIcon: const Icon(Icons.location_on),
  suffixIcon: const Icon(Icons.keyboard_voice_rounded),
  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
  hintStyle: TextStyle(color: Colors.black38),
  ),
  // onChanged: (newText){
  //   fullName = newText;
  // },
  ),
  ),
  ),

  Positioned(
  top: 70,
  right:15,
  child: GestureDetector(
  onTap: () {},
  child: Image.asset("assets/home/filter.png", width: 50, height: 60,))
  ),


  Positioned(
  // right: 15,
  bottom: 1,
  child: Container(
  width: MediaQuery.of(context).size.width,
  height:150,
  decoration: BoxDecoration(
  color:Colors.white,
  borderRadius: BorderRadius.only(
  topLeft: Radius.circular(20),
  topRight: Radius.circular(20),
  ),
  ),
  child: Padding(
  padding: const EdgeInsets.only(top: 20.0),
  child: Center(
  child: Column(
  children: [
  Text("Lagos, mainland, Ikeja ", style: TextStyle(color: Colors.black38, fontSize: 18), ),
  // SizedBox(height: 4), // Add some space below the text
  Divider(
  color: Colors.black, // Change the color of the line if needed
  thickness: 0.1, // Set the thickness of the line
  ),
  ],
  ),
  ),
  ),

  ),

  ),

  Positioned(
  left: 16,
  bottom: 30,
  child: GestureDetector(
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
  child: Center(child: Text("Skip", style: TextStyle(color: Colors.blue),)),
  ),
  )
  ),

  Positioned(
        right: 16,
        bottom: 30,
        child: GestureDetector(
        onTap: () {
       // Navigator.push(context, PropertySecondTab.route());
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
  )
  ),

  ],
  ),
  );
  }
}
