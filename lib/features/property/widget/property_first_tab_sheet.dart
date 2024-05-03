import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'landlord_agent_location.dart';

class PropertyFirstTabSheet extends StatelessWidget {
  const PropertyFirstTabSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              Navigator.push(context, LandlordAgentLocation.route());
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
              Navigator.push(context, LandlordAgentLocation.route());
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
}