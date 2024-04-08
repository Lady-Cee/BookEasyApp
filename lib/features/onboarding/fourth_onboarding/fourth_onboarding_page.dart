import 'package:book_easy/features/landlordagent/landlord_agent_account.dart';
import 'package:book_easy/features/renter/renters_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../location/location_page.dart';
import '../../signup/signup_page.dart';

class FourthOnboardingPage extends StatefulWidget {
  const FourthOnboardingPage({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return FourthOnboardingPage();
  });

  @override
  State<FourthOnboardingPage> createState() => _FourthOnboardingPageState();
}

class _FourthOnboardingPageState extends State<FourthOnboardingPage> {
  bool isRenterSelected = false;
  bool isAgentSelected = false;

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      // bottom: true,
      // minimum: EdgeInsets.only(bottom:50),
      child: Scaffold(
        body: Stack(
          children: [
               Container(
                decoration: BoxDecoration(
                    image:DecorationImage(
                      image: AssetImage('assets/onboarding4/house4.png'),
                      fit: BoxFit.contain,
                    )
                ),
                // child: Assets.onboarding1.house1.image(),
              ),

                    Positioned(
                      top: 70,
                      left: 120,
                      right: 120,
                      child: Container(
                        child: Image.asset("assets/splash/logo_blue.png", ),
                      ),
                    ),

                Positioned(
                // right: 15,
                      bottom: 1,
                      child: Container(
                      width: MediaQuery.of(context).size.width,
                      height:250,
                      decoration: BoxDecoration(
                          color:Colors.white,
                      borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                        child: Padding(
                          padding: const EdgeInsets.only(top:16.0),
                          child: Column(
                            children: [
                              Text("What would you use the App for?", style: TextStyle(fontSize: 16),),
                             SizedBox(height: 5,),
                              Container(
                                 height: 1,
                               width: 300,
                               color: Colors.grey,
                             ),

                              SizedBox(height: 10,),
                              Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: isRenterSelected,
                                            onChanged: (bool? value) {
                                              setState(() {
                                               isRenterSelected = value ?? false;
                                               if (isRenterSelected) {
                                                 isAgentSelected = false; // Unselect Agent/LandLord if Renter is selected
                                               }
                                              });

                                            },
                                           // checkColor: Colors.grey,
                                          ),
                                          //Image.asset("assets/onboarding4/circle.png", width: 30, height: 30,),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Text("Renter"),
                                  ],
                                ),

                              Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: isAgentSelected,
                                            onChanged: (bool? value) {
                                                setState(() {
                                                  isAgentSelected = value ?? false;
                                                  isAgentSelected = value ?? false; // Update isAgentSelected based on the new value
                                                  if (isAgentSelected) {
                                                    isRenterSelected = false; // Unselect Renter if Agent/LandLord is selected
                                                  }
                                                });
                                            },
                                           // checkColor: Colors.grey,
                                          ),
                                        ],
                                      ),
                                      //Image.asset("assets/onboarding4/circle.png", width: 30, height: 30,),
                                    ),
                                    SizedBox(width: 5,),
                                    Text("Agent/ LandLord"),
                                  ],
                                ),

                              ]

                          ),
                        ),
                 ),
                ),
                        Positioned(
                          bottom: 10,
                          left:15,
                          right: 15,
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  if (isRenterSelected){
                                    Navigator.push(context, RentersAccount.route());
                                  } else if (isAgentSelected ){
                                    Navigator.push(context, LandlordAgentAccount.route());
                                  }

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
                                      Text("Continue", style: TextStyle(color: Colors.white, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text("You can change your preferenes on your profile")
                            ],
                          ),
                        ),

            // Positioned(
            //   bottom: 250,
            //   left: 20,
            //   right: 200,
            //   child: Container(
            //     child: Image.asset("assets/onboarding2/house2.png", ),
            //   ),
            // ),
            // Positioned(
            //   top: 30,
            //   right: 20,
            //   left: 200,
            //   child: Container(
            //     child: Image.asset("assets/onboarding3/pix2.png", ),
            //   ),
            // ),
            // Positioned(
            //   bottom: 250,
            //   right: 20,
            //   left: 200,
            //   child: Container(
            //     child: Image.asset("assets/onboarding3/pix3.png", ),
            //   ),
            // ),
            // Positioned(
            //   bottom: 120,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 50.0),
            //     child: Container(
            //       child: Center(
            //         child: Column(
            //           children: [
            //             Text("Say goodbye to complicated booking", style: TextStyle(color: Colors.black38, fontSize: 16), ),
            //             Text("processes. Secure your preferred", style: TextStyle(color: Colors.black38, fontSize: 16), ),
            //             Text("property with ease.", style: TextStyle(color: Colors.black38, fontSize: 16), ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // Positioned(
            //   bottom: 30,
            //   left:15,
            //   right: 15,
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //       backgroundColor: Colors.blue.shade900,
            //     ),
            //     child: Padding(
            //       padding: const EdgeInsets.all(12.0),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text("Start Booking", style: TextStyle(color: Colors.white, fontSize: 18),),
            //           SizedBox(width: 10),
            //           Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white,),
            //
            //         ],
            //       ),
            //     ),
            //   ),
            // ),


          ],
        ),
      ),
    );
  }
}
