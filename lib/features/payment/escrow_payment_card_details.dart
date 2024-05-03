import 'package:book_easy/features/payment/bloc/payment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/payment_state.dart';
import 'escrow_payment_summary.dart';

class EscrowPaymentCardDetails extends StatefulWidget {
  const EscrowPaymentCardDetails({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return EscrowPaymentCardDetails();
  });

  @override
  State<EscrowPaymentCardDetails> createState() => _EscrowPaymentCardDetailsState();
}

class _EscrowPaymentCardDetailsState extends State<EscrowPaymentCardDetails> {
  var switchValue = true;

  @override
  Widget build(BuildContext context) {
    PaymentBloc paymentBloc = context.watch<PaymentBloc>();
    PaymentState paymentState = paymentBloc.state;

    var switchValue = paymentState.switchBtn;

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
              Text("Enter card details", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Image.asset("assets/onboarding1/debitcard.png"),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

              Text("Cardholder name", style: TextStyle(fontSize: 16, color: Colors.black45),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "Daniel Geshino",
                  //  hintText: "Enter your first name ",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide(
                      width: 2,
                      color:Colors.black,
                    ), // Remove outline border
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  // hintStyle: TextStyle(color: Colors.black38, fontSize: 12),
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                // onChanged: (newText){
                //   fullName = newText;
                // },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

              Text("Card number", style: TextStyle(fontSize: 16, color: Colors.black45),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: "00000232314145252",
                  //  hintText: "Enter your first name ",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder( // Define border appearance
                    borderSide: BorderSide(
                      width: 2,
                      color:Colors.black,
                    ), // Remove outline border
                    borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  // hintStyle: TextStyle(color: Colors.black38, fontSize: 12),
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                // onChanged: (newText){
                //   fullName = newText;
                // },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

              Row(
                children: [
                  Text("Expiration", style: TextStyle(fontSize: 16, color: Colors.black45),),
                  Padding(
                    padding: const EdgeInsets.only(left:120.0),
                    child: Text("CVV", style: TextStyle(fontSize: 16, color: Colors.black45),),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
              Row(
                children: [
                  Expanded(
                    //flex: 2,
                    child:
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "10/28",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ),


                  SizedBox(width: MediaQuery.of(context).size.width*0.06),              // Adjust the spacing between the text fields


                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "580",
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        labelStyle: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Save this card for future transactions", style: TextStyle(fontSize: 14),),
                  //Image.asset("assets/onboarding1/switch.png", width: 40,)
                  Switch(
                    value: switchValue,
                    onChanged: (value) {
                      if (switchValue == false) {
                        paymentBloc.switchBtnOn();
                      } else {
                        paymentBloc.switchBtnOff();
                      }
                    },
                    activeColor: Colors.blue.shade900,
                  ),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, EscrowPaymentSummary.route());
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
                            Text("Done", style: TextStyle(fontSize: 18),),
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
          )
      ),
    );
  }
}
