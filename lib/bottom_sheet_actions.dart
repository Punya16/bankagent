import 'package:flutter/material.dart';
import 'email_service.dart';

void showBottomSheetActions(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Call'),
              onTap: () {
                // Handle call option logic
                Navigator.pop(context); // Close the bottom sheet after selecting an option
              },
            ),

            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              onTap: () {
                // Call the function from EmailService to show the compose mail dialog

              },
            ),

            ListTile(
              leading: Icon(Icons.sms),
              title: Text('SMS'),
              onTap: () {
                // Handle SMS option logic
                Navigator.pop(context); // Close the bottom sheet after selecting an option
              },
            ),
          ],
        ),
      );
    },
  );
}
