import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  var selectedIndex = 0;
  HomeTab({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Home Tab',
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}