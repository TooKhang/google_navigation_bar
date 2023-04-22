import 'package:flutter/material.dart';

class PersonTab extends StatelessWidget {
  var selectedIndex = 0;
  PersonTab({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Person Tab',
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}