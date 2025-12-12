import 'package:flutter/material.dart';

class AdminManagerScreen extends StatefulWidget {
  const AdminManagerScreen({super.key});

  @override
  State<AdminManagerScreen> createState() => _AdminManagerScreenState();
}

class _AdminManagerScreenState extends State<AdminManagerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Admin manager screen")));
  }
}
