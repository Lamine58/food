// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_foodivoir/cart-wilsh/cart.dart';
import 'package:e_foodivoir/function/function.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:line_icons/line_icons.dart';

class FoodSpace extends StatefulWidget {

  late String type = ''; 
  FoodSpace(this.type,{Key? key}) : super(key: key);

  @override
  State<FoodSpace> createState() => _FoodSpaceState();
}

class _FoodSpaceState extends State<FoodSpace> {

  late String categorie = '';

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

  item(name,count){
    return GestureDetector(
      onTap: () {
        setState(() {
          categorie = name;
        });
      },
      child: Container(
        padding: EdgeInsets.only(top:10,bottom: 10,left: 20,right: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: categorie==name ? Colors.transparent : Color(0xFF7E9C91),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(30),
          color: categorie==name ? Color(0xffe0e33e) : Colors.transparent,
        ),
        child: Text(
          '$name : $count',
          style: TextStyle(
            color: categorie==name ? Colors.black : Colors.white,
            fontSize: 15
          )
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Bootstrap.chevron_left,size: 25,color: Colors.white),
                  color: Colors.white,
                  highlightColor: Colors.transparent,
                ),
                paddingLeft(7),
                GestureDetector(
                  child: Icon(Bootstrap.search,size: 25,color: Colors.white,),
                ),
                Expanded(child: SizedBox()),
                paddingLeft(5),
                GestureDetector(
                  onTap: (){
                    _diplayView(Cart(),context);
                  },
                  child: Icon(Bootstrap.basket,size: 25,color: Colors.white,),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff609b83), Color.fromARGB(255, 36, 68, 61)],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                ),
              ),
              child: Column(
                children: [
                  paddingTop(40),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.type='Restaurant';
                            });
                          },
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: widget.type=='Restaurant' ? Color(0xff63a28a) : Color(0xff334b4b)
                            ),
                            child: Icon(BoxIcons.bx_bowl_rice,size: 28,color: Color.fromARGB(209, 239, 240, 244)),
                          ),
                        ),
                        paddingLeft(7),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.type='Bars/Maquis';
                            });
                          },
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: widget.type=='Bars/Maquis' ? Color(0xff63a28a) : Color(0xff334b4b)
                            ),
                            child: Icon(BoxIcons.bx_drink,size: 28,color: Color.fromARGB(209, 239, 240, 244)),
                          ),
                        ),
                        paddingLeft(7),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.type='Fastfoods';
                            });
                          },
                          child: Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: widget.type=='Fastfoods' ? Color(0xff63a28a) : Color(0xff334b4b)
                            ),
                            child: Icon(LineIcons.hotDog,size: 28,color: Color.fromARGB(209, 239, 240, 244)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  paddingTop(30),
                  Text(widget.type,style: TextStyle(color: Colors.white,fontSize: 20)),
                  paddingTop(20),
                  Container(
                    padding: EdgeInsets.only(top:10,bottom: 10,left: 20,right: 20),
                    child: Text('Resultats : 43',style: TextStyle(color: Colors.white,fontSize: 20)),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff63a28a), // Border color
                        width: 2.0, // Border width
                      ),
                      borderRadius: BorderRadius.circular(30), // Border radius
                    )
                  ),
                  paddingTop(50),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          item('Deserts','3'),
                          paddingLeft(10),
                          item('Repas','4'),
                          paddingLeft(10),
                          item('Sucrée','6'),
                          paddingLeft(10),
                          item('Salé','10'),
                          paddingLeft(10),
                          item('Resistance','14'),
                          paddingLeft(10),
                          item('Douceur','7')
                        ],
                      ),
                    ),
                  ),
                  paddingTop(30),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left:15,right: 15,bottom: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
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
                          paddingTop(20),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom:20),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: MediaQuery.sizeOf(context).width-30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(17),
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/recettes-plats-mijotes-repas-dominical1.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.sizeOf(context).width-30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(17),
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomCenter,
                                              colors: [Colors.black.withOpacity(0.7),Colors.transparent],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 30,
                                          child: Padding(
                                            padding: const EdgeInsets.all(20),
                                            child: Text(
                                              'Restaurant Ivoirien\nCocody\nRivera 2',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          )
                                        )
                                      ],
                                    ),
                                    paddingLeft(20),
                                    Stack(
                                      children: [
                                        Container(
                                          width: MediaQuery.sizeOf(context).width-30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/i150323-repas-de-noel.jpeg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.sizeOf(context).width-30,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomCenter,
                                              colors: [Colors.black.withOpacity(0.7),Colors.transparent],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 30,
                                          child: Padding(
                                            padding: const EdgeInsets.all(20),
                                            child: Text(
                                              'Restaurant Ivoirien\nCocody\nRivera 3',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          )
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}