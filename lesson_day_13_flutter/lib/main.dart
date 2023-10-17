import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xFFFF9002)
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: FractionallySizedBox(
                      widthFactor: 2/3,
                      heightFactor: 2/3,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            colors: [Color.fromRGBO(255, 144, 2, 0), Color(0xFFE48000)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [-0.025, 1.6875],
                            transform: GradientRotation(180)
                          )
                        ),
                        child: Center(
                          child: Text('W', style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            height: 52/38,
                            fontSize: 40
                          ),),
                        ),
                      ),
                    ),
                  ),
                ),
                Text('O', style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 40
                ),),
                Text('R', style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 40
                ),),
                Text('D', style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 40
                ),)
              ],
            ),
            SizedBox(
              width: 177,
              height: 48.02,
              child: Text('Game',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Color(0xFFE86B02)
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40, left: 30, right: 30)),
            Image.network(
                'https://images.unsplash.com/photo-1697329371198-74d8c6de188a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3327&q=80', width: 100, height: 100,),
            Padding(padding: EdgeInsets.only(top: 50),),
            SizedBox(
              child: Text('READY?', style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Color(0xFFE86B02)
              )),
            ),
            ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  )
                ),
                child: Text('Play',
                style: TextStyle(
                  fontSize: 14
                ),)
            )
          ],
        ),
      ),
    ),
  ));
}
