import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/text_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        title: const Text('Learning Flutter'),
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.message),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.login),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[Image.asset('assets/bg.png'), const TextLayout()],
      ),
      drawer: Drawer(
        child: Container(
            color: Colors.amber[600],
            child: const Center(
              child: Text('AQUI'),
            )),
      ),
    );
  }
}
