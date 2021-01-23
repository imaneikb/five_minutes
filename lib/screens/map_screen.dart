import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class MyMap extends StatefulWidget{
  @override
  _MyMapState createState() => _MyMapState();
}
class _MyMapState extends State<MyMap> {
  Completer <GoogleMapController> _controllerGoogleMap = Completer();
  GoogleMapController newGoogleMapController;
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  Position currentPosition;
  var geoLocator = Geolocator();
  double bottomPaddingOfMap = 0;
  void locatePosition() async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    // ignore: non_constant_identifier_names
    LatLng LatLatPosition = LatLng(position.latitude,position.longitude);
    CameraPosition cameraPosition = new CameraPosition(target: LatLatPosition,zoom: 14);
    newGoogleMapController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }
  static final CameraPosition _kGooglePlex =CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
       zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Ma localisation"),
         backgroundColor: Colors.green[600]
     ),
     body: Stack(
       children: [
         GoogleMap(
           padding: EdgeInsets.only(bottom: bottomPaddingOfMap),
           mapType: MapType.normal,
           myLocationButtonEnabled: true,
           initialCameraPosition: _kGooglePlex,
           myLocationEnabled: true,
           zoomGesturesEnabled: true,
           zoomControlsEnabled: true,
           onMapCreated: (GoogleMapController controller){
             _controllerGoogleMap.complete(controller);
              newGoogleMapController = controller;
              setState(() {
                bottomPaddingOfMap=265.0;
              });
              locatePosition();
           },
         )
       ],
     ),
   );
  }

}