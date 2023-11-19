import 'package:flutter/material.dart';

class PieChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Your pie chart widget implementation here
    return Expanded(
      child: Container(
        color: Colors.grey[300],
        child: Column(
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
                          'All Interaction',
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
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 250, // Set the height of the pie chart container

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