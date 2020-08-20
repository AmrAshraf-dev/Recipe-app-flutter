import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'DetailsScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex=0;

  ///Image paths and food names
  final images = [
    "assets/burger.jpg",
    "assets/chicken_g.jpg",
    "assets/chiken_f.jpeg",
    "assets/pizza.jpg",
    "assets/spaghetti.jpg",
  ];
  final foodNames = [
    "Grilled Burger",
    "Grilled Chicken",
    "Crispy Fried Chicken",
    "Pizza",
    "Pasta"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home')),
         BottomNavigationBarItem(icon: Icon(Icons.fastfood),title: Text('Fast Food')),
         BottomNavigationBarItem(icon: Icon(Icons.subscriptions),title: Text('Subscription')),
         BottomNavigationBarItem(icon: Icon(Icons.settings),title: Text('Settings')),
       ],
       iconSize:30,
       currentIndex: selectedIndex,
       onTap:(index){
         setState(() {
           selectedIndex = index;
         });
       },
       type: BottomNavigationBarType.fixed,
     ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ///Container for header
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text('Looking for your favorite meal',
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 30,
                        ),
                        ),
                      ),
                      // For spacing
                      SizedBox(
                        width: size.width*0.05,
                      ),
                      IconButton(
                        icon: Icon(Icons.search),
                        color: Colors.grey[800],
                        onPressed: (){},
                      ),
                      IconButton(
                        icon: Icon(Icons.notifications_none),
                        color: Colors.grey[800],
                        onPressed: (){},
                      ),
                    ],
                  ),
                ),
                /// For Vertical Spacing
                SizedBox(height: size.height*0.05,),

                ///Container for List of Recipes type
                Container(
                  height: size.height*0.25,
                  child:ListView.separated(
                    shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return AspectRatio(
                          aspectRatio: 0.9/1,
                          /// width:screen,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  child: ClipRRect(
                                      child: Image.asset(images[index],fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                              /// Add Text Also
                               SizedBox(width: size.width*0.05,), //For spacing

                              Padding(
                                padding:EdgeInsets.symmetric(horizontal: size.width*0.02),
                                child: Text('${foodNames[index]}',
                                  style: GoogleFonts.roboto(color: Colors.grey[800],fontSize: 11),
                                ),
                              ),
                            ],
                          ),
                        );

                      },
                      separatorBuilder: (context,_) => SizedBox(width: size.width*0.03),
                      itemCount: 5),
                ),

                ///For quick recipe list
                Container(
                  height: size.height * 0.35,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => DetailsScreen(images[4 - index],foodNames[4 - index]) /// Material Page Route
                            ));
                          },
                          child: AspectRatio(
                              aspectRatio: 0.9 / 1,

                              ///Width : screen,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Hero(
                                      child: Container(
                                        child: ClipRRect(
                                          child: Image.asset(
                                            images[4 - index],
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        margin: EdgeInsets.only(top: size.height*0.03),
                                      ),
                                      tag: images[4 - index],
                                    ),
                                  ),

                                  ///Add Text Also,
                                  SizedBox(
                                    height: size.height*0.03,
                                  ),

                                  ///For spacing

                                  Padding(
                                    padding:EdgeInsets.symmetric(
                                        horizontal: size.width*0.04),
                                    child: Text(
                                      "${foodNames[4 - index]}",
                                      style: GoogleFonts.roboto(
                                          color: Colors.grey[800],
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding:EdgeInsets.symmetric(
                                        horizontal: size.width*0.04),
                                    child: Text(
                                      "Recipe by Sarah Ahmed",
                                      style: GoogleFonts.roboto(
                                          color: Colors.grey[600], fontSize: 11),
                                    ),
                                  )
                                ],
                              )),
                        );
                      },
                      separatorBuilder: (context, _) => SizedBox(
                        width: size.width*0.05,
                      ),
                      itemCount: 4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
