import 'package:flutter/material.dart';

class TextLayout extends StatelessWidget {
  const TextLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Hello World',
          style: TextStyle(fontSize: 24),
        ),
        Text(
          'We Are Nexus',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscingelit. Etiam at mauris massa. Suspendisse potenti.Aenean aliquet eu nisl vitae tempus')
      ],
    );
  }
}
