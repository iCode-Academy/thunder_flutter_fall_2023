import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  final List<String> items = List.generate(100, (index) => "Item $index");

  GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Example"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          childAspectRatio: 3 / 2, // Aspect ratio of each item
          crossAxisSpacing: 10, // Horizontal space between items
          mainAxisSpacing: 10, // Vertical space between items
        ),
        padding: EdgeInsets.all(10),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                items[index],
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}
