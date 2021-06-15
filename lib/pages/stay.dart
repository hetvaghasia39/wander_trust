import 'package:flutter/material.dart';
import 'package:wander_trust/pages/pageTab.dart';
import '../main.dart';
import 'hotelModel.dart';

class Stay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Center(
                child: Text(
                  'Hotels',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                    fontSize: 20
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: hotelList.length,
                  itemBuilder: (context, i) => StayCard(i),
                ),
              ),
            ],
          ),
    );
  }
}

class StayCard extends StatelessWidget {
  StayCard(this.i);
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
                          image: NetworkImage(hotelList[i].image)
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
                          hotelList[i].name,
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
                              ExtractArgument3.routeName,
                              arguments: PageArgument(
                                hotelList[i].image,
                                hotelList[i].city,
                                hotelList[i].description,
                                hotelList[i].name,
                                photoList[i].img,
                                hotelList[i].lat,
                                hotelList[i].lng
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