import 'package:flutter/material.dart';

class RoleOptionWidget extends StatelessWidget {
  final String title;
  final int value;
  final int groupValue;
  final ValueChanged<int> onChanged;
  final Color activeColor;

  const RoleOptionWidget({
    super.key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.activeColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            width: 24.0,
            height: 24.0,
            child: Radio<int>(
              value: value,
              groupValue: groupValue,
              onChanged: (int? newValue) {
                if (newValue != null) onChanged(newValue);
              },
              activeColor: activeColor,
            ),
          ),
          const SizedBox(width: 8),
          Text(title, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
