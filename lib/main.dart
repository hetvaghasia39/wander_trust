import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:flutter/rendering.dart';
import 'package:wander_trust/pages/citymodel.dart';
import 'package:wander_trust/pages/placeModel.dart';
import 'package:wander_trust/pages/viewAll2.dart';
import 'pages/pageTemplate.dart';
import 'pages/stay.dart';
import 'pages/home.dart';
import 'pages/pageTab.dart';
import 'pages/viewAll.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WanderTrust',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        ExtractArgument.routeName: (context) => ExtractArgument(),
        ExtractArgument2.routeName: (context) => ExtractArgument2(),
        ExtractArgument3.routeName: (context) => ExtractArgument3(),
        ViewAll.routeName: (context) => ViewAll(),
        ViewAll2.routeName: (context) => ViewAll2(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {


    final backdropItems = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.note, color: Colors.white,),
          title: Text('India At A Glance', style: TextStyle(color: Colors.white, fontFamily: 'Orelega_One'),),
          onTap: () => Navigator.of(context).push(_IndiaAtGlance()),
        ),
        ListTile(
          leading: Icon(Icons.warning, color: Colors.white,),
          title: Text('About', style: TextStyle(color: Colors.white, fontFamily: 'Orelega_One'),),
          onTap: () => Navigator.of(context).push(_About()),
        ),
        ListTile(
          leading: Icon(Icons.feedback, color: Colors.white,),
          title: Text('Feedback', style: TextStyle(color: Colors.white, fontFamily: 'Orelega_One'),),
          onTap: () => Navigator.of(context).push(_Feedback()),
        ),
        ListTile(
          leading: Icon(Icons.help, color: Colors.white,),
          title: Text('Help', style: TextStyle(color: Colors.white, fontFamily: 'Orelega_One'),),
          onTap: () => Navigator.of(context).push(_Help()),
        ),
      ],
    );


    final _tabPages = <Widget>[
      HomeLayout(),
      Stay(),
    ];

    const _tab = <Widget>[
      Tab(icon: Icon(Icons.home), text: 'Home'),
      Tab(icon: Icon(Icons.bedtime), text: 'Stay'),
    ];


    return DefaultTabController(
      length: 2,
      child: BackdropScaffold(
        appBar: BackdropAppBar(
          title: Text(
            'WanderTrust',
            style: TextStyle(
              fontFamily: 'Pacifio',
            ),
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            }),
          ],
          backgroundColor: Colors.black,
        ),
        backLayer: Container(
          child: backdropItems,
          color: Colors.black,
        ),
        frontLayer: Container(
          child: TabBarView(
            children: _tabPages,
          ),
        ),
        bottomNavigationBar: Material(
          color: Colors.black,
          child: TabBar(tabs: _tab),
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String>{

  final cities = [
    'Mumbai',
    'Jaipur',
    'Ahmedabad',
    'Banglore',
    'Chennai',
    'Lucknow',
    'Surat',
    'Pune',
    'Hydrabad',
    'Vadodara',
    'Amritsar',
    'Agra',
    'kolkata',
    'Delhi'
  ];

  final statesut = [
    'Gujarat',
    'Maharashtra',
    'Rajasthan',
    'Madhya Pradesh',
    'Uttar Pradesh',
    'Himachal Pradesh',
    'Arunachal Pradesh',
    'Andhra Pradesh',
    'Telangana',
    'Karnataka',
    'Kerela',
    'Tamil Nadu',
    'Goa',
    'Punjab',
    'Haryana',
    'Uttrakhand',
    'Jammu and Kashmir',
    'Laddakh',
    'Dadra and Nagar Haveli',
    'Daman and Diu',
    'Chandigarh',
    'Puducherry',
    'Lakshadweep',
    'Andaman and Nicobar Island',
    'Delhi',
    'Sikkim',
    'Jarkhand',
    'West Bengal',
    'Odisha',
    'Bihar',
    'Assam',
    'Meghalaya',
    'Nagaland',
    'Manipur',
    'Tripura',
    'Mizoram',
  ];

  final recentCities = [
    'Ahmedabad',
    'Junagadh',
    'Banglore',
    'Delhi',
    'Mumbai'
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
      return [IconButton(icon: Icon(Icons.clear), onPressed: () {
        query = '';
      } )];
    }
  
    @override
    Widget buildLeading(BuildContext context) {
      return IconButton(icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ), 
      onPressed: () {
        close(context, null);
      }
      );
    }
  
    @override
    Widget buildResults(BuildContext context) {
      return ListView.builder(
        itemCount: cityList.length,
        itemBuilder: (context,index)=>PageTemplate(city: cityList[index].city,image: cityList[index].image,description: cityList[index].description,img: photoList[index].img,),
      );
    }
  
    @override
    Widget buildSuggestions(BuildContext context) {
      final suggestionList = query.isEmpty?recentCities:cities.where((p)=>p.startsWith(query)).toList();
      return ListView.builder(
        itemBuilder: (context,index)=>ListTile(
          onTap: (){
            showResults(context);
          },
          leading: Icon(Icons.location_city),
          title: RichText(text: TextSpan(
            text: suggestionList[index].substring(0,query.length),
            style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold
            ),
            children: [
              TextSpan(
                text: suggestionList[index].substring(query.length),
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        ),
        itemCount: suggestionList.length,
      );
  }
  
}

class _About extends MaterialPageRoute<void> {
  _About()
    : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontFamily: 'Pacifio',
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(height: 20.0,),
            Text(
              'Hi, This is app is a Design engineering project',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
            Container(height: 20.0,),
            Text(
              'WanderTrust',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
                fontFamily: 'Pacifio',
              ),
            ),
          ],
        ),
      ),
    );
  });
}

