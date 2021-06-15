import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wander_trust/pages/citymodel.dart';
import 'package:wander_trust/pages/viewAll.dart';
import 'package:wander_trust/pages/viewAll2.dart';
import 'templates.dart';
import 'package:wander_trust/main.dart';

class HomeLayout extends StatefulWidget {
  HomeLayout({Key key, this.image, this.city,}) : super(key: key);
  final String image;
  final String city;  
  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {

  String get image => null;
  String get city => null;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              'Home',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontSize: 20
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
        CarouselSlider(
          items: [
           SliderImage(image: "pune.jpg"),
           SliderImage(image: "jaipur.jpg"),
           SliderImage(image: "vadodara.jpg"),
           SliderImage(image: "lucknow.jpg"),
           SliderImage(image: "banglore.jpg"),
           SliderImage(image: "surat.jpg"),
           SliderImage(image: "chennai.jpg"),
          ], 
          options: CarouselOptions(
            height: 200,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16/9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 1.0,
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 10, 8, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Top Cities',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              TextButton(
                onPressed: () {Navigator.pushNamed(
                          context,
                          ViewAll.routeName,
                        );},
                child: Text('View All'),
              ),
            ],
          ),
        ),
        Container(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) => HorizontalList(index),
            // children: <Widget>[
            //  HorizontalList(),
            //  HorizontalList(),
            //  HorizontalList(),
            //  HorizontalList(),
            //  HorizontalList(),
            // ],
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 10, 8, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Top Destinations',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              TextButton(
                onPressed: () {Navigator.pushNamed(
                          context,
                          ViewAll2.routeName,
                        );},
                child: Text('View All'),
              ),
            ],
          ),
        ),
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (context, index) => VerticalList(index),
        )
        // VerticalList(),
        // VerticalList(),
        // VerticalList(),
        // VerticalList(),
        // VerticalList(),
      ],
    );
  }
}