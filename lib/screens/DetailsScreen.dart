import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget {
  final image;
  String foodNames;
  ///For hero tagging and showing relative image
  DetailsScreen(this.image, this.foodNames);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
       body: Container(
         width: double.infinity,
         height: double.infinity,
         child: Stack(
           children: [
             Hero(
               child: Container(
                 height: size.height*0.5,
                 child: Image.asset(image , fit:BoxFit.cover),
               ),
               tag: image,
             ),
             ///Container for more content
             DraggableScrollableSheet(
               maxChildSize: 1,
               initialChildSize: 0.6,
               minChildSize: 0.6,
               builder: (context,controller){
                 return SingleChildScrollView(
                   controller: controller,
                   child: Container(
                     height: 800,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.only(
                         topLeft: Radius.circular(40),
                         topRight: Radius.circular(40),
                       ),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Row(
                           children: [
                             Container(
                               child: Text(foodNames,
                               style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.bold),
                               ),
                               margin: EdgeInsets.only(left: size.width*0.05,top:size.height*0.03),
                             ),
                             Spacer(),
                             Container(
                               child: IconButton(
                                 icon: Icon(Icons.favorite),
                                 color: Colors.redAccent,
                                 iconSize: 30,
                                 onPressed: (){},
                               ),
                               margin: EdgeInsets.only(top:size.height*0.04),
                             ),
                           ],
                         ),
                         Container(
                           child: Text(
                             "By Sarah Ahmed",
                             style: GoogleFonts.roboto(
                               fontWeight: FontWeight.w300,
                             ),
                           ),
                           margin: EdgeInsets.only(right: size.width*0.63),
                         ),

                         SizedBox(
                           height: 4,
                         ),

                            Container(
                              margin: EdgeInsets.only(left: size.width*0.05),
                              child: Row(
                               children: <Widget>[
                                 Icon(
                                   Icons.star,
                                   color: Colors.orange,
                                   size: 15,
                                 ),
                                 Icon(
                                   Icons.star,
                                   color: Colors.orange,
                                   size: 15,
                                 ),
                                 Icon(
                                   Icons.star,
                                   color: Colors.orange,
                                   size: 15,
                                 ),
                                 Icon(
                                   Icons.star,
                                   color: Colors.orange,
                                   size: 15,
                                 ),
                                 Icon(
                                   Icons.star,
                                   color: Colors.grey[400],
                                   size: 15,
                                 ),
                               ],
                           ),
                            ),

                         SizedBox(
                           height: 24,
                         ),

                         ///Container for food information
                         Container(
                           child: Row(
                             children: <Widget>[
                               Expanded(
                                 child: Container(
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       border:
                                       Border.all(color: Colors.grey[200])),
                                   padding:
                                    EdgeInsets.symmetric(vertical: size.height*0.025),
                                   child: Column(
                                     children: <Widget>[
                                       Text(
                                         "Calories",
                                         style: GoogleFonts.roboto(
                                             color: Colors.grey),
                                       ),
                                       Text(
                                         "174KCal",
                                         style: GoogleFonts.roboto(
                                             color: Colors.grey[900],
                                             fontWeight: FontWeight.bold),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               SizedBox(
                                 width: 10,
                               ),
                               Expanded(
                                 child: Container(
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       border:
                                       Border.all(color: Colors.grey[200])),
                                   padding:
                                    EdgeInsets.symmetric(vertical: size.height*0.025),
                                   child: Column(
                                     children: <Widget>[
                                       Text(
                                         "Ingredients",
                                         style: GoogleFonts.roboto(
                                             color: Colors.grey),
                                       ),
                                       Text(
                                         "06",
                                         style: GoogleFonts.roboto(
                                             color: Colors.grey[900],
                                             fontWeight: FontWeight.bold),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                               SizedBox(
                                 width: 10,
                               ),
                               Expanded(
                                 child: Container(
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       border:
                                       Border.all(color: Colors.grey[200])),
                                   padding:
                                    EdgeInsets.symmetric(vertical: size.height*0.025),
                                   child: Column(
                                     children: <Widget>[
                                       Text(
                                         "Time",
                                         style: GoogleFonts.roboto(
                                             color: Colors.grey),
                                       ),
                                       Text(
                                         "3 Hours",
                                         style: GoogleFonts.roboto(
                                             color: Colors.grey[900],
                                             fontWeight: FontWeight.bold),
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ),

                         SizedBox(
                           height: 24,
                         ),

                         Container(
                           child: Text(
                             "About Recipe",
                             style: GoogleFonts.roboto(
                                 fontSize: 20, fontWeight: FontWeight.bold),
                           ),
                           margin: EdgeInsets.only(right:size.width*0.6),
                         ),

                         SizedBox(
                           height: 4,
                         ),

                         Padding(
                           padding:EdgeInsets.only(left: size.width*0.05,right: size.width*0.05),
                           child: Container(
                             child: Text(
                               "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                               style: GoogleFonts.roboto(
                                   fontWeight: FontWeight.w300, color: Colors.grey),
                             ),
                           ),
                         ),

                         SizedBox(
                           height: 24,
                         ),

                         Container(
                           child: Text(
                             "Cooking Method",
                             style: GoogleFonts.roboto(
                                 fontSize: 20, fontWeight: FontWeight.bold),
                           ),
                           margin: EdgeInsets.only(right:size.width*0.5),
                         ),

                         SizedBox(
                           height: 4,
                         ),

                         Expanded(
                           child: Padding(
                             padding:EdgeInsets.only(left: size.width*0.05,right: size.width*0.05),
                             child: Container(
                               child: Text(
                                 "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam gravida mauris ut semper posuere. Fusce volutpat neque non elementum rutrum. Phasellus et lacus et lacus accumsan commodo ac quis felis. Proin quam lorem, pellentesque in pretium ac, convallis et massa. Donec in nisi magna. In rutrum, nibh id interdum auctor, nisl elit ultricies arcu, ut ullamcorper ipsum mauris quis eros. Aenean ex tortor, pretium eu vulputate a, consectetur vel diam. Cras nulla nisl, euismod eu purus ac, sagittis viverra elit. Duis pulvinar sem quis fermentum iaculis. Quisque pharetra turpis velit, ut hendrerit tortor finibus id. Sed eu pretium libero.Vestibulum semper justo eu purus suscipit scelerisque. Proin eget rhoncus ex. Nam eget egestas nisi. Morbi molestie imperdiet sapien, ut ornare est laoreet in. Nam fermentum venenatis lorem, et scelerisque ante fermentum eget. Vestibulum eget urna ullamcorper, consequat odio et, efficitur arcu. Ut molestie feugiat tristique. Ut lectus erat, malesuada eget elit et, laoreet commodo augue. Nullam at velit vel ipsum tristique rhoncus. Fusce euismod facilisis lorem nec consequat. Donec in turpis tellus. Nunc at massa et sapien hendrerit volutpat. Curabitur condimentum, nibh hendrerit fermentum suscipit, justo lacus pellentesque felis, vitae rhoncus mi est sit amet massa. Donec id hendrerit felis, at blandit ex. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                                 style: GoogleFonts.roboto(
                                     fontWeight: FontWeight.w300, color: Colors.grey),
                               ),
                               margin: EdgeInsets.only(top:size.height*0.01,bottom: size.height*0.02),
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                 );
               },
             )
           ],
         ),
       ),
    );
  }
}
