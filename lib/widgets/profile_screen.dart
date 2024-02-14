import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
        actions: const [
          Padding(padding: EdgeInsets.only(right: 20), child: Icon(Icons.login))
        ],
      ),
      body: Column(
        children: <Widget>[
          _buildProfileImage(context),
          _buildDetails(context),
          _buildActions(context),
          // _buildListView(context),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('Chat'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
            )
          ],
        ),
      ),
      endDrawer: const Drawer(),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 200,
      child: ClipOval(
          child: Image.asset(
        'assets/bg.png',
        fit: BoxFit.fitWidth,
      )),
    );
  }

  Widget _buildDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('This is Angola',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          _buildDetailsRow('Age', '4'),
          _buildDetailsRow('Status', 'Good Man'),
          _buildDetailsRow('Morada', 'Benfica'),
        ],
      ),
    );
  }

  Widget _buildDetailsRow(String heading, String value) {
    return Row(
      children: <Widget>[
        Text(
          '$heading : ',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value)
      ],
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildIcon(Icons.restaurant, 'Feed'),
        _buildIcon(Icons.favorite, 'Pet'),
        _buildIcon(Icons.directions_walk, 'Walk'),
      ],
    );
  }

  Widget _buildIcon(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[Icon(icon, size: 40), Text(text)],
      ),
    );
  }
}
