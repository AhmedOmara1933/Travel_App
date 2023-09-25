import 'package:flutter/material.dart';
import 'package:travelea_app/modules/travel_homepage.dart';
import 'package:travelea_app/shared/components/components.dart';

import '../models/data_model.dart';

class DetailsScreen extends StatelessWidget {
   DetailsScreen({super.key,required this.data});
  Data data;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(
                      builder: (context) =>TravelHomePage()));
                },
                  child: Icon(
                      Icons.arrow_back_outlined
                  )
              ),
              Text(
                'Back'
              )

            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
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
                '${data.image}'
              ),
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Circle(
                  text: 'Maps',
                  image: 'images/Screenshot 2023-09-25 162313.png'
              ),
              const SizedBox(
                width: 20.0,
              ),
              Circle(
                  text: 'Guide',
                  image: 'images/Screenshot 2023-09-25 162313.png'
              ),
              const SizedBox(
                width: 20.0,
              ),
              Circle(
                  text: '4 day 3 night',
                  image: 'images/Screenshot 2023-09-25 162313.png'
              ),
              const SizedBox(
                width: 20.0,
              ),
              Circle(
                  text: 'Dinner',
                  image: 'images/Screenshot 2023-09-25 162313.png'
              ),
            ],
          ),
         Container(
           margin: const EdgeInsets.symmetric(
             horizontal: 10.0,
               vertical: 10.0
           ),
           color: Colors.black54,
           height: 1,

         ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child:  Text(
                 '${data.name}',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w900),
                ),
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
          SizedBox(
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
            margin: EdgeInsets.only(
              top: 20.0,
              bottom: 10.0
            ),
            child: const Text(
              'Description',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
            ),
          ),
          Text(
            'The Rolle Pass is a high mountain pass in trentino\n'
                'in Italy .it connects the fiemme and primiero valleys,\n'
                'and the communcaties of Predzzo , San Martino di',
            style:TextStyle(
              fontSize: 16.0,
              color: Colors.grey
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal:20.0,
                    vertical: 5.0
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Color(0xffb95b2b)
                    )
                  ),
                  child: MaterialButton(
                      onPressed: (){

                      },
                    child: Text(
                      '\$890 / person',style: TextStyle(
                      color: Color(0xffb95b2b)
                    ),
                    ),

                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal:30.0,
                    vertical: 7.0
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                   color:  Color(0xffb95b2b)
                  ),
                  child: MaterialButton(
                      onPressed: (){
                      },
                    child: Text(
                      'Book Now',
                      style: TextStyle(
                      color:Colors.white
                    ),
                    ),

                  ),
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


