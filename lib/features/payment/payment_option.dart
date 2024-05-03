import 'package:book_easy/features/payment/agent_payment.dart';
import 'package:book_easy/features/payment/escrow_payment.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'about_escrow.dart';

class PaymentOption extends StatefulWidget {
  const PaymentOption({super.key});

  static route() => MaterialPageRoute(builder:(context){
    return PaymentOption();
  });

  @override
  State<PaymentOption> createState() => _PaymentOptionState();
}

class _PaymentOptionState extends State<PaymentOption> {
  bool isAgentPaymentSelected = false;
  bool isEscrowWalletSelected = false;

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
          Text("Select Payment Method", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),

      SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.09,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
          width: 1,
    ),
        ),

        child: Row(
          children: [
            Checkbox(
              value: isAgentPaymentSelected,
              onChanged: (bool ? value) {
                setState(() {
                  isAgentPaymentSelected = value ?? false;
                  if (isAgentPaymentSelected) {
                    isEscrowWalletSelected = false;
                  }
                });
              }
            ),
            SizedBox(width: MediaQuery.of(context).size.width*0.03,),
            Image.asset("assets/drawer/arrowup.png", width: 20,),
            SizedBox(width: MediaQuery.of(context).size.width*0.06,),
            Text("Pay Directly To Agent"),
          ],

        ),


    ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.09,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
            ),

            child: Row(
              children: [
                Checkbox(
                    value: isEscrowWalletSelected,
                    onChanged: (bool ? value) {
                      setState(() {
                        isEscrowWalletSelected = value ?? false;
                        if (isEscrowWalletSelected) {
                          isAgentPaymentSelected = false;
                        }
                      });
                    }
                ),
                SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                Image.asset("assets/drawer/escrow.png", color: Colors.black, width: 20,),
                SizedBox(width: MediaQuery.of(context).size.width*0.06,),
                Text("Pay into Escrow Wallet"),
              ],

            ),

          ),

          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
          if(isEscrowWalletSelected)
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


          //SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

          if(isAgentPaymentSelected)
          RichText(
            //textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(fontSize: 13, color: Colors.grey),
                children: <TextSpan>[
                  TextSpan(
                    text: "Warning:",
                    style: TextStyle(fontSize: 14, color: Colors.red),
                  ),
                  TextSpan(
                    text: " Note that direct payment into agent's/ landlord's account is at your own risk",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),
                  TextSpan(
                    text: " and we will not be held liable for any act of fraud while carrying out this method of transaction.",
                    style: TextStyle(color: Colors.black, fontSize: 14),
                  ),


                ]
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.4,),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: (){
                      if (isAgentPaymentSelected){
                        Navigator.push(context, AgentPayment.route());
                      } else if (isEscrowWalletSelected ){
                        Navigator.push(context, EscrowPayment.route());
                      }
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
                          Text("Continue", style: TextStyle(fontSize: 18),),
                         SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                          Image.asset("assets/onboarding1/angle-right.png", width: 20,)
                        ],
                      ),
                    ),
                  
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
          Center(
            child: Image.asset('assets/onboarding1/line.png',
              width: MediaQuery.of(context).size.width*2,
              height: MediaQuery.of(context).size.height*0.005,
            ),
          )
      ],


    ),
    ),
    );
  }
}
