import 'package:flutter/material.dart';

class Exercise12 extends StatelessWidget {
  const Exercise12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          margin: EdgeInsets.all(15.0),
          color: Colors.red,
          child: Text('Container with Margin'),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 3),
          ),
          child: Text('Container with Border'),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.orange,
          ),
          child: Text('Rounded Container'),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.purple,
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                offset: Offset(4, 4),
                blurRadius: 5.0,
              ),
            ],
          ),
          child: Text('Container with BoxShadow'),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Text('Container with Gradient'),
        ),
        Container(
          color: Colors.blue.withOpacity(0.5),
          child: Text('Container with Opacity'),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('path/to/your/image.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Text('Container with Background Image'),
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.grey,
          alignment: Alignment.bottomRight,
          child: Text('Bottom Right'),
        )
      ]),
    );
  }
}
