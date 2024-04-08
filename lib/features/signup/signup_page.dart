import 'package:book_easy/features/login/login_page.dart';
import 'package:book_easy/features/onboarding/fourth_onboarding/fourth_onboarding_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return SignupPage();
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Create Account", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),
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
                // onChanged: (newText){
                //   fullName = newText;
                // },
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
              Text("Confirm Password",  style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
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
              //SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Row(
                  children: [
                    Checkbox(
                      value: false,
                        onChanged: (bool? value) {

                        },
                        checkColor: Colors.grey,
                    ),
                        Text("Remember Password",  style: TextStyle(fontSize:18, )),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, FourthOnboardingPage.route());
                      },
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32.0, vertical: 16.0),
                        backgroundColor: Colors.blue.shade800,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "SIGN UP",
                        style: TextStyle(color: Colors.white, fontSize: 18),
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
}
