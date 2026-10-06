import 'package:flutter/material.dart';

class MapPin extends StatelessWidget {
  const MapPin({super.key});

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFF2196F3);
    return Container(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 3),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.4),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
    );
  }
}
