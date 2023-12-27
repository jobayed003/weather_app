import 'package:flutter/material.dart';
import 'package:weather_app/model/city.dart';
import 'package:weather_app/model/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Constants myConstants = Constants();

  //initiatilization
  int temperature = 0;
  int maxTemp = 0;
  String weatherStateName = 'Loading..';
  int humidity = 0;
  int windSpeed = 0;

  var currentDate = 'Loading..';
  String imageUrl = '';
  int woeid =
      44418; //This is the Where on Earth Id for London which is our default city
  String location = 'Dhaka'; //Our default city

  //get the cities and selected cities data
  var selectedCities = City.getSelectedCities();
  List<String> cities = [
    'London'
  ]; //the list to hold our selected cities. Deafult is London

  List consolidatedWeatherList = []; //To hold our weather data after api call

  //Api calls url
  String searchLocationUrl =
      'https://www.metaweather.com/api/location/search/?query='; //To get the woeid
  String searchWeatherUrl =
      'https://www.metaweather.com/api/location/'; //to get weather details using the woeid

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
    );
  }
}
