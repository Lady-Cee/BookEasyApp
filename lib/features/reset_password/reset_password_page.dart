import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login/login_page.dart';

class ResetPasswordPage extends StatefulWidget {
  final String resetcode; // Declare the resetcode parameter

  //const ResetPasswordPage({super.key});
  const ResetPasswordPage({Key? key, required this.resetcode}) : super(key: key); // Update the constructor

  //
  // static route() => MaterialPageRoute(builder: (context){
  //   return ResetPasswordPage();
  // });
  static Route<dynamic> route(String resetCode) {
    // Update the route method to accept the resetCode parameter
    return MaterialPageRoute(builder: (context) {
      return ResetPasswordPage(
          resetcode: resetCode); // Pass the resetCode parameter to the ResetPasswordPage constructor
    });
  }

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Center(child: Text("Reset Password", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left:16.0, right: 16, top:48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Kindly check your email", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
              Text("We've sent a code to your email address", style: TextStyle(fontWeight: FontWeight.bold),),

              SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Display the digits of resetcode parameter in each TextField
                  for (int i = 0; i < widget.resetcode.length; i++)
              Container(
                height: 70,
                width: 70,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                   // hintText: "8",
                    hintText: widget.resetcode[i],
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

              // Container(
              //   height: 70,
              //   width: 70,
              //   child: TextField(
              //     keyboardType: TextInputType.number,
              //     decoration: InputDecoration(
              //       hintText: "4",
              //       filled: true,
              //       fillColor: Colors.white70,
              //       border: OutlineInputBorder( // Define border appearance
              //         borderSide: BorderSide(
              //           width: 1,
              //           color: Colors.black12,
              //         ), // Remove outline border
              //         borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
              //       ),
              //       contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              //       hintStyle: TextStyle(color: Colors.black38, fontSize: 20),
              //     ),
              //     // onChanged: (newText){
              //     //   fullName = newText;
              //     // },
              //   ),
              // ),
              //
              //
              //     Container(
              //       height: 70,
              //       width: 70,
              //       child: TextField(
              //         keyboardType: TextInputType.number,
              //         decoration: InputDecoration(
              //           hintText: "1",
              //           filled: true,
              //           fillColor: Colors.white70,
              //           border: OutlineInputBorder( // Define border appearance
              //             borderSide: BorderSide(
              //               width: 1,
              //               color: Colors.black12,
              //             ), // Remove outline border
              //             borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
              //           ),
              //           contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              //           hintStyle: TextStyle(color: Colors.black38, fontSize: 20),
              //         ),
              //         // onChanged: (newText){
              //         //   fullName = newText;
              //         // },
              //       ),
              //     ),
              //
              //
              // Container(
              //   height: 70,
              //   width: 70,
              //   child: TextField(
              //     keyboardType: TextInputType.number,
              //     decoration: InputDecoration(
              //       hintText: "8",
              //       filled: true,
              //       fillColor: Colors.white70,
              //       border: OutlineInputBorder( // Define border appearance
              //         borderSide: BorderSide(
              //           width: 1,
              //           color: Colors.black12,
              //         ), // Remove outline border
              //         borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
              //       ),
              //       contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              //       hintStyle: TextStyle(color: Colors.black38, fontSize: 20),
              //     ),
              //     // onChanged: (newText){
              //     //   fullName = newText;
              //     // },
              //   ),
              // ),
                ],
              ),
              SizedBox(height: 56),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, LoginPage.route());
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
