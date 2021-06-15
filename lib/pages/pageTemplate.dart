import 'package:flutter/material.dart';
import 'package:wander_trust/main.dart';
import 'package:wander_trust/pages/pageTab.dart';

class PageTemplate extends StatelessWidget {

  PageTemplate({Key key, this.image, this.city,this.description,this.img,this.name}) : super(key: key);
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  final String image;
  final String city;
  final String description;
  final String img;
  final String name;

  @override
  Widget build(BuildContext context) {
    final _cardPages = <Widget>[
      About(image: this.image,city: this.city,description: this.description),
      Photos(img: this.img),
    ];
    final _cardTabs = <Tab>[
      Tab(text: 'About',),
      Tab(text: 'Photos',),
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: this._pinned,
            snap: this._snap,
            floating: this._floating,
            expandedHeight: 200,
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(this.city),
              background: Image.asset(
                'assets/' + this.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.grey[800],
                  bottom: TabBar(
                    tabs: _cardTabs,
                  ),
                ),
                body: TabBarView(
                  children: _cardPages,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}