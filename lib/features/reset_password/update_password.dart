import 'package:flutter/material.dart';

class UpdatePassword extends StatefulWidget {
  const UpdatePassword({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return UpdatePassword();
  });

  @override
  State<UpdatePassword> createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {


  String password ="";
  String confirmPassword = "";

  bool _isPassWordVisible = false;
  bool _isPassWordVisible1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left:16.0, right: 16, top:48),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Set a new password", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                Text("Set a  new passeord to update the forgotten password.", style: TextStyle(fontWeight: FontWeight.bold),),


                SizedBox(height: 56),

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
                SizedBox(height: MediaQuery.of(context).size.height*0.1),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset("assets/home/badge.png", color: Colors.green.shade700),
                                    SizedBox(height: 8),
                                    Text("Verification Successful", style: TextStyle(fontSize: 24),),
                                    SizedBox(height: 8),
                                    Text("Your Phone has been verified!", style: TextStyle(fontSize: 16),),
                                  ],
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      //Navigator.pop(context);
                                      //Navigator.pushReplacement(context, LoginPage.route());
                                    },
                                    child: Text("OK"),
                                  ),
                                ],
                              );
                            },
                          );
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
                              Text("Update Password", style: TextStyle(color: Colors.white, fontSize: 18),),
                               SizedBox(width: 10),
                               Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white,),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


                SizedBox(height: MediaQuery.of(context).size.height*0.25),
                Center(
                  child: Image.asset('assets/onboarding1/line.png',
                    width: 200,
                    height: 5,),
                ),
              ]
          ),

        ),
      ),
    );
  }
}
