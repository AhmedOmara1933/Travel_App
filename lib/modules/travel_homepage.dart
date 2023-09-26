import 'package:flutter/material.dart';

import '../models/data_model.dart';
import '../shared/components/components.dart';

class TravelHomePage extends StatefulWidget {
  const TravelHomePage({super.key});

  @override
  State<TravelHomePage> createState() => _TravelHomePageState();
}

class _TravelHomePageState extends State<TravelHomePage> {
  int currentIndex=2;
  List miniCard = [
    ['images/mountain.png', 'Mountain', true],
    ['images/beach.png', 'Beach', false],
    ['images/sunbathing.png', 'Sunbathing', false],
  ];
  List texts = [
    ['All', false],
    ['Popular', true],
    ['Recommended', false],
    ['Most Viewed', false],
    ['High rated', false],
  ];
  List circleAvatars = [
    ['images/travelling.png', 'Flight', false],
    ['images/hotel.png', 'Hotels', true],
    ['images/delivery-truck.png', 'Transports', false],
    ['images/people.png', 'Events', false],
  ];

  DataModel ?dataModel;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataModel=DataModel.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
         decoration: BoxDecoration(
           color: const Color(0xfff3e2d2),
           borderRadius: BorderRadius.circular(15.0),
         ),
        margin: const EdgeInsets.symmetric(
          horizontal: 20.0
        ),
        child: BottomNavigationBar(
          currentIndex:currentIndex ,
          onTap: (value){
            setState(() {
              currentIndex=value;
            });
          },
          selectedItemColor: const Color(0xffb55925),
          selectedIconTheme: const IconThemeData(
            size: 30.0
          ),
          unselectedIconTheme: const IconThemeData(
            size: 25.0
          ),
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.adjust_rounded,),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings,),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: ''
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //appBar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 15.0),
                      height: 60.0,
                      width: 60.0,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                      ),
                      child: const Image(
                        image: AssetImage(
                          'images/Screenshot 2023-09-25 162313.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Welcome Back',
                              style: TextStyle(
                                  fontSize: 16.0, color: Colors.grey[600]),
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            const Image(
                              image: AssetImage(
                                'images/hello.png',
                              ),
                              width: 15.0,
                              height: 25.0,
                            )
                          ],
                        ),
                        const Text(
                          'Ahmed Omara',
                          style: TextStyle(
                              fontSize: 27.0, fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffebcdad)),
                    child: const Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                      size: 28.0,
                    )),
              ],
            ),
            //search
            MySearch(),
            //miniCard
            SizedBox(
              height: 65.0,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => DefaultMiniCard(
                        image: miniCard[index][0],
                        text: miniCard[index][1],
                        isSelected: miniCard[index][2],
                        onTap: () {
                          setState(() {
                            for (int i = 0; i < miniCard.length; i++) {
                              miniCard[i][2] = false;
                            }
                            miniCard[index][2] = true;
                          });
                        },
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 15.0,
                      ),
                  itemCount: miniCard.length),
            ),
            //text
            Container(
              margin: const EdgeInsets.only(top: 35.0, bottom: 13.0),
              child: text(
                'Explore Cities'
              )
            ),
            //many of texts
            Container(
              margin: const EdgeInsets.only(bottom: 25.0),
              height: 30.0,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => DefaultTexts(
                        text: texts[index][0],
                        isSelected: texts[index][1],
                        onTap: () {
                          //  texts[index][1] = trueليه اما بخلي ال
                          //الاول مبتشتغلش
                          setState(() {
                            for (int i = 0; i < texts.length; i++) {
                              texts[i][1] = false;
                              texts[index][1] = true;
                            }
                          });
                        },
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 15.0,
                      ),
                  itemCount: texts.length),
            ),
            // big card
            Container(
              margin: const EdgeInsets.only(bottom: 35.0),
              height: 190.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => DefaultCard(
                  data: dataModel!.data![index],
                ),
                itemCount: dataModel!.data!.length,
              ),
            ),
            //text
            Container(
              margin: const EdgeInsets.only(
                bottom: 20.0,
              ),
              child: text(
                 ' Popular Categories'
              )
            ),
            //category
            SizedBox(
              height: 90.0,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => DefaultCircleAvatar(
                        image: circleAvatars[index][0],
                        text: circleAvatars[index][1],
                        isSelected: circleAvatars[index][2],
                        onTap: () {
                          setState(() {
                            for (int i = 0; i < circleAvatars.length; i++) {
                              circleAvatars[i][2] = false;
                            }
                            circleAvatars[index][2] = true;
                          });
                        },
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 35.0,
                      ),
                  itemCount: circleAvatars.length),
            )
          ],
        ),
      ),
    );
  }
}

