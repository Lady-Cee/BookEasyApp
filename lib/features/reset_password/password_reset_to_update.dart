import 'package:book_easy/features/reset_password/update_password.dart';
import 'package:flutter/material.dart';

class PasswordResetToUpdate extends StatelessWidget {
  const PasswordResetToUpdate({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return PasswordResetToUpdate();
  });
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
    Text("Password reset", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
    Text("Your password has been successfully reset. Click confirm to set a new password.", style: TextStyle(fontWeight: FontWeight.bold),),


    SizedBox(height: 56),

    Row(
    children: [
    Expanded(
    child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, UpdatePassword.route());
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
    Text("Confirm", style: TextStyle(color: Colors.white, fontSize: 18),),
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
]
    ),

    ),
    ),
    );
  }
}
