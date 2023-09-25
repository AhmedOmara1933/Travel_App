import 'package:flutter/material.dart';
import 'package:travelea_app/modules/travel_homepage.dart';
import 'package:travelea_app/shared/components/components.dart';

import '../models/data_model.dart';

class DetailsScreen extends StatefulWidget {
   DetailsScreen({super.key,required this.data});
  Data data;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isClicable=true;
  List miniCard=[
    ['Maps','images/map.png'],
    ['Guide','images/tour-guide.png'],
    ['4 day 3 night','images/moon.png'],
    [ 'Dinner','images/dinner.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            top: 20.0,
          left: 20.0,
          right: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //back
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(
                      builder: (context) =>const TravelHomePage()));
                },
                  child: const Icon(
                      Icons.arrow_back_outlined
                  )
              ),
              const Text(
                'Back'
              )

            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          //image
          Container(
            margin: const EdgeInsets.only(
              bottom: 10.0
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0)
            ),
            height: 400.0,
            width: double.infinity,
            child:  Image(
              image: AssetImage(
                '${widget.data.image}'
              ),
              fit: BoxFit.cover,
            ),
          ),
          //mini card
         SizedBox(
           height:90.0 ,
           child: ListView.separated(
             physics: const BouncingScrollPhysics(),
             scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Circle(
                text:miniCard[index][0] ,
                image: miniCard[index][1]
            ),
               separatorBuilder: (context, index) => const SizedBox(
                 width: 25.0,
               ),
               itemCount: miniCard.length
           ),
         ),
         //divider
         Container(
           margin: const EdgeInsets.symmetric(
             horizontal: 10.0,
               vertical: 10.0
           ),
           color: Colors.black54,
           height: 1,

         ),
          //texts
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
               '${widget.data.name}',
                style: const TextStyle(fontSize: 25.0, fontWeight: FontWeight.w900),
              ),
             const Row(
               children: [
                 Icon(
                   Icons.star_border,
                   color: Colors.grey,
                 ),
                 Text(
                   '4.7 (9k review)',
                   style: TextStyle(
                     color: Colors.grey
                   ),
                 )
               ],
             ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 20.0,
                  ),
                  Text(
                    'Thailand',
                    style: TextStyle(fontSize: 15.0, color: Colors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 20.0,
                    color: Color(0xffb95b2b) ,
                  ),
                  Text(
                    'Map Direction',
                    style: TextStyle(fontSize: 15.0,
                      color:  Color(0xffb95b2b),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20.0,
              bottom: 10.0
            ),
            child: const Text(
              'Description',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
            ),
          ),
          //rich text
          const Text(
            'The Rolled Pass is a high mountain pass in trentino\n'
                'in Italy .It connects the femme and primer valleys,\n'
                'and the communications of Predator ',
            style:TextStyle(
              fontSize: 16.0,
              color: Colors.grey
            ),
          ),
          //two bottoms
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child:MyBottom(
                        text: '\$890 / person',
                        isText:!isClicable?Colors.white:const Color(0xffb95b2b),
                        isColor: !isClicable?const Color(0xffb95b2b):const Color(0xfff3f3f3),
                        onPressed: (){
                          setState(() {
                            isClicable=false;
                          });
                        }
                    )
                ),
                const SizedBox(width: 20.0,),
                Expanded(
                    child:MyBottom(
                        text: 'Book now',
                        isText: isClicable?Colors.white:const Color(0xffb95b2b),
                        isColor: isClicable?const Color(0xffb95b2b):const Color(0xfff3f3f3),
                        onPressed: (){
                          setState(() {

                          });
                          isClicable=true;
                        }
                    )
                ),
              ],
            ),
          )
        ],
        ),
      ),
    ) ;
  }
}


