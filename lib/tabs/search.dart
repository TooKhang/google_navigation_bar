import 'package:flutter/material.dart';

class SearchTab extends StatelessWidget {
  var selectedIndex = 0;
  SearchTab({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Search Tab',
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
