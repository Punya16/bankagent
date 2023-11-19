import 'package:flutter/material.dart';
import 'interaction_log.dart';
import 'pie_chart.dart';
import 'common_third_container.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo.jpg",
              height: 30,
            ),
            SizedBox(width: 8),
          ],
        ),
        actions: [
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.notifications), // Replace with the desired icon
            onPressed: () {
              // Handle the tap on the search icon if needed
              print('Icon tapped!');
            },
          ),
        ],
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Column(
                  children: [
                    InteractionLogWidget(),
                    PieChartWidget(),
                    CommonThirdContainer(), // Third container
                  ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
