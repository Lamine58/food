// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_foodivoir/function/function.dart';
import 'package:flutter/material.dart';

class FaqsData extends StatefulWidget {
  const FaqsData({Key? key}) : super(key: key);

  @override
  State<FaqsData> createState() => _FaqsDataState();
}

class _FaqsDataState extends State<FaqsData> {

  var datas = [{"image":"assets/images/image-1.png","title":"Gateaux à la fraise","price":"3 400 XOF","description":"Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum..."},{"image":"assets/images/image-2.png","title":"Viande fraiche","price":"5 400 XOF","description":"Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum..."}];

  @override
  Widget build(BuildContext context) {

    final crossAxisCount = (MediaQuery.of(context).size.width / 200).round();

    return Container(
      padding: EdgeInsets.all(20),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Comment fonctionne les commandes de nourriture ?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
            paddingTop(40),
            Expanded(
              child: Text('Notre application de commande de nourriture vous permet de parcourir les menus des restaurants locaux, de passer des commandes, et de payer en ligne. Vous pouvez sélectionner les plats désirés, personnaliser les options si nécessaire, et finaliser la commande en quelques clics.',style: TextStyle(fontSize: 17),)
            )
          ],
        ),
      ),
    );
  }
}