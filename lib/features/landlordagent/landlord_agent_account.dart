import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'landlord_agent_verification.dart';

class LandlordAgentAccount extends StatelessWidget {
  const LandlordAgentAccount({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return LandlordAgentAccount();
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
        child: Container(
        padding: const EdgeInsets.all(16.0),
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Add your info", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),


                SizedBox(height: 36),

                  TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Adam",
                  hintText: "Enter your first name ",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide(
                      width: 2,
                      color:Colors.black,
                    ), // Remove outline border
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  hintStyle: TextStyle(color: Colors.black38, fontSize: 24),
                    labelStyle: TextStyle(color: Colors.black38, fontSize: 24),
                  ),
                  // onChanged: (newText){
                  //   fullName = newText;
                  // },
                ),
                  SizedBox(height: 20,),
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: "Yakubu",
                      hintText: "Enter your surname",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder( // Define border appearance
                        borderSide: BorderSide(
                          width: 2,
                          color:Colors.black,
                        ), // Remove outline border
                        borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 24),
                      labelStyle: TextStyle(color: Colors.black38, fontSize: 24),
                    ),
                    // onChanged: (newText){
                    //   fullName = newText;
                    // },
                  ),
                  Text("Make sure it matches the name on your government issued ID",
                  style: TextStyle(color: Colors.black54),),
                  SizedBox(height: 20,),
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: "090765478",
                      hintText: "Enter your phone number ",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder( // Define border appearance
                        borderSide: BorderSide(
                          width: 2,
                          color:Colors.black,
                        ), // Remove outline border
                        borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      hintStyle: TextStyle(color: Colors.black38, fontSize: 24),
                      labelStyle: TextStyle(color: Colors.black38, fontSize: 24),
                    ),
                    // onChanged: (newText){
                    //   fullName = newText;
                    // },
                  ),
                  SizedBox(height: 16),

                  Text.rich(
                    TextSpan(
                      text: 'By selecting ',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                      children: [
                        TextSpan(
                          text: 'Agree and Continue',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18), // Make "Agree and Continue" bold
                        ),
                        TextSpan(
                          text: ', I agree to BookEasy\'s Terms of Service, Payment Terms of Service and Privacy Policy',
                        style: TextStyle(fontSize: 16),),
                      ],
                    ),
                  ),
          SizedBox(height: 140,),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(context, LandlordAgentVerification.route());
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
                        Text("Agree and Continue", style: TextStyle(color: Colors.white, fontSize: 18),),
                        SizedBox(width: 10),
                     //   Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white,),

                      ],
                    ),
                  ),
                ),
              ),
                ],
        ),

                  SizedBox(height: 30,),
                  Center(
                    child: Image.asset('assets/onboarding1/line.png',
                      width: 200,
                      height: 5,),
                  ),
          ],
    ),

        ),
    ),
    );
  }
}
