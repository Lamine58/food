// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_foodivoir/function/function.dart';
import 'package:flutter/material.dart';

class OrderData extends StatefulWidget {
  const OrderData({Key? key}) : super(key: key);

  @override
  State<OrderData> createState() => _OrderDataState();
}

class _OrderDataState extends State<OrderData> {

  var datas = [{"image":"assets/images/image-1.png","title":"Gateaux à la fraise","price":"3 400 XOF","description":"Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum..."},{"image":"assets/images/image-2.png","title":"Viande fraiche","price":"5 400 XOF","description":"Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum..."}];

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(20),
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50)
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor(),
              elevation:0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
            ),
            onPressed: (){},
            child: Text('refaire la commade',style: TextStyle(fontSize: 20))
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Détail commande N°289-921',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
            paddingTop(5),
            Text('Marchand: Kiosque Dokui',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: primaryColor())),
            paddingTop(40),
            Expanded(
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
                  paddingTop(10),
                  Row(
                    children: [
                      Expanded(
                        child: Text('TOTAL',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold))
                      ),
                      Text('1 700 OXF',style: TextStyle(color: Color(0xff080808),fontSize: 30,fontWeight: FontWeight.bold))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}