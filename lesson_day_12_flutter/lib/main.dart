import 'package:flutter/material.dart';

void main() {
  runApp(Main02());
}

class Main extends StatelessWidget {
  const Main({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red),
        home: Text('Hello'));
  }
}

class Main01 extends StatelessWidget {
  const Main01({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Themed MaterialApp',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Container(
          child: Center(child: Text('Main 01 - Example -1')),
        ),
      ),
    );
  }
}

class Main02 extends StatelessWidget {
  const Main02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'ComicNeue-Regular',
      ),
      home: Scaffold(
          body: Container(
        child: Center(
            child: Text(
          'Custom Font',
          style: TextStyle(fontSize: 40,
            fontStyle: FontStyle.italic
          ),
        )),
      )),
    );
  }
}

class Main03 extends StatelessWidget {
  const Main03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal,
        ).copyWith(secondary: Colors.amber),
      ),
      home: Container(),
    );
  }
}

class Main04 extends StatelessWidget {
  const Main04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Container(),
    );
  }
}

class Main05 extends StatelessWidget {
  const Main05({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          appBar: AppBar(title: Text('Error')),
          body: Center(child: Text('Something went wrong!')),
        );
      },
    );
  }
}

class Main06 extends StatelessWidget {
  const Main06({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
    );
  }
}

class Main07 extends StatelessWidget {
  const Main07({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListView.separated(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}

class Main08 extends StatelessWidget {
  const Main08({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return ListTile(
              title: Text('Item $index'),
            );
          },
          childCount: 20,
        ),
      ),
    );
  }
}

class Main09 extends StatelessWidget {
  const Main09({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          [
            ListTile(title: Text('Item 1')),
            ListTile(title: Text('Item 2')),
            ListTile(title: Text('Item 3')),
          ],
        ),
      ),
    );
  }
}

class Main10 extends StatelessWidget {
  const Main10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Card(
            child: Center(
              child: Text('Item $index'),
            ),
          );
        },
        itemCount: 8,
      ),
    );
  }
}

class Main11 extends StatelessWidget {
  const Main11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          Container(color: Colors.yellow, width: 300, height: 300),
          Positioned(bottom: 10, right: 10, child: Icon(Icons.star, size: 50)),
        ],
      ),
    );
  }
}

class Main12 extends StatelessWidget {
  const Main12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          Container(color: Colors.yellow, width: 300, height: 300),
          Positioned(
            bottom: 10,
            right: 10,
            child: Icon(Icons.star, size: 50),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Icon(Icons.favorite, size: 50),
          ),
        ],
      ),
    );
  }
}

class Main13 extends StatelessWidget {
  const Main13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Card(
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 100,
            child: Center(child: Text('Clickable Card')),
          ),
        ),
      ),
    );
  }
}

class Main14 extends StatelessWidget {
  const Main14({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Card(
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 100,
            child: Center(child: Text('Clickable Card')),
          ),
        ),
      ),
    );
  }
}

class Main15 extends StatelessWidget {
  const Main15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Drawer Example")),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Center(child: Text('Drawer Exercise')),
      ),
    );
  }
}

class Main16 extends StatelessWidget {
  const Main16({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Drawer Example")),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(color: Colors.blue),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Center(child: Text('Drawer Exercise')),
      ),
    );
  }
}

class Main17 extends StatelessWidget {
  const Main17({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClipPath(
        clipper: MyClipper(),
        child: Container(
          height: 200,
          color: Colors.orange,
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Main18 extends StatelessWidget {
  const Main18({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 45 * 3.14159265359 / 180,
      child: Container(
        width: 100,
        height: 100,
        color: Colors.green,
      ),
    );
  }
}
