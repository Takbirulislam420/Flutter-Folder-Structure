import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimeHelper {
  // Get formatted time with AM/PM
  static String getCurrentTime() {
    final now = DateTime.now();
    return DateFormat('hh:mm:ss a').format(now);
  }

  // Get text color based on the time of day
  static Color getTextColor() {
    final hour = DateTime.now().hour;

    if (hour >= 6 && hour < 12) {
      return Colors.orange; // Morning
    } else if (hour >= 12 && hour < 18) {
      return Colors.blue; // Afternoon
    } else {
      return Colors.indigo; // Evening/Night
    }
  }

  // Optional: get background color based on time of day
  static Color getBackgroundColor() {
    final hour = DateTime.now().hour;

    if (hour >= 6 && hour < 12) {
      return Colors.yellow.shade100; // Morning
    } else if (hour >= 12 && hour < 18) {
      return Colors.blue.shade100; // Afternoon
    } else {
      return Colors.black12; // Evening/Night
    }
  }
}
