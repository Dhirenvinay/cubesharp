import 'package:flutter/material.dart';
class MyFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FloatingActionButton(
          onPressed: () {
            // Add your FloatingActionButton logic here
          },
          tooltip: 'Increment',
          backgroundColor: Colors.deepOrange,
          child: const Icon(Icons.add_shopping_cart),
        ),
        Positioned(
          right: 0,
          top: 0,
          child: Container(
            padding: const EdgeInsets.all(4.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Text(
              '1',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
