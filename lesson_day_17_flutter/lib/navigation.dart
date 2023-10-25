import 'package:flutter/material.dart';
import 'package:lesson_day_17_flutter/navigation_page_one.dart';

class NavigationHome extends StatelessWidget {
  const NavigationHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NavigationPageOne()));
          },
          child: Icon(Icons.arrow_forward),
        ),
        title: Text('Home'),
      ),
      body: Center(
        child: Text(
          'Home',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
