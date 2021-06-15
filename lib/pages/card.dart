import 'package:flutter/material.dart';
import 'package:wander_trust/main.dart';
import 'package:wander_trust/pages/pageTab.dart';
import 'package:wander_trust/pages/placeModel.dart';

import 'citymodel.dart';

class SmallCard extends StatelessWidget {
  SmallCard(this.i);
  final int i;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.fromLTRB(10, 0,10,0),
          elevation: 10,
            child: Container(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          topLeft: Radius.circular(5),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/' + cityList[i].image)
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          cityList[i].city,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 1.5,
                            color: Colors.black
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              ExtractArgument.routeName,
                              arguments: PageArgument(
                                cityList[i].image,
                                cityList[i].city,
                                cityList[i].description,
                                placeList[i].name,
                                photoList[i].img,
                                cityList[i].lat,
                                cityList[i].lng
                              ),
                            );
                          }, 
                          child: Text('VIEW'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      SizedBox(height: 20,)
      ],
    );
  }
}

class ImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage('assets/alleppey-houseboat_31256.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
      child: Text(
                'name',
                overflow: TextOverflow.fade,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  letterSpacing: 1.5,
                ),
              ),
    );
  }
}