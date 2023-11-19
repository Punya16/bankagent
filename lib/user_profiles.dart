import 'package:flutter/material.dart';

class UserProfile {
  final String title;
  final IconData icon;

  UserProfile({
    required this.title,
    required this.icon,
  });
}

List<UserProfile> options = [
  UserProfile(
    title: '1-Paid Break',
    icon: Icons.add_circle,
  ),
  UserProfile(
    title: '2-TM Feedback',
    icon: Icons.add_circle,
  ),
  UserProfile(
    title: '3-Fulfillment',
    icon: Icons.add_circle,
  ),
  UserProfile(
    title: '4-Meeting/Training',
    icon: Icons.add_circle,
  ),UserProfile(
    title: '5-Computer Problem',
    icon: Icons.add_circle,
  ),
  UserProfile(
    title: '6-TPIN2',
    icon: Icons.add_circle,
  ),UserProfile(
    title: '7-Call Outbound',
    icon: Icons.add_circle,
  ),
  UserProfile(
    title: '8-Available',
    icon: Icons.add_circle,
  ),
  UserProfile(
    title: '9-CallBack',
    icon: Icons.add_circle,
  ),
];
