import 'package:flutter/material.dart';


class NavigationPageOne extends StatelessWidget {
  const NavigationPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Page one'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: Text('Go to Page Two')),
            ElevatedButton(onPressed: (){}, child: Text('Go to Home Page'))
          ],
        ),
      ),
    );
  }
}
