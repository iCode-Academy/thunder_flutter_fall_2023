import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  // Function to show the AlertDialog
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Dialog Example'),
          content: Text('This is a simple AlertDialog in Flutter.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // You can perform an action here when the user clicks "OK"
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showAlertDialog(
                context); // Call the function to show the AlertDialog
          },
          child: Text('Show AlertDialog'),
        ),
      ),
    );
  }
}
