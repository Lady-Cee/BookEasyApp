import 'package:book_easy/features/reset_password/reset_password_page.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Center(child: Text("Forgot Password", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),),
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
                        Navigator.push(context, ResetPasswordPage.route());
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
