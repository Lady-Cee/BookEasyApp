import 'package:flutter/material.dart';

import 'escrow_payment_card_details.dart';

class EscrowPaymentMethod extends StatefulWidget {
  const EscrowPaymentMethod({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return EscrowPaymentMethod();
  });

  @override
  State<EscrowPaymentMethod> createState() => _EscrowPaymentMethodState();
}

class _EscrowPaymentMethodState extends State<EscrowPaymentMethod> {
  bool isPaymentWithCardSelected = false;
  bool isMakeTransferSelected = false;
  bool isPayWithUssdSelected = false;

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
                      value: isPaymentWithCardSelected,
                      onChanged: (bool ? value) {
                        setState(() {
                          isPaymentWithCardSelected = value ?? false;
                          if (isPaymentWithCardSelected) {
                            isMakeTransferSelected = false;
                            isPayWithUssdSelected = false;
                          }
                        });
                      }
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                  Image.asset("assets/onboarding1/payment-card.png", width: 20,),
                  SizedBox(width: MediaQuery.of(context).size.width*0.06,),
                  Text("Pay with card"),
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
                      value: isMakeTransferSelected,
                      onChanged: (bool ? value) {
                        setState(() {
                          isMakeTransferSelected = value ?? false;
                          if (isMakeTransferSelected) {
                            isPaymentWithCardSelected = false;
                            isPayWithUssdSelected = false;
                          }
                        });
                      }
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                  Image.asset("assets/onboarding1/payment-transfer.png", color: Colors.black, width: 20,),
                  SizedBox(width: MediaQuery.of(context).size.width*0.06,),
                  Text("Make transfer"),
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
                      value: isPayWithUssdSelected,
                      onChanged: (bool ? value) {
                        setState(() {
                          isPayWithUssdSelected = value ?? false;
                          if (isPayWithUssdSelected) {
                            isMakeTransferSelected = false;
                            isPaymentWithCardSelected = false;
                          }
                        });
                      }
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                  Image.asset("assets/onboarding1/payment-phone.png", color: Colors.black, width: 20,),
                  SizedBox(width: MediaQuery.of(context).size.width*0.06,),
                  Text("Pay with USSD"),
                ],

              ),

            ),


            SizedBox(height: MediaQuery.of(context).size.height * 0.39,),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){
                      if (isPaymentWithCardSelected){
                        Navigator.push(context, EscrowPaymentCardDetails.route());
                      } else if (isMakeTransferSelected){
                        //Navigator.push();
                      } else if (isPayWithUssdSelected){
                        //Navigator.push();
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
                          Text("Next", style: TextStyle(fontSize: 18),),
                          SizedBox(width: MediaQuery.of(context).size.width * 0.05,),
                          Image.asset("assets/onboarding1/angle-right.png", width: 20,)
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
      ),
    );
  }
}
