import 'package:flutter/material.dart';

class Results {
  final String title;
  final String description;

  Results({this.title, this.description});

  static List<Results> getAll() {
    return [
      Results(title: 'About Face ID advanced technology', description: 'Learn how Face ID helps protect your information on your iPhone X.'),
      Results(
          title: 'If Face ID is disabled on your iPhone X', description: 'Learn what to do if you see a message on the Home screen or in settings that says "Face ID...'),
      Results(title: 'Use Face ID on iPhone X', description: 'Face ID lets you securely unlock your iPhone X, authenticate purchases, sign in to apps, and m...'),
      Results(
          title: 'Get help with Face ID on your iPhone x', description: 'If you need help using Face ID to unlock your iPhone X, authenticate purchases, sign in to ap...'),
      Results(title: 'Get help with Face ID on your iPhone x', description: 'If you need help using Face ID to unlock your iPhone X, authenticate purchases, sign in to ap...'),
      Results(title: 'About Face ID advanced technology', description: 'Learn how Face ID helps protect your information on your iPhone X.'),
      Results(
          title: 'If Face ID is disabled on your iPhone X', description: 'Learn what to do if you see a message on the Home screen or in settings that says "Face ID...'),
    ];
  }
}
