import 'package:book_easy/features/home/home_page.dart';
import 'package:book_easy/features/login/login_page.dart';
import 'package:book_easy/features/onboarding/fourth_onboarding/fourth_onboarding_page.dart';
import 'package:book_easy/features/signup/bloc/signup_bloc.dart';
import 'package:book_easy/features/signup/bloc/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../landlordagent/landlord_agent_account.dart';
import '../property/property_info.dart';
import '../renter/renters_account.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return SignupPage();
  });

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String fullName = "";
  String emailAddress ="";
  String password ="";
  String confirmPassword = "";
  String role ="";

  bool _isPassWordVisible = false;
  bool _isPassWordVisible1 = false;

  bool isRenterSelected = false;
  bool isAgentSelected = false;

  @override
  Widget build(BuildContext context) {
    SignupBloc bloc = context.watch<SignupBloc>();
    SignupState state = bloc.state;

    switch(state.signupStatus){
      case SignupStatus.Initial:
        break;
      case SignupStatus.Processing:
        break;
      case SignupStatus.Successful:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          Navigator.pushReplacement(
              context,
            MaterialPageRoute(
                builder: (context){
                  if (isRenterSelected) {
                    return RentersAccount();
                  } else {
                    return LandlordAgentAccount();
                  }
          },
            ),
            //FourthOnboardingPage.route(),
          );
          bloc.reset();
        });
        break;
      case SignupStatus.Error:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
          .of(context)
              .showSnackBar(SnackBar(content: Text("There is an error")));
        });
        break;
    }
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text("Create Account", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                 onChanged: (newText){
                   fullName = newText;
                 },
              ),

              SizedBox(height: 8),
              Text("Email",  style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "example@gmail.com ",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide.none, // Remove outline border
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  hintStyle: TextStyle(color: Colors.black38),
                ),
                onChanged: (newText){
                   emailAddress = newText;
                 },
              ),

               SizedBox(height: 16),
              Text("Password",  style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "************** ",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide.none, // Remove outline border
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                  ),
                  prefixIcon: const Icon(Icons.lock),
                  //suffixIcon: const Icon(Icons.visibility),
                 suffixIcon: IconButton(
                   icon: _isPassWordVisible ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                   onPressed: () {
                     setState(() {
                       _isPassWordVisible = !_isPassWordVisible;
                     });
                   },
                 ),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  hintStyle: TextStyle(color: Colors.black38),
                ),
                 obscureText: !_isPassWordVisible,
                 onChanged: (newText){
                   password = newText;
                 },
               // obscureText: true,

              ),
              SizedBox(height: 16),
              Text("Confirm Password",  style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "************** ",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide.none, // Remove outline border
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                  ),
                  prefixIcon: const Icon(Icons.lock),
                  //suffixIcon: const Icon(Icons.visibility),
                  suffixIcon: IconButton(
                    icon: _isPassWordVisible1 ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isPassWordVisible1 = !_isPassWordVisible1;
                      });
                    },
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  hintStyle: TextStyle(color: Colors.black38),
                ),
                obscureText: !_isPassWordVisible1,
                onChanged: (newText){
                  confirmPassword = newText;
                },
                // obscureText: true,

              ),
              //SizedBox(height: 16),
              // Padding(
              //   padding: const EdgeInsets.all(4),
              //   child: Row(
              //     children: [
              //       Checkbox(
              //         value: false,
              //           onChanged: (bool? value) {
              //
              //           },
              //           checkColor: Colors.grey,
              //       ),
              //        // Text("Remember Password",  style: TextStyle(fontSize:18, )),
              //     ],
              //   ),
              // ),

              SizedBox(height: MediaQuery.of(context).size.height*0.04,),
              Center(
                child: Text("What would you use the App for?", style: TextStyle(fontSize: 16, color:Colors.blue.shade900),
                textAlign: TextAlign.center,),
              ),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
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

                      SizedBox(width: 5,),
                      Text("Renter", style: TextStyle(fontSize:18, fontWeight: FontWeight.bold),),
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
                      Text("Agent/ LandLord",  style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
                    ],
                  ),

                ],
              ),

              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: state.signupStatus == SignupStatus.Processing ? null : () {
                        if(_isUserInputValid()){
                          bloc.registerUser(
                              fullName: fullName,
                              emailAddress: emailAddress,
                              password: password,
                              confirmPassword: confirmPassword,
                               role: isRenterSelected ? 'Renter' : 'Agent/LandLord',
                          );

                        }
                        //Navigator.push(context, FourthOnboardingPage.route());
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 16.0),
                        backgroundColor: Colors.blue.shade900,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if(state.signupStatus == SignupStatus.Processing)
                            CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          const SizedBox(width: 20),
                          const Text(
                            "SIGN UP",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                      "By signing up, you acknowledge that you have read, ", style: TextStyle(fontSize: 13, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                        children: <TextSpan>[
                            TextSpan(
                              text: "understood and agree to BookEasy's",
                            ),
                          TextSpan(
                            text: " Terms and Conditions",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                          TextSpan(
                            text: ' and ',
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),
                          ),
                        ]
                      ),
                    ),
                ],
                  ),
              ),
              const SizedBox(height: 10),
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
                  const Text("Already Have Account?", style: TextStyle(fontSize: 16)),
                  const SizedBox(width: 5),
                  TextButton(
                    onPressed: () {
                     Navigator.push(context, LoginPage.route());
                    },
                    child: const Text(
                      "Log in",
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
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

  bool _isUserInputValid() {
    String errorMessage = "";

    // Regular expression for email validation
    RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(fullName.isEmpty || emailAddress.isEmpty || password.isEmpty || confirmPassword.isEmpty){
      errorMessage = "Please fill in your complete details";
    }
     else if (!emailRegex.hasMatch(emailAddress)){
      errorMessage = "Please enter a valid email address";
     }
     //else if (emailAddress.isEmpty){
    //   errorMessage = "Please fill in your email address";
    // }
    else if(password.isEmpty || password.length < 8){
      errorMessage = "Enter a strong password with at least 8 characters";
    }else if(password != confirmPassword){
      errorMessage = "Passwords do not match";
    } else if (!isRenterSelected && !isAgentSelected) {
      errorMessage = "Please select  one option: Renter or Agent/LandLord";
    }
    if(errorMessage.isNotEmpty){
      ScaffoldMessenger
      .of(context)
          .showSnackBar(SnackBar(content: Text(errorMessage) ));
      return false;
    }
    return true;
  }
}

