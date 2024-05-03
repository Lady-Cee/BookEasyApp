import 'package:book_easy/features/login/login_page.dart';
import 'package:flutter/material.dart';

import '../home/home_page.dart';

class AgentPaymentSuccess extends StatelessWidget {
  const AgentPaymentSuccess({super.key});


  static route() => MaterialPageRoute(builder: (context){
    return AgentPaymentSuccess();
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/home/badge.png", color: Colors.green,),
          SizedBox(height: 8),
          Text("Payment Successful", style: TextStyle(fontSize: 24),),
          SizedBox(height: 8),
          Text("Your have successully paid for Bella view apartment", 
            style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
          ),
          
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, HomePage.route());
                      },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade900,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )

                    ),
                      child: Text("Exit", style: TextStyle(fontSize: 18),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
