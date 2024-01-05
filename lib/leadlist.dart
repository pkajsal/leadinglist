import 'package:callapp/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Leads extends StatefulWidget {
  const Leads({super.key});

  @override
  State<Leads> createState() => _LeadsState();
}

class _LeadsState extends State<Leads> {
  List<String> name = [
    "David murugali",
    "David murugali",
    "David murugali",
    "David murugali",
    "David murugali",

  ];
  List<String> email = [
    "example@gmail.com",
    "example@gmail.com",
    "example@gmail.com",
    "example@gmail.com",
    "example@gmail.com",

  ];
  List<int> number = [105677777, 200988877, 3012345566, 108765555, 208765542,];
  List<String> image = [
    "images/number.jpg",
    "images/number.jpg",
    "images/number.jpg",
    "images/number.jpg",
    "images/number.jpg",

  ];
  @override
  Widget build(BuildContext context) {
     // final object = Provider.of<Provider_class>(context);
    return Scaffold(
appBar: AppBar(

  title: Text("Lead list",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,letterSpacing: 1),),
  leading: Icon(Icons.menu_outlined,color: Colors.black,),
  actions: [
    Icon(Icons.notifications,color: Colors.black,)
  ],


  backgroundColor: Colors.white,
),
        body: ListView.builder(
            itemCount: name.length,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image(
                            height: 100,
                            width: 100,
                            image: AssetImage(image[index].toString()),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  name[index].toString(),
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  email[index].toString(),
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  number[index].toString(),
                                  style: TextStyle(fontSize: 16),
                                ),
                                Icon(Icons.phone,size: 50,),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: GestureDetector(
                                      onTap: (){

                                        // object.favorites(name[index], image[index], email[index],number[index]);
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                            BorderRadius.circular(50)),
                                        child: Center(
                                          child: Text(
                                            'Flutter',
                                            style: TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            })
    );
  }
}
