import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Constants {
  static const String appName = 'Student Nexus';

  static const List<Map> iconKeys = [
    {
      'title': 'Schools',
      'icon': FontAwesomeIcons.school,
    },
    {
      'title': 'Groups',
      'icon': FontAwesomeIcons.users,
    },
    {
      'title': 'Nexus Web',
      'icon': FontAwesomeIcons.laptop,
    },
    {
      'title': 'Nexus Mobile',
      'icon': FontAwesomeIcons.phone,
    }
  ];

  static const List<String> featureTitles = [
    'Academics',
    'Events',
    'Clubs',
    'Resources',
  ];

  static const List<String> featureDescriptions = [
    'View your grades, assignments, and more!',
    'View upcoming events and add them to your calendar!',
    'View all the clubs at your school!',
    'View all the resources at your school!',
  ];

  static const List<IconData> featureIcons = [
    FontAwesomeIcons.book,
    FontAwesomeIcons.calendar,
    FontAwesomeIcons.peopleCarryBox,
    FontAwesomeIcons.bookOpen,
  ];
}
