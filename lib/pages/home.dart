import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Stack(
            children: [
              Image.asset('assets/images/hero.png'),
              Positioned(
                right: 0,
                left: 0,
                bottom: -10,
                child: Image.asset('assets/images/house.png'),
              ),
              const WeatherDetails()
            ],
          ),
        ),
      ),
    );
  }
}

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      right: 0,
      left: 0,
      bottom: 0,
      child: Text(
        'Hlw',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
