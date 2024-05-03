import 'package:book_easy/features/payment/escrow_payment_method.dart';
import 'package:flutter/material.dart';

class EscrowPaymentTransaction extends StatelessWidget {
  const EscrowPaymentTransaction({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return EscrowPaymentTransaction();
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Escrow Payment"),
    ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create Transaction", style: TextStyle(fontSize: 28),),
              SizedBox(height: MediaQuery.of(context).size.height *0.05,),

              Text("Transaction type", style: TextStyle(fontSize: 16),),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Online",
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height *0.05,),
              Text("Currency", style: TextStyle(fontSize: 16),),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Naira",
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height *0.05,),
              Text("Price(* Renters protection fee)", style: TextStyle(fontSize: 16),),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "N2,000,000",
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height *0.03,),
             // Text("Currency", style: TextStyle(fontSize: 16),),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Description",
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height *0.08,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total", style: TextStyle(fontSize: 20),),
                  Text("N2,000,000", style: TextStyle(fontSize: 20),),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height *0.1,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, EscrowPaymentMethod.route());
                        },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade900,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                        child: Text("Pay", style: TextStyle(fontSize: 16),),
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
        ),
      )
    );
  }
}
