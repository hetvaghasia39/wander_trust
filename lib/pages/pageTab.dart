import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'googleMapScreen.dart';


class About extends StatelessWidget {
  About({Key key, this.image,this.city,this.description,String name,this.lat,this.lng}) : super(key: key);
  final String image;
  final String city;
  final String description;
  final double lat;
  final double lng;
  @override
  Widget build(BuildContext context) {
        return SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
                  child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Text(
                  this.description,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black
                  ),
            ),
            Divider(color: Colors.black,),
            Center(
              child: IconButton(
                icon: Icon(Icons.map_outlined),
                iconSize: 30,
                onPressed: ()=>Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context)=>MapScreen(lat: this.lat,lng: this.lng)
                  )
                ),
              ),
            ),
            Center(
              child: Text('Map', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
            )
          ],
      ),
    ),
        );
  }
}

class Photos extends StatelessWidget {
  final String img;
  Photos({Key key, this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(6, (index) {
        return Card(
          elevation: 10,
          margin: EdgeInsets.all(20),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: AssetImage("assets/" + this.img),
                fit: BoxFit.cover
              )
            ),
          ),
        );
      }),
    );
  }
}

class PhotoGrid{
  final String img;
  PhotoGrid({this.img});
}

final photoList = [
  PhotoGrid(
    img: 'img1.jpg'
  ),
  PhotoGrid(
    img: 'img2.jpg'
  ),
  PhotoGrid(
    img: 'img3.jpg'
  ),
  PhotoGrid(
    img: 'img4.jpg'
  ),
  PhotoGrid(
    img: 'img5.jpg'
  ),
  PhotoGrid(
    img: 'img6.jpg'
  ),
];