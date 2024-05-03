import 'package:flutter/material.dart';

import '../login/login_page.dart';
import 'escrow_payment.dart';

class EscrowPaymentSummary extends StatelessWidget {
  const EscrowPaymentSummary({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return EscrowPaymentSummary();
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Padding(
          padding: const EdgeInsets.only(left:70.0,),
          child: Text("Payment"),
        ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Payment Summary", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              SizedBox( height: MediaQuery.of(context).size.height * 0.03,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey,
                    )
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sub Total", style: TextStyle(color: Colors.grey),),
                          Text("N2,000,000"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Discount", style: TextStyle(color: Colors.grey),),
                          Text("N0.0"),
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total", style: TextStyle(color: Colors.grey),),
                          Text("N2,000,000"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox( height: MediaQuery.of(context).size.height * 0.04,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Payment Method", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  Text("CHANGE", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.green),)

                ],
              ),
              SizedBox( height: MediaQuery.of(context).size.height * 0.01,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey,
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Master Card", style: TextStyle(color: Colors.grey),),
                          Text("5467827******8999", style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                      Image.asset("assets/onboarding1/mastercard-fill.png", width: 30,),
                    ],
                  ),
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.41,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                        showDialog(
                          context: context,
                          builder: (context){
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset("assets/home/badge.png", color: Colors.green.shade700,),
                                  SizedBox(height: 8),
                                  Text("Congratulations", style: TextStyle(fontSize: 24),),
                                  SizedBox(height: 8),
                                  Text("Transaction created successfully", style: TextStyle(fontSize: 16),),
                                ],
                              ),
                              actions: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.pushReplacement(context, LoginPage.route());
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.blue,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
                                        ),
                                        side: BorderSide(width: 2, color: Colors.blue),
                                      ),
                                      child: Text("Exit"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.pushReplacement(context, EscrowPayment.route());
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue.shade900,
                                        foregroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10), // Adjust the border radius as needed
                                        ),
                                      ),
                                      child: Text("View"),
                                    ),
                                  ],
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
                        foregroundColor: Colors.white,
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Pay  N2,000,000", style: TextStyle(fontSize: 18),),
                            // SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                            // Image.asset("assets/onboarding1/angle-right.png", width: 20,)
                          ],
                        ),
                      ),

                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
              Center(
                child: Image.asset('assets/onboarding1/line.png',
                  width: MediaQuery.of(context).size.width*2,
                  height: MediaQuery.of(context).size.height*0.005,
                ),
              )
            ],
          ),
        )
    );
  }
}
