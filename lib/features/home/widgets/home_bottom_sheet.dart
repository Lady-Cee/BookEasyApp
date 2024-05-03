import 'package:book_easy/features/home/widgets/book_inspection_page.dart';
import 'package:book_easy/features/payment/payment_option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomSheet extends StatelessWidget {
  const HomeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left:16.0, right: 16, top:8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade400,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                  ),
                    child: Text("Available", style: TextStyle(fontSize: 16),)

                ),
                Text("N2,000,000", style: TextStyle(color:Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            Text("Listing Agent", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

            Row(
              children: [
                Image.asset("assets/home/sheetface.png", width: 50,),
                SizedBox(width: MediaQuery.of(context).size.width * 0.02,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Kehinde", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    Text("Property Owner", style: TextStyle(fontSize: 12),)
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
                Image.asset("assets/home/badge.png", width: 25,),
                SizedBox(width: MediaQuery.of(context).size.width * 0.25,),
                GestureDetector(
                  onTap: (){},
                    child: Image.asset("assets/home/sheetphone.png", width: 25, color: Colors.blue,),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.04,),
                GestureDetector(
                  onTap: (){},
                    child: Image.asset("assets/home/sheetmsg.png", width: 20, color: Colors.blue,),
                ),

              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
            Text("Property features", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset("assets/home/sheetbed.png", width: 30,),
                    Text("4 Bed", style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/home/sheetbath.png", width: 30,),
                    Text(" 5 Bath", style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/home/sheetkitchen.png", width: 30,),
                    Text("Kitchen", style: TextStyle(fontSize: 12)),
                  ],
                ),
                Column(
                  children: [
                    Image.asset("assets/home/sheetguest.png", width: 30,),
                    Text("Guest room", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
            Text("Description", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            SizedBox(height: MediaQuery.of(context).size.height * 0.001,),
            // Text("Fully detached duplex with two parlour, boys quarter, kitchen, five bathrooms and roof top view ....",
            // style: TextStyle(color: Colors.grey),),


            RichText(
              //textAlign: TextAlign.center,
              text: TextSpan(
                  style: TextStyle(color: Colors.grey),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Fully detached duplex with two parlour, boys quarter,",
                    ),
                    TextSpan(
                      text: " kitchen, five bathrooms and roof top view .... ",
                      style: TextStyle(color: Colors.grey, ),
                    ),
                    TextSpan(
                      text: 'See more ',
                      style: TextStyle(color: Colors.blue, ),
                    ),

                  ]
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Photos", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text("See more", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),)
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/home/sheet1.png", width: 100,),
                Image.asset("assets/home/sheet2.png", width: 100,),
                Image.asset("assets/home/sheet3.png", width: 100,),
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.032),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, BookInspectionPage.route());
                  },
                  child: Container(
                    width:MediaQuery.of(context).size.width * 0.4,
                    height:MediaQuery.of(context).size.height * 0.04,
                    decoration: BoxDecoration(
                      color:Colors.white,
                      border: Border.all(
                        color: Colors.blue,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(child: Text("Book Inspection", style: TextStyle(color: Colors.blue),)),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(context, PaymentOption.route());
                  },
                  child: Container(
                    width:MediaQuery.of(context).size.width * 0.3,
                    height:MediaQuery.of(context).size.height * 0.04,
                    decoration: BoxDecoration(
                      color:Colors.blue.shade900,
                      border: Border.all(
                        color: Colors.blue.shade900,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Rent Now", style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                          Image.asset("assets/home/arrowright.png"),

                      ],
                    ),
                  ),
                ),
              ],
            ),


            SizedBox(height:MediaQuery.of(context).size.height * 0.02,),
            //SizedBox(height: MediaQuery.of(context).size.height*0.01,),
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
