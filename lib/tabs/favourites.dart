import 'package:flutter/material.dart';
import 'package:google_navigation_bar/home.dart';
import 'package:google_navigation_bar/tabs/search.dart';

class FavouritesTab extends StatelessWidget {
  final int selectedIndex;

  const FavouritesTab({Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Press this button to go search page',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Insert your button action here
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HomePage(selectedIndex: 2),
                ),
              );
            },
            child: Text(
              'Press me!',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(125, 50)),
              textStyle:
                  MaterialStateProperty.all(const TextStyle(fontSize: 17)),
            ),
          ),
        ],
      ),
    );
  }
}
