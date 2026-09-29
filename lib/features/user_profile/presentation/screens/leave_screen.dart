import 'package:flutter/material.dart';

class LeaveScreen extends StatelessWidget {
  const LeaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Leave')),
      body: const Center(
        child: Text(
          'Leave data is not included in the authentication session.',
        ),
      ),
    );
  }
}
