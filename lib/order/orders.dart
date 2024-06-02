import 'package:e_foodivoir/function/function.dart';
import 'package:e_foodivoir/order/invoice.dart';
import 'package:e_foodivoir/order/order-data.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {



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
            padding: const EdgeInsets.only(left:25,right: 25),
            child: Row(
              children: [
                Expanded(child: Text('Mes\nCommandes',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
                Icon(Bootstrap.receipt_cutoff,size: 20,color: Color(0xff0d0d0d)),
                paddingLeft(15),
                Text('3',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          paddingTop(10),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xfff4f4f4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(17),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color.fromARGB(255, 228, 228, 228),
                                      width: 2,
                                    ),
                                  ),
                                ),
                                child: IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('N°289-921',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold)),
                                          paddingTop(10),
                                        ],
                                      ),
                                      paddingLeft(20),                              VerticalDivider(
                                        thickness: 2,
                                        color: Color.fromARGB(255, 228, 228, 228),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Pain 2 oeufs, Café, Attiéké - Kiosque',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold))
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          paddingTop(10),
                                          SizedBox(
                                            height: 25,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                backgroundColor: Color(0xffdee23d),
                                              ),
                                              onPressed: (){ _diplayView(Invoice(),context); },
                                              child: GestureDetector(
                                                child: Text('Voir le reçu',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                              )
                                            ),
                                          ),
                                          paddingTop(10),
                                        ],
                                      ),
                                      VerticalDivider(
                                        thickness: 2,
                                        color: Color.fromARGB(255, 228, 228, 228),
                                      ),
                                      Expanded(
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            paddingTop(10),
                                            Text('Montant total : 1700 XOF',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Color.fromARGB(255, 226, 226, 226),
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.all(3),
                                              child: CircleAvatar(
                                                radius: 24,
                                                backgroundImage: AssetImage('assets/images/la-mousse-du-cappuccino-reussir-son-cappuccino-les-cafes-trottet.jpg'),
                                              ),
                                            ),
                                          ),
                                          paddingLeft(7),
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Color.fromARGB(255, 226, 226, 226),
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.all(3),
                                              child: CircleAvatar(
                                                radius: 24,
                                                backgroundImage: AssetImage('assets/images/large-pourquoi-il-nest-pas-bon-de-manger-du-pain-b891b.jpg'),
                                              ),
                                            ),
                                          ),
                                          paddingLeft(7),
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Color.fromARGB(255, 226, 226, 226),
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.all(3),
                                              child: CircleAvatar(
                                                radius: 24,
                                                backgroundImage: AssetImage('assets/images/LAttieke-au-poisson-thon-Garba.jpg'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){ _diplayView(OrderData(),context); },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          color: primaryColor(),
                                          width: 2.0,
                                        ),
                                      ),
                                      padding: EdgeInsets.only(top:5,left: 12,right: 12,bottom: 5),
                                      child: Text('Détails',style: TextStyle(fontWeight: FontWeight.bold)),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    paddingTop(20),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xfff4f4f4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(17),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color.fromARGB(255, 228, 228, 228),
                                      width: 2,
                                    ),
                                  ),
                                ),
                                child: IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('N°289-922',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold)),
                                          paddingTop(10),
                                        ],
                                      ),
                                      paddingLeft(20),                              VerticalDivider(
                                        thickness: 2,
                                        color: Color.fromARGB(255, 228, 228, 228),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Café, Attiéké - Allocodrome Dokui',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          paddingTop(10),
                                          SizedBox(
                                            height: 25,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                backgroundColor: Color(0xffdee23d),
                                              ),
                                              onPressed: (){},
                                              child: Text('Voir le reçu',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))
                                            ),
                                          ),
                                          paddingTop(10),
                                        ],
                                      ),
                                      VerticalDivider(
                                        thickness: 2,
                                        color: Color.fromARGB(255, 228, 228, 228),
                                      ),
                                      Expanded(
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            paddingTop(10),
                                            Text('Montant total : 1500 XOF',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Color.fromARGB(255, 226, 226, 226),
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.all(3),
                                              child: CircleAvatar(
                                                radius: 24,
                                                backgroundImage: AssetImage('assets/images/la-mousse-du-cappuccino-reussir-son-cappuccino-les-cafes-trottet.jpg'),
                                              ),
                                            ),
                                          ),
                                          paddingLeft(7),
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Color.fromARGB(255, 226, 226, 226),
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.all(3),
                                              child: CircleAvatar(
                                                radius: 24,
                                                backgroundImage: AssetImage('assets/images/LAttieke-au-poisson-thon-Garba.jpg'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color: primaryColor(),
                                        width: 2.0,
                                      ),
                                    ),
                                    padding: EdgeInsets.only(top:5,left: 12,right: 12,bottom: 5),
                                    child: Text('Détails',style: TextStyle(fontWeight: FontWeight.bold)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xfff4f4f4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(17),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color.fromARGB(255, 228, 228, 228),
                                      width: 2,
                                    ),
                                  ),
                                ),
                                child: IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Text('N°289-923',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold)),
                                          paddingTop(10),
                                        ],
                                      ),
                                      paddingLeft(20),                              VerticalDivider(
                                        thickness: 2,
                                        color: Color.fromARGB(255, 228, 228, 228),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Attiéké, Pain - Allocodrome Dokui',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: IntrinsicHeight(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          paddingTop(10),
                                          SizedBox(
                                            height: 25,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                elevation: 0,
                                                backgroundColor: Color(0xffdee23d),
                                              ),
                                              onPressed: (){},
                                              child: Text('Voir le reçu',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))
                                            ),
                                          ),
                                          paddingTop(10),
                                        ],
                                      ),
                                      VerticalDivider(
                                        thickness: 2,
                                        color: Color.fromARGB(255, 228, 228, 228),
                                      ),
                                      Expanded(
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            paddingTop(10),
                                            Text('Montant total : 1300 XOF',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Color.fromARGB(255, 226, 226, 226),
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.all(3),
                                              child: CircleAvatar(
                                                radius: 24,
                                                backgroundImage: AssetImage('assets/images/large-pourquoi-il-nest-pas-bon-de-manger-du-pain-b891b.jpg'),
                                              ),
                                            ),
                                          ),
                                          paddingLeft(7),
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Color.fromARGB(255, 226, 226, 226),
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.all(3),
                                              child: CircleAvatar(
                                                radius: 24,
                                                backgroundImage: AssetImage('assets/images/LAttieke-au-poisson-thon-Garba.jpg'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color: primaryColor(),
                                        width: 2.0,
                                      ),
                                    ),
                                    padding: EdgeInsets.only(top:5,left: 12,right: 12,bottom: 5),
                                    child: Text('Détails',style: TextStyle(fontWeight: FontWeight.bold)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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