import 'package:flutter/material.dart';

class AdminAlertScreen extends StatefulWidget {
  const AdminAlertScreen({super.key});

  @override
  State<AdminAlertScreen> createState() => _AdminAlertScreenState();
}

class _AdminAlertScreenState extends State<AdminAlertScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Admin alert screen")));
  }
}
