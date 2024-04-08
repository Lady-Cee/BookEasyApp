import 'package:book_easy/features/renter/verification_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'confirm_verification.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return VerificationPage();
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Center(child: Text("Verification", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left:16.0, right: 16, top:48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Verify Your Phone Number", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
              Text("Please enter your phone number for veriffiction purpose.", style: TextStyle(fontWeight: FontWeight.bold),),

              SizedBox(height: 36),

              Text("Phone Number",  style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              SizedBox(height: 12,),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Enter your phone number",
                  filled: true,
                  fillColor: Colors.white70,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide(
                      width: 1,
                      color: Colors.black12,
                    ), // Remove outline border
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  hintStyle: TextStyle(color: Colors.black38),
                ),
                // onChanged: (newText){
                //   fullName = newText;
                // },
              ),

              SizedBox(height: 56),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, ConfirmVerification.route());
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
                            Text("Send Code", style: TextStyle(color: Colors.white, fontSize: 18),),
                            // SizedBox(width: 10),
                            // Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white,),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 350),
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
