import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/home_page.dart';
import '../login/login_page.dart';

class ConfirmVerification extends StatefulWidget {
  const ConfirmVerification({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return ConfirmVerification();
  });

  @override
  State<ConfirmVerification> createState() => _ConfirmVerification();
}

class _ConfirmVerification extends State<ConfirmVerification> {
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
              SizedBox(height: 20),
              Text("We've sent a code to 090234***21", style: TextStyle(fontWeight: FontWeight.bold),),

              SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "8",
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder( // Define border appearance
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.black12,
                          ), // Remove outline border
                          borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                        hintStyle: TextStyle(color: Colors.black38, fontSize: 20),
                      ),
                      // onChanged: (newText){
                      //   fullName = newText;
                      // },
                    ),
                  ),

                  Container(
                    height: 70,
                    width: 70,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "4",
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder( // Define border appearance
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.black12,
                          ), // Remove outline border
                          borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                        hintStyle: TextStyle(color: Colors.black38, fontSize: 20),
                      ),
                      // onChanged: (newText){
                      //   fullName = newText;
                      // },
                    ),
                  ),


                  Container(
                    height: 70,
                    width: 70,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "1",
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder( // Define border appearance
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.black12,
                          ), // Remove outline border
                          borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                        hintStyle: TextStyle(color: Colors.black38, fontSize: 20),
                      ),
                      // onChanged: (newText){
                      //   fullName = newText;
                      // },
                    ),
                  ),


                  Container(
                    height: 70,
                    width: 70,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "8",
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder( // Define border appearance
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.black12,
                          ), // Remove outline border
                          borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                        hintStyle: TextStyle(color: Colors.black38, fontSize: 20),
                      ),
                      // onChanged: (newText){
                      //   fullName = newText;
                      // },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 56),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        showDialog(
                            context: context,
                            builder: (context){
                         return AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("assets/home/badge.png", color: Colors.green.shade700),
                              SizedBox(height: 8),
                              Text("Verification Successful", style: TextStyle(fontSize: 24),),
                              SizedBox(height: 8),
                              Text("Your Phone has been verified!", style: TextStyle(fontSize: 16),),
                            ],
                          ),
                           actions: [
                             TextButton(
                                 onPressed: () {
                                   //Navigator.pop(context);
                                   Navigator.pushReplacement(context, HomePage.route());
                                 },
                                 child: Text("OK"),
                             ),
                           ],
                          );
                            },
                        );
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
                            Text("Verify", style: TextStyle(color: Colors.white, fontSize: 18),),
                            // SizedBox(width: 10),
                            // Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white,),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 380),

              //  SizedBox(height: 4,),
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
