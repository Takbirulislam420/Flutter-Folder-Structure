import 'package:flutter/material.dart';
import 'package:top_talent_agency/app/core/helpers/time_helper.dart';

class ChangeColorWithTime extends StatefulWidget {
  const ChangeColorWithTime({super.key});

  @override
  State<ChangeColorWithTime> createState() => _ChangeColorWithTimeState();
}

class _ChangeColorWithTimeState extends State<ChangeColorWithTime> {
  late String formattedTime;

  @override
  void initState() {
    super.initState();
    _updateTime();
  }

  void _updateTime() {
    formattedTime = TimeHelper.getCurrentTime();

    // Update every second
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted) {
        setState(() {
          _updateTime();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TimeHelper.getBackgroundColor(),
      appBar: AppBar(title: const Text("Change Color With Time")),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Change colors with time",
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: TimeHelper.getTextColor(),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                formattedTime,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: TimeHelper.getTextColor(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
