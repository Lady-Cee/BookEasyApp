import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AboutEscrow extends StatelessWidget {
  const AboutEscrow({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return AboutEscrow();
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left:32.0),
          child: Text("About Escrow"),
        ),
    ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Escrow is a neutral third party in charge of holding funds or assets "
                " before they  are transfereed from one party in a transaction to another",
            style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Text("What happens when you make payment via Escrow?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Text("The fund is withheld in a secure account for a period of seven (7) days max "
                " While you (the renter) goes to inspect the property and confirm satisfaction.",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Text("What happens after the property has been confirmed?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            Text("If property is confirmed to be legit, the fund is transferred from Escrow to Agent/ Landlord's "
                "account. but if property is confirmed to be a scam, the renter will receive a refund.",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),

            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Click here",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = (){
                          //Navigator.push(context, AboutEscrow.route());
                        },
                ),
              TextSpan(
                text: " to learn more about escrow payment method and services.",
                style: TextStyle(color: Colors.black, fontSize: 16 ),
              ),

                  ]
                )
            ),
          ],
        ),
      ),
    );
  }
}
