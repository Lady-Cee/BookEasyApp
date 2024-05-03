import 'package:book_easy/features/payment/about_escrow.dart';
import 'package:book_easy/features/payment/escrow_payment_transaction.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EscrowPayment extends StatelessWidget {
  const EscrowPayment({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return EscrowPayment();
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Escrow Payment"),
      ),
      body: SingleChildScrollView(
        child: DefaultTabController(
                length: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top:30.0),
                  child: Column(
                    children: [
                      TabBar(
                           isScrollable: true,
                          // controller: _tabController,,
                          labelColor: Colors.black,
                          indicatorSize: TabBarIndicatorSize.tab,
                          dividerColor: Colors.grey,
                          // indicatorColor: Colors.blue,
                          // labelPadding: EdgeInsets.symmetric(horizontal: 6),
                          // unselectedLabelColor: Colors.black,
                          // labelStyle: TextStyle(fontSize: 16),
                          // unselectedLabelStyle: TextStyle(fontSize: 16),


                          tabs: [
                            Text("Create Transactions", style: TextStyle(fontSize: 16),),
                            Text("View Transactions",  style: TextStyle(fontSize: 16),),
                          ]
                      ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.9,
                      child: TabBarView(
                          children: [
                            Container(
                              child: Column(
                          children: [
                              Image.asset("assets/onboarding1/paymentescrow.png",
                                width: 300,
                              ),
                              Text("Create a secure transaction", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 36.0, right: 36),
                                child: Text("We hold the funds, then release to landlord after 7 days when legality of property is confirmed.",
                                style: TextStyle(color: Colors.grey),
                                textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height*0.07,),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                          onPressed: (){
                                            Navigator.push(context, EscrowPaymentTransaction.route());
                                          },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue.shade900,
                                          foregroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10)
                                          )
                                        ),
                                          child: Text("Create", style: TextStyle(fontSize: 16),),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Text("Learn more about Escrow payment"),
                            RichText(
                              //textAlign: TextAlign.center,
                              text: TextSpan(
                                  style: TextStyle(fontSize: 13, color: Colors.grey),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: "Learn",
                                      style: TextStyle(fontSize: 14, color: Colors.blue),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = (){
                                        Navigator.push(context, AboutEscrow.route());
                                        },
                                    ),
                                    TextSpan(
                                      text: " more about Escrow payment",
                                      style: TextStyle(color: Colors.black, fontSize: 14),
                                    ),

                                  ]
                              ),
                            ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.08,),
                              Center(
                                child: Image.asset('assets/onboarding1/line.png',
                                  width: MediaQuery.of(context).size.width*2,
                                  height: MediaQuery.of(context).size.height*0.005,
                                ),
                              )
                      ]
                      ),
                            ),
                      Column(
                        children: [
                          Container(
                            child: Column(
                                children: [
                                  Image.asset("assets/onboarding2/escrowbro.png",
                                    width: 300,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:[
                                        Container(
                                          width:MediaQuery.of(context).size.width*0.15,
                                            height: MediaQuery.of(context).size.height*0.065,
                                            decoration: BoxDecoration(
                                              color: Colors.blue.shade50,
                                                border: Border.all(
                                                  color: Colors.blue,
                                                  width:1,
                                                )
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Image.asset("assets/onboarding2/escrow-shield.png", width: 30,),
                                            )
                                        ),
                                        Container(
                                            width:MediaQuery.of(context).size.width*0.15,
                                            height: MediaQuery.of(context).size.height*0.065,
                                            decoration: BoxDecoration(
                                                color: Colors.blue.shade50,
                                                border: Border.all(
                                                  color: Colors.blue,
                                                  width:1,
                                                )
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Image.asset("assets/onboarding2/escrow-swatchbook.png", width: 30,),
                                            )
                                        ),
                                        Container(
                                            width:MediaQuery.of(context).size.width*0.15,
                                            height: MediaQuery.of(context).size.height*0.065,
                                            decoration: BoxDecoration(
                                                color: Colors.blue.shade50,
                                                border: Border.all(
                                                  color: Colors.blue,
                                                  width:1,
                                                )
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Image.asset("assets/onboarding2/escrow-window.png", width: 30,),
                                            )
                                        ),
                                        Container(
                                            width:MediaQuery.of(context).size.width*0.15,
                                            height: MediaQuery.of(context).size.height*0.065,
                                            decoration: BoxDecoration(
                                                color: Colors.blue.shade50,
                                                border: Border.all(
                                                  color: Colors.blue,
                                                  width:1,
                                                )
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Image.asset("assets/onboarding2/escrow-thumbs-up.png", width: 30,),
                                            )
                                        ),
                                      ]
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Center(child: Text("Transaction has been created. Copy the link and share with the seller",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,left: 36.0, right: 36),
                                    child: Text("https://app.escrow.com",
                                      style: TextStyle(color: Colors.grey),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                            onPressed: (){
                                             // Navigator.push(context, EscrowPaymentTransaction.route());
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.blue.shade900,
                                                foregroundColor: Colors.white,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(10)
                                                )
                                            ),
                                            child: Text("Copy Link", style: TextStyle(fontSize: 16),),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //Text("Learn more about Escrow payment"),
                                  //SizedBox(height: MediaQuery.of(context).size.height * 0.000001,),
                                  Center(
                                    child: Image.asset('assets/onboarding1/line.png',
                                      width: MediaQuery.of(context).size.width*2,
                                      height: MediaQuery.of(context).size.height*0.005,
                                    ),
                                  )
                                ]
                            ),
                          ),
                        ]
                      )
                          ]
                      )
                        )
                    ],
                  ),
                )
            ),
      ),

    );
  }
}
