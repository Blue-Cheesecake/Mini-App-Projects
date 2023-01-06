import 'package:flutter/material.dart';

class Constants {
  static final screenConfiguration = ScreenConfiguration();
  static final data = Data();
}

class ScreenConfiguration {
  final _minimumWebWidth = 900;

  bool shouldRenderWebLayout(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth >= _minimumWebWidth;
  }
}

class Data {
  final list = <Item>[
    Item(
        title: "How many team members can I invite?",
        body:
            "You can invite up to 2 additional users on the Free plan. There is no limit on team members for the Premium plan.",
        isExpanded: false),
    Item(
        title: "What is the maximum file upload size?",
        body:
            "No more than 2GB. All files in your account must fit your allotted storage space.",
        isExpanded: false),
    Item(
        title: "How do I reset my password?",
        body:
            "Click “Forgot password” from the login page or “Change password” from your profile page.",
        isExpanded: false),
    Item(
        title: "Can I cancel my subscription?",
        body:
            "Yes! Send us a message and we’ll process your request no questions asked.",
        isExpanded: false),
    Item(
        title: "Do you provide additional support?",
        body:
            "Chat and email support is available 24/7. Phone lines are open during normal business hours.",
        isExpanded: false),
  ];
}

// Item Expansion Model
class Item {
  Item({
    required this.title,
    required this.body,
    required this.isExpanded,
  });

  final String title;
  final String body;
  bool isExpanded;
}
