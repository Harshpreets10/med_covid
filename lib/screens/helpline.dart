import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fab_dialer/flutter_fab_dialer.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Completer<GoogleMapController> _controller = Completer();
  Position position;
  final Map<String, Marker> _markers = {};

  void _getLocation() async {
    var currentLocation = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);

    setState(() {
      _markers.clear();
      final marker = Marker(
        markerId: MarkerId("curr_loc"),
        position: LatLng(currentLocation.latitude, currentLocation.longitude),
        infoWindow: InfoWindow(title: 'Your Location'),
      );
      _markers["Current Location"] = marker;
    });
  }

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  @override
  Widget build(BuildContext context) {
    int _counter = 0;

    void _incrementCounter() {
      setState(() {
        _counter++;
      });
    }

    var _fabMiniMenuItemList = [
      new FabMiniMenuItem.withText(
          new Icon(
            Icons.call,
            color: Colors.white,
          ),
          Color(0xFF1D1E33),
          4.0,
          "Button menu",
          _incrementCounter,
          "Corona Hotline",
          Color(0xFF1D1E33),
          Colors.white,
          true),
      new FabMiniMenuItem.withText(
          new Icon(
            Icons.call,
            color: Colors.white,
          ),
          Color(0xFF1D1E33),
          4.0,
          "Button menu",
          _incrementCounter,
          "Ambulance",
          Color(0xFF1D1E33),
          Colors.white,
          true),
      new FabMiniMenuItem.withText(
          new Icon(
            Icons.call,
            color: Colors.white,
          ),
          Color(0xFF1D1E33),
          4.0,
          "Button menu",
          _incrementCounter,
          "Nearest Hospitals",
          Color(0xFF1D1E33),
          Colors.white,
          true),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text(
          'MEDCOVID',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: LatLng(40.688841, -74.044015),
              zoom: 11.0,
            ),
            markers: _markers.values.toSet(),
          ),
          new FabDialer(
              _fabMiniMenuItemList,
              Color(0xFF1D1E33),
              new Icon(
                Icons.add,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
