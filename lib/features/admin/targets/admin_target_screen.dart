import 'package:flutter/material.dart';

class AdminTargetScreen extends StatefulWidget {
  const AdminTargetScreen({super.key});

  @override
  State<AdminTargetScreen> createState() => _AdminTargetScreenState();
}

class _AdminTargetScreenState extends State<AdminTargetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Admin target screen")));
  }
}
