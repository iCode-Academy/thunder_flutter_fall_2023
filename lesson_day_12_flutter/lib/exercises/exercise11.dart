import 'package:flutter/material.dart';

class Exercise11 extends StatelessWidget {
  const Exercise11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Icon(Icons.arrow_back),
        Icon(Icons.favorite, color: Colors.red),
        Icon(Icons.home, size: 50.0),
        Icon(Icons.battery_charging_full, color: Colors.greenAccent),
        Icon(Icons.camera_alt, size: 40.0),
        Icon(Icons.settings, color: Colors.black.withOpacity(0.5)),
        Icon(Icons.alarm),
        Icon(Icons.wifi, size: 30.0),
        Icon(Icons.mail, color: Colors.blue),
        Icon(Icons.shopping_cart)
      ],
    ));
  }
}
