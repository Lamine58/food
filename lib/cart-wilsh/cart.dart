import 'package:e_foodivoir/function/function.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {

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
              backgroundColor: primaryColor(),
              elevation:0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)
              ),
            ),
            onPressed: (){},
            child: Text('Passer la commande',style: TextStyle(fontSize: 20))
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Mon panier',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
            paddingTop(0),
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    mainAxisExtent: 260
                  ),
                  padding: const EdgeInsets.only(top: 10),
                  itemCount: datas.length,
                  itemBuilder: (context, index) {

                    var data = datas[index];

                    return GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xfff4f4f4),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(child:Text(data['price'].toString(),style:TextStyle(fontSize: 13,fontWeight: FontWeight.bold))),
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: primaryColor(),
                                    ),
                                    child: Icon(Icons.remove,color: Colors.white,),
                                  )
                                ],
                              ),
                              paddingTop(10),
                              Center(child: Image.asset(data['image'].toString(),height: 100)),
                              paddingTop(10),
                              SizedBox(child: Text(data['title'].toString(),style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),width: MediaQuery.sizeOf(context).width),
                              paddingTop(5),
                              SizedBox(child: Text(data['description'].toString(),style: TextStyle(fontSize: 13)),width: MediaQuery.sizeOf(context).width),
                            ],
                          )
                        ),
                      ),
                    );
                  },
                )
            )
          ],
        ),
      ),
    );
  }
}