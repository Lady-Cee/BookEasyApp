import 'package:book_easy/features/onboarding/third_onboarding/third_onboarding_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class SecondOnboardingPage extends StatelessWidget {
  const SecondOnboardingPage({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return SecondOnboardingPage();
  });

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image:DecorationImage(
                    image: AssetImage('assets/onboarding2/house2.png'),
                    fit: BoxFit.fill,
                  )
              ),
              // child: Assets.onboarding1.house1.image(),
            ),
            Positioned(
                right: 15,
                top: 85,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width:50,
                    height:30,
                    decoration: BoxDecoration(
                      // color:Colors.blue,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(child: Text("Skip", style: TextStyle(color: Colors.white),)),
                  ),
                )
            ),
            Positioned(
              // right: 15,
              bottom: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height:270,
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: Column(
                      children: [
                        Text("Find your perfect home in minutes by", style: TextStyle(color: Colors.black38, fontSize: 16), ),
                        Text("searching through the vast collection of", style: TextStyle(color: Colors.black38, fontSize: 16), ),
                        Text("rental listings.", style: TextStyle(color: Colors.black38, fontSize: 16), ),
                      ],
                    ),
                  ),
                ),

              ),

            ),
            Positioned(
              bottom: 60,
              left:15,
              right: 15,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, ThirdOnboardingPage.route());
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
                      Text("Next", style: TextStyle(color: Colors.white, fontSize: 18),),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_forward_ios, size: 20, color: Colors.white,),

                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 90,
              child: Image.asset('assets/onboarding1/line.png',
                width: 200,
                height: 5,),
            )
          ],
        ),
      );
  }
}
