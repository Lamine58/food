// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:e_foodivoir/faqs/faqs.dart';
import 'package:e_foodivoir/food/food-space.dart';
import 'package:e_foodivoir/food/menu-food.dart';
import 'package:e_foodivoir/function/function.dart';
import 'package:e_foodivoir/order/orders.dart';
import 'package:e_foodivoir/shop/onboarding-space.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:line_icons/line_icons.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}


class _MenuState extends State<Menu> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(toolbarHeight: 0,elevation: 0,backgroundColor: Colors.white),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Icon(BoxIcons.bxl_whatsapp_square,size: 50,color: Color(0xff63a189)),
              paddingLeft(5),
              Icon(BoxIcons.bxl_facebook_square,size: 50,color: Color(0xff63a189)),
              paddingLeft(5),
              Expanded(child: Text('E-foodIvoire\nv1.0.0',textAlign: TextAlign.end,))
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(LineIcons.user,size: 33),
                    paddingLeft(10),
                    Expanded(child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Ishola\nLamine',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                        paddingTop(20),
                        Text('+225 0172560115')
                      ],
                    )),
                    Icon(Bootstrap.gear,size: 25),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.only(bottom:7),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffd3d3d3),
                    width: 2.0,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(BoxIcons.bx_bowl_rice,size: 33,color: Color(0xff0d0d0d)),
                      paddingLeft(15),
                      Expanded(child: Text('Restaurants',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
                    ],
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FoodSpace('Restaurant')),
              );
            },
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.only(bottom:7),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffd3d3d3),
                    width: 2.0,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(BoxIcons.bx_drink,size: 33,color: Color(0xff0d0d0d)),
                      paddingLeft(15),
                      Expanded(child: Text('Bars/Maquis',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
                    ],
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FoodSpace('Bars/Maquis')),
              );
            },
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.only(bottom:7),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffd3d3d3),
                    width: 2.0,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(LineIcons.hotDog,size: 33,color: Color(0xff0d0d0d)),
                      paddingLeft(15),
                      Expanded(child: Text('Fastfoods',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
                    ],
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FoodSpace('Fastfoods')),
              );
            },
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.only(bottom:7),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffd3d3d3),
                    width: 2.0,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Bootstrap.receipt_cutoff,size: 33,color: Color(0xff0d0d0d)),
                      paddingLeft(15),
                      Expanded(child: Text('Mes commandes',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
                      paddingLeft(5),
                      Container(
                        width: 25,
                        height: 25,
                        child: Center(child: Text('3',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold))),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffdee13f)
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Order()),
              );
            },
          ),
          paddingTop(50),
          ListTile(
            title: Container(
              padding: EdgeInsets.only(bottom:7),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffd3d3d3),
                    width: 2.0,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(BoxIcons.bx_store_alt,size: 33,color: Color(0xff0d0d0d)),
                      paddingLeft(15),
                      Expanded(child: Text('Mon espace',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
                    ],
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnboardingSpace()),
              );
            },
          ),
          ListTile(
            title: Container(
              padding: EdgeInsets.only(bottom:7),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xffd3d3d3),
                    width: 2.0,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(BoxIcons.bx_message_dots,size: 33,color: Color(0xff0d0d0d)),
                      paddingLeft(15),
                      Expanded(child: Text('FAQ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
                    ],
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Faqs()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class MenuButton extends StatelessWidget {

  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      icon: const Icon(Bootstrap.list,size: 33,color: Colors.white),
      color: Colors.white,
      splashColor: Colors.blueAccent,
      highlightColor: Colors.transparent,
    );
  }
}