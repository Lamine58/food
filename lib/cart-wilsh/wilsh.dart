import 'package:e_foodivoir/function/function.dart';
import 'package:flutter/material.dart';

class Wilsh extends StatefulWidget {
  const Wilsh({Key? key}) : super(key: key);

  @override
  State<Wilsh> createState() => _WilshState();
}

class _WilshState extends State<Wilsh> {

  var datas = [{"image":"assets/images/baguette-bread-cutout-file-png.webp","title":"Pain","price":"500 XOF","description":"Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum..."},{"image":"assets/images/Ice-Cream-Cone-PNG-Pic.png","title":"Glace","price":"2 000 XOF","description":"Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum..."}];

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
            child: Text('Creer une commande',style: TextStyle(fontSize: 20))
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Mes favoris',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
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