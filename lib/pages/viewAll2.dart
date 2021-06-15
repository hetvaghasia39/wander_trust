import 'package:flutter/material.dart';
import 'package:wander_trust/pages/pageTab.dart';
import 'package:wander_trust/pages/placeModel.dart';
import '../main.dart';
import 'package:wander_trust/main.dart';

class ViewAll2 extends StatelessWidget {
  static const routeName= '/ViewAll';
  @override
  Widget build(BuildContext context) {
    final Arg args = ModalRoute.of(context).settings.arguments as Arg;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Places",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
     body:SingleChildScrollView(
            child: Row(
              children: [
                SizedBox(height: 20,),
                ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: placeList.length,
                  itemBuilder: (context, i) => ViewCard(i),
                ),
              ],
            ),
     ),
    );
  }
}


class ViewCard extends StatelessWidget {
  ViewCard(this.i);
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
                          image: NetworkImage(placeList[i].image)
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
                          placeList[i].name,
                overflow: TextOverflow.fade,
                maxLines: 1,
                softWrap: false,
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
                              ExtractArgument2.routeName,
                              arguments: PageArgument(
                                placeList[i].image,
                                placeList[i].city,
                                placeList[i].description,
                                placeList[i].name,
                                photoList[i].img,
                                placeList[i].lat,
                                placeList[i].lng
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

class NoPhotos extends StatelessWidget {
  final String img;
  NoPhotos({Key key, this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 40),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/no_photo.png"),
              fit: BoxFit.cover
            ),
          ),
        ),
        Text(
          "No Photos Available",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}