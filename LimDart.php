import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dictionary',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DictionaryPage(),
    );
  }
}

class DictionaryPage extends StatelessWidget {
  final Map<String, String> dictionary = {
    'Apple': 'A fruit that grows on trees and is typically red or green.',
    'Banana': 'A long curved fruit that grows in clusters and has a yellow skin when ripe.',
    'Orange': 'A round citrus fruit with a tough bright reddish-yellow rind.',
    'Grapes': 'Small round or oval fruit that grows in clusters and is typically purple or green.',
    'Strawberry': 'A sweet soft red fruit with a seed-studded surface.',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Dictionary'),
      ),
      body: ListView.builder(
        itemCount: dictionary.length,
        itemBuilder: (BuildContext context, int index) {
          String key = dictionary.keys.elementAt(index);
          String value = dictionary[key];
          return ListTile(
            title: Text(key),
            subtitle: Text(value),
          );
        },
      ),
    );
  }
}
