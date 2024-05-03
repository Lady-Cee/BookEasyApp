import 'package:book_easy/features/renter/verification_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/renter_bloc.dart';
import 'bloc/renter_state.dart';

class RentersAccount extends StatefulWidget {
  const RentersAccount({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return RentersAccount();
  });

  @override
  State<RentersAccount> createState() => _RentersAccountState();
}

class _RentersAccountState extends State<RentersAccount> {
  String firstName = "";
  String surname = "";
  String emailAddress = "";
  String phoneNumber = "";


  @override
  Widget build(BuildContext context) {
    RenterBloc bloc = context.watch<RenterBloc>();
    RenterState state = bloc.state;

    switch(state.renterStatus){
      case RenterStatus.Initial:
        break;
      case RenterStatus.Processing:
      //handle this case
        break;
      case RenterStatus.Successful:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          Navigator.pushReplacement(
            context,
            VerificationPage.route(),
          );
          bloc.reset();
        });
        break;
      case RenterStatus.Error:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
              .of(context)
              .showSnackBar(SnackBar(content:Text("An error occurred")));
        });
        break;

    }

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Fill in your details",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(
                "assets/splash/logo_blue.png", height: 120,)),
              SizedBox(height: 12),
              Text("First Name",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Amarachi",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide.none, // Remove outline border
                    borderRadius: BorderRadius.circular(
                        10), // Adjust border radius as needed
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 12, horizontal: 12),
                  hintStyle: TextStyle(color: Colors.black38),
                ),
                onChanged: (newText){
                  firstName = newText;
                },
              ),
              SizedBox(height: 12),
              Text("Surname",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Aisosa",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide.none, // Remove outline border
                    borderRadius: BorderRadius.circular(
                        10), // Adjust border radius as needed
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 12, horizontal: 12),
                  hintStyle: TextStyle(color: Colors.black38),
                ),
                onChanged: (newText){
                  surname = newText;
                },
              ),

              SizedBox(height: 12),
              Text("Enter Email",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "amarachiasisosa@gmail.com",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide.none, // Remove outline border
                    borderRadius: BorderRadius.circular(
                        10), // Adjust border radius as needed
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 12, horizontal: 12),
                  hintStyle: TextStyle(color: Colors.black38),
                ),
                onChanged: (newText){
                  emailAddress = newText;
                },
              ),
              SizedBox(height: 12),
              Text("Enter Phone Number",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "090256788383 ",
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide.none, // Remove outline border
                    borderRadius: BorderRadius.circular(
                        10), // Adjust border radius as needed
                  ),

                  contentPadding: EdgeInsets.symmetric(
                      vertical: 12, horizontal: 12),
                  hintStyle: TextStyle(color: Colors.black38),
                ),
                onChanged: (newText){
                  phoneNumber = newText;
                },
              ),
              SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Save details?",
                      style: TextStyle(fontSize: 18, color: Colors.black38)),
                  Checkbox(
                    value: false,
                    onChanged: (bool? value) {

                    },
                    //checkColor: Colors.grey,
                  ),

                ],
              ),
              SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 80,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.blue.shade900,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(child: Text("Skip", style: TextStyle(
                          color: Colors.blue.shade900),)),
                    ),
                  ),

                  GestureDetector(
                    onTap: state.renterStatus == RenterStatus.Processing ? null : (){
                          if(_isUserInputValid()){
                          bloc.verifyUser(
                          // firstName: firstName,
                          // surname: surname,
                          // emailAddress: emailAddress,
                          phoneNumber: phoneNumber,
                          );
                          }
                          },
                    child: Container(
                      width: 80,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        border: Border.all(
                          color: Colors.blue.shade900,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(child: Text("Next", style: TextStyle(
                          color: Colors.white),)),
                    ),
                  ),
                ],
              ),


              SizedBox(height: 40,),
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

  // void _navigateToVerificationPage() {
  //   String errorMessage = "";
  //
  //   // Regular expression for email validation
  //   RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  //
  //   if (firstName.isEmpty || surname.isEmpty || emailAddress.isEmpty ||
  //       phoneNumber.isEmpty) {
  //     errorMessage = "Please fill in your complete details";
  //   }
  //   else if (!emailRegex.hasMatch(emailAddress)) {
  //     errorMessage = "Please enter a valid email address";
  //   }
  //   if (errorMessage.isNotEmpty) {
  //     ScaffoldMessenger
  //         .of(context)
  //         .showSnackBar(SnackBar(content: Text(errorMessage)));
  //   } else {
  //    // Navigator.push(context, VerificationPage.route());
  //     Navigator.pushReplacement(
  //       context,
  //       MaterialPageRoute(builder: (context) => VerificationPage()),
  //     );
  //
  //   }
  // }

  bool _isUserInputValid(){
    String errorMessage ="";
    //check to see if input is valid
      RegExp emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

      if (firstName.isEmpty || surname.isEmpty || emailAddress.isEmpty ||
          phoneNumber.isEmpty) {
        errorMessage = "Please fill in your complete details";
      }
      else if (!emailRegex.hasMatch(emailAddress)) {
        errorMessage = "Please enter a valid email address";
      }
    if(errorMessage.isNotEmpty){
      //show Snackbar Alert
      ScaffoldMessenger
          .of(context)
          .showSnackBar(SnackBar(content:Text(errorMessage)));
      return false;
    }
    return true;
  }
}