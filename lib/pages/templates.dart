import 'package:flutter/material.dart';
import 'package:wander_trust/pages/pageTab.dart';
import 'citymodel.dart';
import 'placeModel.dart';
import 'package:wander_trust/main.dart';

class HorizontalList extends StatelessWidget {
  final int index;
  HorizontalList(this.index);
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.pushNamed(
                          context,
                          ExtractArgument.routeName,
                          arguments: PageArgument(
                            cityList[index].image,
                            cityList[index].city,
                            cityList[index].description,
                            placeList[index].name,
                            photoList[index].img,
                            cityList[index].lat,
                            cityList[index].lng

                          ),
                        );
      },
          child: Container(
                  padding: EdgeInsets.all(8),
                  width: 160,
                  child: Column(
                    children: <Widget>[
                      Card(
                        elevation: 10,
                          child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/" + cityList[index].image,),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        cityList[index].city,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
    );
  }
}

class SliderImage extends StatelessWidget {
  final String image;
  SliderImage({Key key,this.image}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
          child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('assets/' + image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
    );
  }
}

class VerticalList extends StatelessWidget {
  final int index;
  VerticalList(this.index);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(
                          context,
                          ExtractArgument2.routeName,
                          arguments: PageArgument(
                            placeList[index].image,
                            placeList[index].city,
                            placeList[index].description,
                            placeList[index].name,
                            photoList[index].img,
                            placeList[index].lat,
                            placeList[index].lng
                          ),
                        );
      },
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          elevation: 5,
          child: Row(
            children: <Widget>[
              Container(
                height: 150,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    topLeft: Radius.circular(5),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(placeList[index].image),
                    fit: BoxFit.cover
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 150,
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      placeList[index].name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                      softWrap: false,
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 200,
                      child: Text(placeList[index].description,
                      overflow: TextOverflow.fade,
                      maxLines: 6,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}