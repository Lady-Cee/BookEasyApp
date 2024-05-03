import 'dart:math';

import 'package:book_easy/features/reset_password/password_reset_to_update.dart';
import 'package:book_easy/features/reset_password/reset_password_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login/login_page.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return ForgotPasswordPage();
  });

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}
class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  String emailAddress ="";
  late String resetCode; // Declare resetCode variable

  void sendPasswordResetEmail() async {
    // Generate a random 4-digit code
    String resetCode = _generateResetCode();

    try {
      // Send the reset code to the user's email
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress);
      // Show a confirmation message to the user
      ScaffoldMessenger
      .of(context)
      .showSnackBar(SnackBar(content: Text("Password reset email sent. Check your inbox for the reset code")));
      
      // //Navigate to reset password page after sending the email
      // Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //         builder: (context) => ResetPasswordPage(resetCode),
      //     ),
      // );
      Navigator.push(context, PasswordResetToUpdate.route());

    } catch (e) {
      // Handle errors here
      print('Error sending password reset email: $e');
    }
  }
  // Function to generate a random 4-digit code

  String _generateResetCode(){
    Random random = Random();
    return (1000 + random.nextInt(9000)).toString(); // Generates a random number between 1000 and 9999
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left:16.0, right: 16, top:48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Forgot Password?", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
              Text("Dont worry! It happens. Please enter the email associated with your account.", style: TextStyle(fontWeight: FontWeight.bold),),

              SizedBox(height: 36),

              Text("Email Address",  style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              SizedBox(height: 12,),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Enter your email address",
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
                 onChanged: (newText){
                   emailAddress = newText;
                 },
              ),

              SizedBox(height: 56),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: sendPasswordResetEmail,
                      //     () {
                      //  // Navigator.push(context, ResetPasswordPage.route());
                      //
                      // },
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
                            Text("Check your email", style: TextStyle(color: Colors.white, fontSize: 18),),
                            // SizedBox(width: 10),
                            // Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white,),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 304),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Remember password", style: TextStyle(fontSize: 12)),
                  const SizedBox(width: 5),
                  TextButton(
                    onPressed: ()
                    {
                      Navigator.push(context, LoginPage.route());
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold,),
                    ),
                  ),
                ],
              ),
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
