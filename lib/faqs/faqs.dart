// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_foodivoir/Faqs/Faqs-data.dart';
import 'package:e_foodivoir/function/function.dart';
import 'package:e_foodivoir/order/invoice.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Faqs extends StatefulWidget {
  const Faqs({Key? key}) : super(key: key);

  @override
  State<Faqs> createState() => _FaqsState();
}

class _FaqsState extends State<Faqs> {



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
                      colors: [Color.fromARGB(122, 0, 0, 0), Color.fromARGB(122, 0, 0, 0)],
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
      appBar: statusBarColor(color:Colors.white),
      extendBody: true,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
            padding: const EdgeInsets.only(left:25,right: 25),
            child: Row(
              children: [
                Expanded(child: Text('Foire Aux Questions',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              ],
            ),
          ),
          paddingTop(20),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _diplayView(FaqsData(),context);
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Text("Comment fonctionne les commandes de nourriture ?",style: TextStyle(color: Color(0xff080808),fontSize: 20,fontWeight: FontWeight.bold))
                          ),
                          Icon(Icons.chevron_right,size: 30)
                        ],
                      ),
                    ),
                    paddingTop(10),
                    Divider(thickness: 1.5),
                    paddingTop(10),
                    Row(
                      children: [
                        Expanded(
                          child: Text("Quels types de restaurants sont disponibles sur l'application ?",style: TextStyle(color: Color(0xff080808),fontSize: 20,fontWeight: FontWeight.bold))
                        ),
                        Icon(Icons.chevron_right,size: 30)
                      ],
                    ),
                    paddingTop(10),
                    Divider(thickness: 1.5),
                    paddingTop(10),
                    Row(
                      children: [
                        Expanded(
                          child: Text("Comment puis-je payer mes commandes ?",style: TextStyle(color: Color(0xff080808),fontSize: 20,fontWeight: FontWeight.bold))
                        ),
                        Icon(Icons.chevron_right,size: 30)
                      ],
                    ),
                    paddingTop(10),
                    Divider(thickness: 1.5),
                    paddingTop(10),
                    Row(
                      children: [
                        Expanded(
                          child: Text("Proposez-vous des options de livraison ou seulement de la commande à emporter ?",style: TextStyle(color: Color(0xff080808),fontSize: 20,fontWeight: FontWeight.bold))
                        ),
                        Icon(Icons.chevron_right,size: 30)
                      ],
                    ),
                    paddingTop(10),
                    Divider(thickness: 1.5),
                    paddingTop(10),
                    Row(
                      children: [
                        Expanded(
                          child: Text("Que faire si ma commande comporte des erreurs ou des articles manquants ?",style: TextStyle(color: Color(0xff080808),fontSize: 20,fontWeight: FontWeight.bold))
                        ),
                        Icon(Icons.chevron_right,size: 30)
                      ],
                    ),
                    paddingTop(10),
                    Divider(thickness: 1.5),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}