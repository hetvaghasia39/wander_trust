import 'package:flutter/material.dart';
import 'package:wander_trust/pages/citymodel.dart';
import '../main.dart';
import 'card.dart';

class ViewAll extends StatelessWidget {
  static const routeName= '/ViewAll2';
  @override
  Widget build(BuildContext context) {
    final Arg args = ModalRoute.of(context).settings.arguments as Arg;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "All Cities",
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
                  itemCount: cityList.length,
                  itemBuilder: (context, i) => SmallCard(i),
                ),
              ],
            ),
     ),
    );
  }
}