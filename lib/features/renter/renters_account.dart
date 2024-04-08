import 'package:book_easy/features/renter/verification_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RentersAccount extends StatelessWidget {
  const RentersAccount({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return RentersAccount();
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Fill in your details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset("assets/splash/logo_blue.png", height: 120,)),
              SizedBox(height: 12),
              Text("First Name",  style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Amarachi",
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
              SizedBox(height: 12),
              Text("Surname",  style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "Aisosa",
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

              SizedBox(height: 12),
              Text("Enter Email",  style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "amarachiasisosa@gmail.com",
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
              SizedBox(height: 12),
              Text("Enter Phone Number",  style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "090256788383 ",
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

               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Save details?",  style: TextStyle(fontSize:18, color: Colors.black38 )),
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
                      width:80,
                      height:50,
                      decoration: BoxDecoration(
                        color:Colors.white,
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(child: Text("Skip", style: TextStyle(color: Colors.blue),)),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, VerificationPage.route());
                    },
                    child: Container(
                      width:80,
                      height:50,
                      decoration: BoxDecoration(
                        color:Colors.blue.shade600,
                        border: Border.all(
                          color: Colors.blue,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(child: Text("Next", style: TextStyle(color: Colors.white),)),
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
}
