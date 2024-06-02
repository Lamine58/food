// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:e_foodivoir/cart-wilsh/cart.dart';
import 'package:e_foodivoir/cart-wilsh/wilsh.dart';
import 'package:e_foodivoir/function/function.dart';
import 'package:e_foodivoir/tab-views/home.dart';
import 'package:e_foodivoir/widget/menu.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs>  with TickerProviderStateMixin {
  var _selectedTab = _SelectedTab.home;
  var _index = 0;
  var views=[
    Home(),
  ];

  void _handleIndexChanged(int i,) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
      _index = i;
      if(i==1){
        _diplayView(Cart(),context);
      }
      if(i==2){
        _diplayView(Wilsh(),context);
      }
    });
  }

 _diplayView(view,context){

    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height*0.88,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 12,
                  width: 110,
                  padding: EdgeInsets.only(left: 10,right: 10,bottom: 7),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff609b83), Color.fromARGB(255, 36, 68, 61)],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )
                  ),
                  child: Container(
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15)
                      )
                    )
                  )
                ),
              ),
              Expanded(child: view)
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: const Menu(),
      ),
      appBar: statusBar(),
      extendBody: true,
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff609b83), Color.fromARGB(255, 36, 68, 61)],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
            ),
            padding: EdgeInsets.only(left:20,right: 20,top: 5),
            child: Row(
              children: [
                MenuButton(),
                paddingLeft(7),
                GestureDetector(
                  child: Icon(Bootstrap.gear,size: 25,color: Colors.white,),
                ),
                Expanded(child: SizedBox()),
                GestureDetector(
                  child: Container(
                    width: 20,
                    height: 20,
                    child: Center(child: Text('2',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold))),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color(0xffdee13f)
                    ),
                  ),
                ),
                paddingLeft(5),
                GestureDetector(
                  child: Icon(Bootstrap.bell,size: 25,color: Colors.white,),
                )
              ],
            ),
          ),
          Expanded(
            // child: views[_index],
            child: Home(),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        // padding: EdgeInsets.only(left:35,right: 35),
        child: DotNavigationBar(
          backgroundColor: Color(0xff354b4b),
          paddingR: EdgeInsets.all(0),
          margin: EdgeInsets.all(0),
          marginR: EdgeInsets.only(left:(MediaQuery.of(context).size.width-215)/2,right: (MediaQuery.of(context).size.width-215)/2),
          itemPadding: EdgeInsets.only(top:7,bottom: 7),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Colors.transparent,
          unselectedItemColor: Colors.white,
          borderRadius: 50,
          onTap: _handleIndexChanged,
          items: [
            DotNavigationBarItem(
              icon: Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  color: _SelectedTab.home==_selectedTab ? Color(0xff63a28a) : Colors.transparent,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(_SelectedTab.home==_selectedTab ? Bootstrap.house_fill: Bootstrap.house,size: 25),
              ),
              selectedColor: Colors.white,
            ),
            DotNavigationBarItem(
              icon: Container(
                height: 67,
                width: 67,
                decoration: BoxDecoration(
                  color: _SelectedTab.cart==_selectedTab ? Color(0xff63a28a) : Colors.transparent,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(_SelectedTab.cart==_selectedTab ? Bootstrap.basket_fill : Bootstrap.basket,size: 25),
              ),
              selectedColor: Colors.white,
            ),
            DotNavigationBarItem(
              icon: Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  color: _SelectedTab.wilsh==_selectedTab ? Color(0xff63a28a) : Colors.transparent,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Icon(_SelectedTab.wilsh==_selectedTab ? OctIcons.heart_fill_24  : OctIcons.heart_24,size: 25),
              ),
              selectedColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab {home, cart, wilsh}