class _Feedback extends MaterialPageRoute<void> {
  _Feedback()
    : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Feedback',
          style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontFamily: 'Pacifio',
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20.0),
            Text(
              'Enter Feedback',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
              ),
            ),
            const SizedBox(height: 20.0),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Input Feedback',
                helperText: 'Keep it Short',
                labelText: 'Feedback',
              ),
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  });
}

class _Help extends MaterialPageRoute<void> {
  _Help()
    : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Help',
          style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontFamily: 'Pacifio',
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Container(height: 20.0,),
            Text(
                'If you need help then google it\nEnjoy ;)',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
          ],
        ),
      ),
    );
  });
}

class _IndiaAtGlance extends MaterialPageRoute<void>{
  _IndiaAtGlance()
    :super(builder: (BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'WanderTrust',
            style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontFamily: 'Pacifio',
            ),
          ),
        backgroundColor: Colors.black,
        ),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10,),
                Text(
                  'India At A Glance',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'Pacifio',
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '   India is one of the oldest civilizations in the world with a kaleidoscopic variety and rich cultural heritage. It has achieved all-round socio-economic progress since its Independence. As the 7th largest country in the world, India stands apart from the rest of Asia, marked off as it is by mountains and the sea, which give the country a distinct geographical entity. Bounded by the Great Himalayas in the north, it stretches southwards and at the Tropic of Cancer, tapers off into the Indian Ocean between the Bay of Bengal on the east and the Arabian Sea on the west.',
                  maxLines: 10,
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '   India has a unique culture and is one of the oldest and greatest civilizations of the world. It stretches from the snow-capped Himalayas in the North to the Sun drenched coastal villages of the South. In this section, you will certainly get the best glimpse of this great country.',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[800],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        )
      );
    });
}

//Page Template Section

class PageArgument{
  final String image;
  final String city;
  final String description;
  final String name;
  final String img;
  final double lat;
  final double lng;
  PageArgument(this.image, this.city,this.description,this.name,this.img,this.lat,this.lng);
}
class Arg{
  final int i;
  Arg(this.i);
}

class ExtractArgument extends StatelessWidget {
  static const routeName= '/extractArgument';
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  final int id=null;
  final String image=null;
  final String city=null;
  final String description=null;
  final String photo=null;
  final String video=null;


  @override
  Widget build(BuildContext context) {

    final PageArgument args = ModalRoute.of(context).settings.arguments as PageArgument;
    final _cardPages = <Widget>[
      About(image: args.image,city: args.city,description: args.description, name: args.name,lat: args.lat,lng: args.lng,),
      Photos(img: args.img),
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
              title: Text(args.city),
              background: Image.asset(
                'assets/' + args.image,
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

class ExtractArgument2 extends StatelessWidget {
  static const routeName= '/extractArgument2';
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  final int id=null;
  final String image=null;
  final String city=null;
  final String description=null;
  final String photo=null;
  final String video=null;


  @override
  Widget build(BuildContext context) {

    final PageArgument args = ModalRoute.of(context).settings.arguments as PageArgument;
    final _cardPages = <Widget>[
      About(image: args.image,city: args.city,description: args.description, name: args.name,lat: args.lat,lng: args.lng),
      NoPhotos(img: args.img),
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
              title: Text(args.name),
              background: Image.network(
                args.image,
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

class ExtractArgument3 extends StatelessWidget {
  static const routeName= '/extractArgument3';
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  final int id=null;
  final String image=null;
  final String city=null;
  final String description=null;
  final String photo=null;
  final String video=null;


  @override
  Widget build(BuildContext context) {

    final PageArgument args = ModalRoute.of(context).settings.arguments as PageArgument;
    final _cardPages = <Widget>[
      About(image: args.image,city: args.city,description: args.description, name: args.name,lat: args.lat,lng: args.lng,),
    ];
    final _cardTabs = <Tab>[
      Tab(text: 'About',),
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
              title: Text(args.name),
              background: Image.network(
                args.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFillRemaining(
            child: DefaultTabController(
              length: 1,
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