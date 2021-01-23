
import 'package:five_minutes/main.dart';
import 'package:five_minutes/screens/map_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';


class MyLoctate extends StatefulWidget {
  @override
  _MyLoctateState createState() => _MyLoctateState();
}

class _MyLoctateState extends State<MyLoctate> {
  @override
  void initState() {
    super.initState();
    _getLocationPermission();
  }

  void _getLocationPermission() async {
    var location = new Location();
    try {
      location.requestPermission();
    } on Exception catch (_) {
      print('There was a problem allowing location access');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(13),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Utulisez GoogleMaps',
                style: TextStyle(fontSize: 35),
              ),
              SizedBox(height: 20),
              Text(
                'En cas de panne ,il arrive que vous ne savez pas ou vous êtes précisement pour appeler une aide,alors appuyer pour accéder à votre localisation . ',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[600],
        tooltip: 'Increment',
        child: Icon(Icons.map,),
        onPressed: () => Navigator.push(
          context,
    MaterialPageRoute(
      builder: (BuildContext context)=>MyMap()
    ),
      ),
    ),
    );
  }

}
