// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:e_foodivoir/function/function.dart';
import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {

    late String categorie = '';

    item(name,count){
      return GestureDetector(
        onTap: () {
          setState(() {
            categorie = name;
          });
        },
        child: Container(
          padding: EdgeInsets.only(top:7,bottom: 7,left: 18,right: 18),
          decoration: BoxDecoration(
            border: Border.all(
              color: categorie==name ? Colors.transparent : Color(0xFF7E9C91),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(30),
            color: categorie==name ? Color(0xffe0e33e) : Colors.transparent,
          ),
          child: Text(
            '$name $count',
            style: TextStyle(
              color: categorie==name ? Colors.black : Color(0xFF7E9C91),
              fontSize: 13
            )
          )
        ),
      );
    }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*0.60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              paddingTop(100),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 70),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                    color: Colors.white
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Attiéké - Thon',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        paddingTop(10),
                        Text(
                          'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Numquam suscipit unde quos porro odit iusto totam, libero enim tempora dolores dolor minus voluptatibus laboriosam accusantium debitis, ab maiores. Suscipit, quis?',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 98, 98, 98)
                          ),
                        ),
                        paddingTop(30),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                item('Total de 500 XOF',''),
                                paddingLeft(10),
                                item('Total de 700 XOF',''),
                                paddingLeft(10),
                                item('Total de 1 000 XOF',''),
                                paddingLeft(10),
                                item('Total de 1 500 XOF',''),
                                paddingLeft(10),
                                item('Total de 2 000 XOF',''),
                              ],
                            ),
                          ),
                        ),
                        paddingTop(40),
                        categorie!=''
                        ? SizedBox(
                            height: 45,
                            width: MediaQuery.sizeOf(context).width,
                            child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor(),
                              elevation:0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)
                              ),
                            ),
                            onPressed: (){},
                            child: Text('Passer la commande',style: TextStyle(fontSize: 20))),
                          )
                        : SizedBox()
                      ],
                    ),
                  ),
                )
              )
            ],
          ),
        ),
        Positioned(
          child: Container (
            decoration: BoxDecoration(
              // color: Color(0xFFf4f4f4),
              borderRadius: BorderRadius.circular(80),
              border: Border.all(
                color: secondaryColor(),
                width: 1.3,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: CircleAvatar( 
                radius: 75,
                backgroundImage: AssetImage('assets/images/LAttieke-au-poisson-thon-Garba.jpg'),
                backgroundColor: Color.fromARGB(36, 207, 207, 207)
              ),
            )
          ),
          top: 0,
          left:  (MediaQuery.sizeOf(context).width/2)-85,
        ),
      ],
    );
  }
}