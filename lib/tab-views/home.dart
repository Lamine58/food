// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:e_foodivoir/function/function.dart';
import 'package:e_foodivoir/order/invoice.dart';
import 'package:e_foodivoir/qr-code/scan-qr.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<String> imagePaths = [
    'assets/images/la-mousse-du-cappuccino-reussir-son-cappuccino-les-cafes-trottet.jpg',
    'assets/images/large-pourquoi-il-nest-pas-bon-de-manger-du-pain-b891b.jpg',
    'assets/images/LAttieke-au-poisson-thon-Garba.jpg',
    'assets/images/Foutou-Banane-3-1024x683.jpg',
  ];

  final List<String> captions = [
    'Un bon petit déjeuné\nchez Diallo',
    'Du bon pain\nchaud',
    'Bon garba\nchaud',
    'Foutou banane\npate de boeuf',
  ];

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



  _qr(context){
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return QRViewWidget();
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff609b83), Color.fromARGB(255, 36, 68, 61)],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            paddingTop(30),
            Container(
              padding:EdgeInsets.only(left:20,right:20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xff9eb8b0),
                      width: 1,
                    ),
                  ),
                ),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Marchand enregistrer',style: TextStyle(color: Color(0xffcddad8))),
                            Text('680',style: TextStyle(color: Color(0xffcddad8),fontSize: 45)),
                          ],
                        ),
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Color(0xff9eb8b0),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Commandes',style: TextStyle(color: Color(0xffcddad8))),
                          Text('50',style: TextStyle(color: Color(0xffcddad8),fontSize: 45)),
                          paddingTop(5),
                        ],
                      ),
                      VerticalDivider(
                        thickness: 1,
                        color: Color(0xff9eb8b0),
                      ),
                      GestureDetector(
                        onTap: (){
                          _qr(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Color(0xff63a28a),
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Icon(Bootstrap.qr_code_scan,color: Color.fromARGB(255, 224, 231, 230)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:20,right:20,top: 15),
              child: Text('Dèrniere commande',style: TextStyle(color: Color.fromARGB(255, 220, 229, 227),fontSize: 17)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
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
                                    Text('Alloco 2 oeufs - Allocodrome Dokui',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold)),
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
                                    Text('Montant total : 500 XOF',style: TextStyle(color: Color(0xff080808),fontSize: 17,fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            paddingTop(10),
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
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SingleChildScrollView(
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
                                        radius: 32,
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
                                        radius: 32,
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
                                        radius: 32,
                                        backgroundImage: AssetImage('assets/images/LAttieke-au-poisson-thon-Garba.jpg'),
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
                                        radius: 32,
                                        backgroundImage: AssetImage('assets/images/Foutou-Banane-3-1024x683.jpg'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            paddingTop(15),
                            CarouselSlider.builder(
                              itemCount: imagePaths.length,
                              itemBuilder: (BuildContext context, int index, int realIndex) {
                                return Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        image: DecorationImage(
                                          image: AssetImage(imagePaths[index]),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(17),
                                        gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomCenter,
                                          colors: [Colors.black.withOpacity(0.7),Colors.transparent],
                                        ),
                                      ),
                                    ),
                                    Positioned(child: 
                                      Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Text(
                                          captions[index],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    )
                                  ],
                                );
                              },
                              options: CarouselOptions(
                                height: 180,
                                enlargeCenterPage: true,
                                enableInfiniteScroll: false,
                                aspectRatio: 16/9,
                                viewportFraction: 1,
                              ),
                            )
                          ],
                        )
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}