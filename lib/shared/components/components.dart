import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import '../../models/data_model.dart';
import '../../modules/details_screen.dart';

class DefaultMiniCard extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onTap;
  final bool isSelected;

  DefaultMiniCard({
    required this.image,
    required this.text,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 140.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: isSelected! ? const Color(0xffb95b2b) : Colors.white),
        child: Row(
          children: [
            Container(
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: Image(
                  image: AssetImage(image),
                )),
            Text(
              text,
              style:
                  TextStyle(color: isSelected ? Colors.white : Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////////todo////////////////////////////////////////////

class DefaultTexts extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  DefaultTexts(
      {required this.text, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 15.0,
            color: isSelected ? Colors.black : Colors.grey[400]),
      ),
    );
  }
}

///////////////////////////////////////////todo////////////////////////////////////////////


class DefaultCard extends StatelessWidget {
Data data;

  DefaultCard({required this.data});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
       Navigator.push(context, MaterialPageRoute(builder: (context) =>DetailsScreen(
         data: data,
       ) ,));
      },
      child: Container(
        margin: EdgeInsets.only(right: 30.0),
        width: 200.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //why when add stack the image don't expand
              Stack(
                children: [
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(7.0)),
                    child:  Image(
                      image: AssetImage(
                         '${data.image}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      margin: const EdgeInsets.only(top: 5.0, left: 130.0),
                      child: const LikeButton())
                ],
              ),
               Padding(
                padding: EdgeInsets.symmetric(vertical: 7.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${data.name}',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 15.0),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          size: 15.0,
                          color: Colors.grey,
                        ),
                        Text(
                          '4.9',
                          style: TextStyle(fontSize: 14.0, color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 16.0,
                      ),
                      Text(
                        'Thailand',
                        style: TextStyle(fontSize: 13.0, color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '\$890 ',
                        style: TextStyle(
                            fontSize: 13.0,
                            color: Color(0xffb95b2b),
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        '/person',
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///////////////////////////////////////////todo////////////////////////////////////////////


class DefaultCircleAvatar extends StatelessWidget {
  final String image;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  DefaultCircleAvatar(
      {super.key,
      required this.image,
       required this.text,
       required this.isSelected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 60.0,
            width: 60.0,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200.0),
              color: Colors.white
            ),
            child: Image(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            text!,
            style: TextStyle(
                fontSize: 15.0, color: isSelected! ? Colors.black : Colors.grey),
          )
        ],
      ),
    );
  }
}

///////////////////////////////////////////todo////////////////////////////////////////////

class Circle extends StatelessWidget{
  final String text;
  final String image;

  Circle({required this.text,required this.image});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 15.0),
          height: 60.0,
          width: 60.0,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200.0),
          ),
          child: Image(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          text
        )
      ],
    );
  }

}

///////////////////////////////////////////todo////////////////////////////////////////////

Widget assetsImage(String image, {Color? color}) {
  return Image(
    image: AssetImage(
      'images/$image',
    ),
    color: color,
  );
}
Widget text(String text) {
  return const Text(
    'Popular Categories',
    style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w900),
  );
}

///////////////////////////////////////////todo////////////////////////////////////////////

class MySearch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30.0),
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0)),
      height: 55.0,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.search,
                color: Color(0xffb95b2b),
                size: 25.0,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                'Discover a city',
                style:
                TextStyle(fontSize: 17.0, color: Colors.grey[400]),
              ),
            ],
          ),
          SizedBox(
              height: 30.0,
              child: assetsImage('tune.png', color: Colors.grey[400]))
        ],
      ),
    );
  }

}

///////////////////////////////////////////todo////////////////////////////////////////////

class MyBottom extends StatelessWidget{
  final String text;
  final Color isColor;
  final Color isText;
  final VoidCallback onPressed;

  MyBottom({super.key, required this.text,required this.isColor,required this.onPressed, required this.isText,});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      padding: const EdgeInsets.symmetric(
          horizontal:20.0,
          vertical: 5.0
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
              color: const Color(0xffb95b2b)
          ),
        // color: isSelected?Color(0xffb95b2b):Color(0xfff3f3f3)
        color: isColor
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child:  Text(
          text,style:  TextStyle(
            color:isText
        ),
        ),

      ),
    );
  }
}