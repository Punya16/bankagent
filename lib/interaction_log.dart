import 'package:flutter/material.dart';

class InteractionLogWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.grey[300],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: Colors.grey,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Interaction Details',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              color: Colors.black,
                              icon: Icon(Icons.open_in_full),
                              onPressed: () {
                                print('Icon tapped!');
                              },
                            ),
                            IconButton(
                              color: Colors.black,
                              icon: Icon(Icons.close_fullscreen),
                              onPressed: () {
                                print('Icon tapped!');
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[300],
                child: Column(
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceAround,
                              children: [
                                Text('Channel',style: TextStyle(fontWeight: FontWeight.bold),),
                                Text('Directions',style: TextStyle(fontWeight: FontWeight.bold),),
                                Text('User',style: TextStyle(fontWeight: FontWeight.bold),),
                                Text('Created On',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: ListView(
                          children: [
                            Container(
                              height: 50,
                              child: Card(
                                color: Colors.grey[400],
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                         //Call Log
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}