import 'package:flutter/material.dart';
import 'dashboard.dart';

class Deatilepage extends StatelessWidget {
  final String category;
  const Deatilepage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext) => Dashboard()));
            },
            icon: Icon(Icons.arrow_back)),
        title: Text('$category Cuisine'), // Use string interpolation correctly
      ),
      body: Center(
        child: _getPageContent(),
      ),
    );
  }

  Widget _getPageContent() {
    switch (category) {
      case 'All':
        return Text(
          'This is the All Categories Page!',
          style: TextStyle(fontSize: 24, color: Colors.blue),
        );
      case 'Indian':
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Indian Cuisine Page!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        );
      case 'Italian':
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Explore the Italian Cuisine Page!',
              style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
            ),
            Icon(Icons.local_pizza, size: 100, color: Colors.red),
          ],
        );
      case 'Asian':
        return Text(
          'Asian Cuisine is here to amaze you!',
          style: TextStyle(fontSize: 24, color: Colors.purple),
        );
      case 'Chinese':
        return Text(
          'Welcome to Chinese Cuisine!',
          style: TextStyle(fontSize: 24, color: Colors.green),
        );
      case 'Arabic':
        return Text(
          'Welcome to Arabic Cuisine!',
          style: TextStyle(fontSize: 24, color: Colors.green),
        );
      default:
        return Text(
          'Unknown category!',
          style: TextStyle(fontSize: 24, color: Colors.grey),
        );
    }
  }
}
