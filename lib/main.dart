import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
    DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp()));
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bottom_navigation_bar(),
    );
  }
}

class bottom_navigation_bar extends StatefulWidget {
  const bottom_navigation_bar({super.key});

  @override
  State<bottom_navigation_bar> createState() => _bottom_navigation_barState();
}

class _bottom_navigation_barState extends State<bottom_navigation_bar> {
  int select=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shorts",style: TextStyle(color: Colors.white,fontSize: 32),),
        backgroundColor: Colors.black,
        actions: [
          IconButton(icon: Icon(Icons.search,color: Colors.white,),
          onPressed: (){},),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,))
        ],
      ),bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.grey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items:<BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),
          label: "Shorts"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle),
          label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions),
          label: "Subscription"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),
          label: "You")
        ]),
      body: Stack(
        children :[
          Container(
          height: double.infinity,
          width: double.infinity,color: Colors.blue,
          child:Image(image: AssetImage("assets/plant.png"),
          fit: BoxFit.fill,),
        ),Container(
          height: double.infinity,
        width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20
                ),
                child: Row(
                  children: [Opacity(opacity: 0.7,child:
                  TextButton(onPressed: (){}, child: Container(
                    height: 20,
                    width: 250,
                    decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(

                      children: [
                        Icon(Icons.subscriptions),SizedBox(width: 1,),
                        Text("Subscriptions"),
                        SizedBox(width: 10,),
                        Opacity(opacity: 0.7,
                          child: TextButton(onPressed: (){},
                              child: Container(
                                height: 20,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [Icon(Icons.live_tv_outlined),
                                    Text("Live")],
                                ),
                              ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ),
                  ),

                  ],
                ),
              ),
              SizedBox(height: 100,),
              Row(
                children: [SizedBox(width: 330,),
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.thumb_up_alt_outlined,
                        size: 40,
                        color: Colors.white,)),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 340,),
                  Text("Like",style: TextStyle(
                      color: Colors.white,
                  fontSize: 15),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [SizedBox(width: 330,),
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.thumb_down_off_alt_outlined,
                        size: 40,
                        color: Colors.white,))
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 330,),
                  Text("Dislike",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [SizedBox(width: 330,),
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.comment,
                        size: 40,
                        color: Colors.white,))
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 340,),
                  Text("3018",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [SizedBox(width: 330,),
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.share,
                        size: 40,
                        color: Colors.white,))
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 340,),
                  Text("Share",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [SizedBox(width: 330,),
                  Container(),
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.add_circle,
                        size: 40,
                        color: Colors.white,))
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 340,),
                  Text("199K",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [SizedBox(width: 20,),
                  Icon(Icons.music_note),
                  Text("School Rooftop (Birds Sounds) hisohkah",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(width: 30,),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage("assets/plant.png"),fit: BoxFit.fill)
                    ),
                  )
                ],
              ),
            ],
          ),
       )
        ]
      ),
    );
  }
}
