// ignore_for_file: sort_child_properties_last, prefer_const_constructors
import 'package:e_foodivoir/food/food.dart';
import 'package:e_foodivoir/function/function.dart';
import 'package:e_foodivoir/order/orders.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class MenuFood extends StatefulWidget {

  final scanData;
  const MenuFood(this.scanData, {Key? key}) : super(key: key);

  @override
  State<MenuFood> createState() => _MenuFoodState();
}

class _MenuFoodState extends State<MenuFood> {

  

  _diplayView(view,context){

    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Food();
      },
    );
  }

  @override
  Widget build(BuildContext context) {

   return Scaffold(
     body: 
      Scaffold(
      appBar: statusBarColor(color:Colors.white),
      extendBody: true,
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white
            ),
            padding: EdgeInsets.only(left:20,right: 20,top: 5),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Bootstrap.chevron_left,size: 25,color: Colors.black),
                  color: Colors.black,
                  highlightColor: Colors.transparent,
                ),
                paddingLeft(7),
                GestureDetector(
                  child: Icon(Bootstrap.search,size: 25,color: Colors.black,),
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
                  child: Icon(Bootstrap.bell,size: 25,color: Colors.black),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:15,right:15,),
            child: Text('Marchand: Kiosque Dokui',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
          ),
          paddingTop(5),
          Padding(
            padding: const EdgeInsets.only(left:15,right:15,),
            child: Text('Le menu',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          ),
          paddingTop(10),
          Expanded(
            child: SingleChildScrollView(
              child: GestureDetector(
                onTap: (){
                  _diplayView(Order(),context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/images/large-pourquoi-il-nest-pas-bon-de-manger-du-pain-b891b.jpg'),
                          ),
                          paddingLeft(15),
                          Expanded(
                            child: Text('Pain 2 oeufs',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold))
                          ),
                          Text('400 OXF',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold))
                        ],
                      ),
                      Divider(thickness: 1.5),
                      paddingTop(5),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/images/la-mousse-du-cappuccino-reussir-son-cappuccino-les-cafes-trottet.jpg'),
                          ),
                          paddingLeft(15),
                          Expanded(
                            child: Text('Café',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold))
                          ),
                          Text('300 OXF',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold))
                        ],
                      ),
                      Divider(thickness: 1.5),
                      paddingTop(5),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage('assets/images/LAttieke-au-poisson-thon-Garba.jpg'),
                          ),
                          paddingLeft(15),
                          Expanded(
                            child: Text('Attiéké',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold))
                          ),
                          Text('1 000 OXF',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold))
                        ],
                      ),
                      Divider(thickness: 1.5),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
   );
  }
  
}