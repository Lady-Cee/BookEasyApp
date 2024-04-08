import 'package:book_easy/features/onboarding/fourth_onboarding/fourth_onboarding_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../signup/signup_page.dart';

class ThirdOnboardingPage extends StatelessWidget {
  const ThirdOnboardingPage({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return ThirdOnboardingPage();
  });

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 30,
              left: 20,
              right: 200,
              child: Container(
                child: Image.asset("assets/onboarding3/pix1.png", ),
              ),
            ),
            Positioned(
              bottom: 250,
              left: 20,
              right: 200,
              child: Container(
                child: Image.asset("assets/onboarding2/house2.png", ),
              ),
            ),
            Positioned(
              top: 30,
              right: 20,
              left: 200,
              child: Container(
                child: Image.asset("assets/onboarding3/pix2.png", ),
              ),
            ),
            Positioned(
              bottom: 250,
              right: 20,
              left: 200,
              child: Container(
                child: Image.asset("assets/onboarding3/pix3.png", ),
              ),
            ),
          Positioned(
            bottom: 120,
            child: Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Container(
                child: Center(
                  child: Column(
                    children: [
                      Text("Say goodbye to complicated booking", style: TextStyle(color: Colors.black38, fontSize: 16), ),
                      Text("processes. Secure your preferred", style: TextStyle(color: Colors.black38, fontSize: 16), ),
                      Text("property with ease.", style: TextStyle(color: Colors.black38, fontSize: 16), ),
                    ],
                  ),
                ),
          ),
            ),
        ),
        Positioned(
            bottom: 30,
            left:15,
            right: 15,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, SignupPage.route());
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
                    Text("Get Started", style: TextStyle(color: Colors.white, fontSize: 18),),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white,),

                  ],
                ),
              ),
            ),
          ),


          ],
        ),
      ),
    );
  }
}
