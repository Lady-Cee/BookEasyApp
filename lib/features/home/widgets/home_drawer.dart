//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../login/bloc/login_bloc.dart';
import '../../login/login_page.dart';
import '../../payment/about_escrow.dart';
import '../home_page.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  static route() => MaterialPageRoute(builder: (context){
    return HomeDrawer();
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.6,
      child: Container(
       color: Colors.blue.shade900,
        child: ListView(
         padding: EdgeInsets.zero,
         //     dividerColor: Color(0xFF303030) // change it with the background color

          //divider: null,
          //shrinkWrap: true,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                  bottom: 24,
                //left: 30,
              ),
              child: UserAccountsDrawerHeader(
                  accountName: const Text("Bolanle"),
                  accountEmail: const Text("bolanle@gmail.com"),
                currentAccountPicture: Image.asset("assets/home/face.png"),
                decoration: BoxDecoration(
                  color: Colors.transparent, // Make the background color of the header transparent

                ),
              ),
            ),
              ListTile(
                leading: Image.asset("assets/drawer/home1.png", width: 20,),
                title: Text("Home", style: TextStyle(color:Colors.white),),
                onTap: () {
                  Navigator.pushReplacement(context, HomePage.route());
                },
              ),
            ListTile(
              leading: Image.asset("assets/drawer/chart.png", width: 20,),
              title: Text("Dashboard", style: TextStyle(color:Colors.white),),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset("assets/drawer/about.png", width: 20,),
              title: Text("About Escrow", style: TextStyle(color:Colors.white),),
              onTap: () {
                Navigator.pushReplacement(context, AboutEscrow.route());
              },
            ),
            ListTile(
              leading: Image.asset("assets/drawer/find.png", width: 20,),
              title: Text("Find Apartment", style: TextStyle(color:Colors.white),),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset("assets/drawer/question-mark.png", width: 20,),
              title: Text("Help & Support", style: TextStyle(color:Colors.white),),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset("assets/drawer/contact.png", width: 20,),
              title: Text("Contact Us", style: TextStyle(color:Colors.white),),
              onTap: () {},
            ),
            ListTile(
              leading: Image.asset("assets/drawer/settings.png", width: 20,),
              title: Text("Settings", style: TextStyle(color:Colors.white),),
              onTap: () {},
            ),
            // ListTile(
            //   leading: Image.asset("assets/drawer/about.png", width: 20,),
            //   title: Text("About Us", style: TextStyle(color:Colors.white),),
            //   onTap: () {},
            // ),
            // ListTile(
            //   leading: Image.asset("assets/drawer/faq.png", width: 20,),
            //   title: Text("FAQs", style: TextStyle(color:Colors.white),),
            //   onTap: () {},
            // ),
            //
            //
            // ListTile(
            //   leading: Image.asset("assets/drawer/chats.png", width: 20,),
            //   title: Text("Chats", style: TextStyle(color:Colors.white),),
            //   onTap: () {},
            // ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    context.read<LoginBloc>().logout();
                    Navigator.pushReplacement(context, LoginPage.route(),);
                  },
                  child: Container(
                    //width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Image.asset("assets/drawer/logout.png", width:25),
                              SizedBox(width: 10,),
                              Text("Log Out"),
                              ],
                          ),
                        ),

                    ),
                  ),
              ],
            )

          ],
        ),
      ),

      );

  }
}
