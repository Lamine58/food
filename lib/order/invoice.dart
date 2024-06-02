import 'package:e_foodivoir/function/function.dart';
import 'package:flutter/material.dart';

class Invoice extends StatefulWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {

  var datas = [{"image":"assets/images/image-1.png","title":"Gateaux à la fraise","price":"3 400 XOF","description":"Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum..."},{"image":"assets/images/image-2.png","title":"Viande fraiche","price":"5 400 XOF","description":"Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum..."}];

  @override
  Widget build(BuildContext context) {

    final crossAxisCount = (MediaQuery.of(context).size.width / 200).round();

    return Container(
      padding: EdgeInsets.all(20),
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10)
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: secondaryColor(),
              elevation:0,
            ),
            onPressed: (){},
            child: Text('imprimer le reçu',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold))
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Commande N°289-921',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
            paddingTop(5),
            Text('Marchand: Kiosque Dokui',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: primaryColor())),
            paddingTop(40),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
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