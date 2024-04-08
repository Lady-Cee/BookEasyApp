import 'package:book_easy/features/forgot_password/forgot_password_page.dart';
import 'package:book_easy/features/home/home_page.dart';
import 'package:book_easy/features/location/location_page.dart';
import 'package:book_easy/features/signup/signup_page.dart';
import 'package:flutter/material.dart';

import '../onboarding/fourth_onboarding/fourth_onboarding_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return LoginPage();
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Back!", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
              Text("Please login to continue", style: TextStyle(fontWeight: FontWeight.bold),),

              SizedBox(height: 36),
              Text("Enter Name",  style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Enter name ",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide.none, // Remove outline border
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  hintStyle: TextStyle(color: Colors.black38),
                ),
                // onChanged: (newText){
                //   fullName = newText;
                // },
              ),


              SizedBox(height: 16),
              Text("Password",  style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "************** ",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide.none, // Remove outline border
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                  ),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.visibility),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  hintStyle: TextStyle(color: Colors.black38),
                ),
                // onChanged: (newText){
                //   fullName = newText;
                // },
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, ForgotPasswordPage.route());
                    },
                    child: Text("Forgot Password?", style:TextStyle(fontSize: 16) ),
                  ),
                ],
              ),
              SizedBox(height: 32),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, LocationPage.route());
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
                            Text("Next", style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(width: 10),
                            Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white,),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 44),

              Center(child: Text("Or", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/splash/google.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                  const SizedBox(width: 25),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/splash/apple.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                  const SizedBox(width: 25),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      "assets/splash/facebook.png",
                      width: 40,
                      height: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?", style: TextStyle(fontSize: 16)),
                  const SizedBox(width: 5),
                  TextButton(
                    onPressed: ()
                    {
                     Navigator.push(context, SignupPage.route());
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 150,),
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
