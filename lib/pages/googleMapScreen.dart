import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  final double lat;
  final double lng;
  MapScreen({this.lat,this.lng});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Set<Marker> _marker = {};

  void _onMapCreated(GoogleMapController controller){
    setState(() {
      _marker.add(
        Marker(
          markerId: MarkerId("id1"),
          position: LatLng(this.widget.lat,this.widget.lng)
        ),
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
        backgroundColor: Colors.black,
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        markers: _marker,
        initialCameraPosition: CameraPosition(
          target: LatLng(this.widget.lat,this.widget.lng),
          zoom: 15,
        ),
      ),
    );
  }
}