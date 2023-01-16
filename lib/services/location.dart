import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Location {
  Location();
  double longitude;
  double latitude;
  

  Future getCurrentLocation() async{
    try {
      Position pos = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      longitude = pos.longitude;
      latitude = pos.latitude;
      return pos;
    } catch(e){
      print(e);
    }
  }


}