import 'package:book_easy/features/forgot_password/forgot_password_page.dart';
import 'package:book_easy/features/home/home_page.dart';
import 'package:book_easy/features/location/location_page.dart';
import 'package:book_easy/features/property/property_info.dart';
import 'package:book_easy/features/signup/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../landlordagent/landlord_agent_account.dart';
import '../onboarding/fourth_onboarding/fourth_onboarding_page.dart';
import '../renter/renters_account.dart';
import '../signup/model/user_model.dart';
import '../signup/repository/signup_repository.dart';
import 'bloc/login_bloc.dart';
import 'bloc/login_state.dart';
import 'repository/login_repository.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return LoginPage();
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isPassWordVisible = false;
  bool isRenterSelected = false;
  //late LoginRepository loginRepository;
 LoginRepository loginRepository = LoginRepository();

  SignupRepository _auth = SignupRepository();
 //
 String? fullName;
 String? role;
 //
 @override
 void initState (){
   super.initState();
   _fetchUserData();
 }
 //
 //
 //  @override
 //  void didChangeDependencies (){
 //    super.didChangeDependencies ();
 //    _fetchUserData();
 //  }
 Future<void> _fetchUserData() async {
   User? user = FirebaseAuth.instance.currentUser;
   if (user != null){
     String email = user.email ??'';
         UserModel? currentUser = await _auth.readData(email);

     if (currentUser != null){
       setState(() {
         fullName = currentUser.fullName;
         role = currentUser.role;
       });
     }
   }
 }

  @override
  Widget build(BuildContext context) {
    var bloc = context.watch<LoginBloc>();
    var state = bloc.state;


    switch(state.loginStatus){
      case LoginStatus.Initial:
        break;
      case LoginStatus.Processing:
        break;
      case LoginStatus.Successful:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
          // Fetch user data
          await _fetchUserData();

          // Check if user data has been fetched
          if (fullName != null && role != null) {
            if (role == "Renter") {
              Navigator.pushReplacement(context,LocationPage.route());
            } else {
              Navigator.pushReplacement(context, PropertyInfo.route());
            }
          } else {
            // Handle scenario where user data couldn't be fetched
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Failed to fetch user data. Please try again."),
            ));
          }

          bloc.reset();
        });
        break;

      case LoginStatus.Error:
        WidgetsBinding.instance.addPostFrameCallback((timestamp){
          ScaffoldMessenger
          .of(context)
              .showSnackBar(SnackBar(content: Text("There is an error")));
        });
        break;
      case LoginStatus.InvalidEmailAddress:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
          .of(context)
              .showSnackBar(SnackBar(content: Text("Please enter a valid email address")));
          bloc.resetStatusToInitial();
        });

        break;

      case LoginStatus.InvalidPassword:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
          .of(context)
              .showSnackBar(SnackBar(content: Text("The password you entered is incorrect")));
          bloc.resetStatusToInitial();
        });
       break;
    }
    
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
              Text("Email Address",  style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: " example@gmail.com",
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
                  bloc.setEmailAddress(newText);
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
                bloc.setPassword(newText);
                 },
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
                       // Navigator.push(context, LocationPage.route());
                      bloc.onSubmit();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if(state.loginStatus == LoginStatus.Processing)
                              CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            SizedBox(width: 20,),
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

  // Future<void> _signIn() async {
  //   setState(() {
  //     _isSigning = true;
  //   });
  //
  //   String email = _emailController.text;
  //   String password = _passwordController.text;
  //
  //   try {
  //     // Sign in with email and password
  //     UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );
  //
  //     User? user = userCredential.user;
  //     if (user != null && user.emailVerified) {
  //       // User is verified, proceed with sign-in
  //       setState(() {
  //         _isSigning = false;
  //       });
  //
  //       // Now you can fetch user data and proceed to the appropriate screen based on their role
  //       await _fetchUserData();
  //
  //       if (role == "Role.Renter") {
  //         showToast(message: "User is successfully signed in");
  //         Navigator.pushAndRemoveUntil(
  //           context,
  //           MaterialPageRoute(builder: (context) => HomePage()),
  //               (Route<dynamic> route) => false,
  //         );
  //       } else {
  //         showToast(message: "User is successfully signed in");
  //         Navigator.pushAndRemoveUntil(
  //           context,
  //           MaterialPageRoute(builder: (context) => PropertyInfo()),
  //               (Route<dynamic> route) => false,
  //         );
  //       }
  //     } else {
  //       // User is not verified
  //       showToast(message: 'Please verify your email before signing in.');
  //       Navigator.pushReplacement(
  //         context,
  //         // MaterialPageRoute(
  //         //   builder: (context) => EmailVerificationPage(email: email),
  //         // ),
  //       );
  //       setState(() {
  //         _isSigning = false;
  //       });
  //     }
  //   } catch (e) {
  //     // Handle sign-in errors
  //     showToast(message: 'Failed to sign in: $e');
  //     setState(() {
  //       _isSigning = false;
  //     });
  //   }
  // }
}

