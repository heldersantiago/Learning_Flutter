import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[700],
      child: Padding(
        padding: const EdgeInsets.all(100),
        child: Container(
          color: Colors.cyanAccent,
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(color: Colors.amber[400]),
          ),
        ),
      ),
    );
  }
}
