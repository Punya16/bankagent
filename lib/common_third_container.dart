import 'package:bankagent/home_page.dart';
import 'package:flutter/material.dart';
import 'bottom_sheet_actions.dart';
import 'user_profiles.dart';

class CommonThirdContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              showBottomSheetActions(context);
            },
          ),

          IconButton(
            icon: Icon(Icons.headphones),
            onPressed: () {
              // Headphone icon functionality logic
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return DraggableScrollableSheet(
                    initialChildSize: 0.9, // Initial size of the bottom widget
                    minChildSize: 0.85, // Minimum size of the bottom widget
                    maxChildSize: 0.9, // Maximum size of the bottom widget
                    builder: (BuildContext context, ScrollController scrollController) {
                      return Container(
                        color: Colors.white, // Adjust this color accordingly
                        child: ListView(
                          controller: scrollController,
                          children: [
                            for (var userProfile in options)
                              ListTile(
                                title: Text(userProfile.title),
                                trailing: Icon(userProfile.icon),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ListTile(
                              title: Text('Logout'),
                              leading: Icon(Icons.exit_to_app),
                              onTap: () {
                                // Handle logout logic
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
