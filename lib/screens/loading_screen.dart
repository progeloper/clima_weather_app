import 'package:flutter/material.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'location_screen.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {


  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => LocationScreen(weatherData)));
}
  



  @override
  Widget build(BuildContext context) {
    getLocationData();
    return Scaffold(
      body: Container(
        child: Center(
          child: SpinKitRotatingPlain(
            color: Colors.white,
            size: 100.0,
          ),
        ),
      ),
    );
  }
}
