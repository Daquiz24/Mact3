import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(DictionaryApp());
}

class DictionaryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dictionary App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DictionaryHomePage(),
    );
  }
}

class DictionaryHomePage extends StatefulWidget {
  @override
  _DictionaryHomePageState createState() => _DictionaryHomePageState();
}

class _DictionaryHomePageState extends State<DictionaryHomePage> {
  final Map<String, Map<String, dynamic>> dictionary = {
    'sophia': {                                                          // Search ( sophia or SOPHIA )
      'definition': 'A given name of Greek origin, meaning "wisdom."',   // output
      'ipa': '/soʊˈfiə/',                                                // output
      'noun': 'a given name of Greek origin meaning wisdom',             // output
    },
    'mary': {
      'definition': 'A common given name for females.',
      'ipa': '/ˈmɛəri/',
      'noun': 'a common given name for females',
    },
    'alexander': {
      'definition': 'A given name of Greek origin, meaning "defender of the people."',
      'ipa': '/ˌælɪɡˈzændər/',
      'noun': 'a given name of Greek origin',
    },
    'john': {
      'definition': 'A common given name for males.',
      'ipa': '/dʒɒn/',
      'noun': 'a common given name for males',
    },
    'paris': {
      'definition': 'The capital city of France, known for its art, culture, and iconic landmarks such as the Eiffel Tower.',
      'ipa': '/ˈpærɪs/',
      'noun': 'the capital city of France',
    },
    'tokyo': {
      'definition': 'The capital city of Japan, known for its modern technology, vibrant culture, and historic temples.',
      'ipa': '/ˈtoʊ.kjoʊ/',
      'noun': 'the capital city of Japan',
    },
    'new york': {
      'definition': 'A major city in the United States, known for its skyscrapers, diverse culture, and iconic landmarks like Times Square and Central Park.',
      'ipa': '/nuː jɔːrk/',
      'noun': 'a major city in the United States',
    },
    'rio de janeiro': {
      'definition': 'A city in Brazil, famous for its lively Carnival celebrations, beautiful beaches, and the iconic Christ the Redeemer statue.',
      'ipa': '/ˈriːoʊ deɪ ʒəˈnɛəroʊ/',
      'noun': 'a city in Brazil',
    },
    'sydney': {
      'definition': 'The capital city of New South Wales, Australia, known for its stunning harbor, Sydney Opera House, and Harbour Bridge.',
      'ipa': '/ˈsɪdni/',
      'noun': 'the capital city of New South Wales, Australia',
    },
    'emily': {
      'definition': 'A common given name for females.',
      'ipa': '/ˈɛməli/',
      'noun': 'a common given name for females',
    },
    'tree': {
      'definition':
      'A woody perennial plant, typically having a single stem or trunk growing to a considerable height and bearing lateral branches at some distance from the ground.',
      'ipa': '/triː/',
      'noun': 'a woody perennial plant with a single stem or trunk',
    },
    'moon': {
      'definition':
      'The natural satellite of the Earth, visible (chiefly at night) by reflected light from the sun.',
      'ipa': '/muːn/',
      'noun': 'the natural satellite of the Earth',
    },
    'ocean': {
      'definition':
      'A very large expanse of sea, in particular, each of the main areas into which the sea is divided geographically.',
      'ipa': '/ˈoʊʃən/',
      'noun': 'a very large expanse of sea',
    },
    'mountain': {
      'definition':
      'A large natural elevation of the earth\'s surface rising abruptly from the surrounding level; a large steep hill.',
      'ipa': '/ˈmaʊntən/',
      'noun': 'a large natural elevation rising abruptly from the surrounding level',
    },
    'river': {
      'definition':
      'A large natural stream of water flowing in a channel to the sea, a lake, or another such stream.',
      'ipa': '/ˈrɪvər/',
      'noun': 'a large natural stream of water flowing in a channel',
    },
    'language': {
      'definition':
      'The method of human communication, either spoken or written, consisting of the use of words in a structured and conventional way.',
      'ipa': '/ˈlæŋɡwɪdʒ/',
      'noun': 'the method of human communication using words',
    },
    'flower': {
      'definition':
      'The seed-bearing part of a plant, consisting of reproductive organs (stamens and carpels) that are typically surrounded by brightly colored petals and sepals.',
      'ipa': '/ˈflaʊər/',
      'noun': 'the seed-bearing part of a plant with reproductive organs',
    },
    'computer': {
      'definition':
      'An electronic device that can receive, store, process, and output data, perform arithmetic and logical operations, and execute instructions programmed into its memory.',
      'ipa': '/kəmˈpjuːtər/',
      'noun': 'an electronic device for processing data and performing operations',
    },
    'cat': {
      'definition':
      'A small domesticated carnivorous mammal with soft fur, a short snout, and retractile claws.',
      'ipa': '/kæt/',
      'noun': 'a small domesticated carnivorous mammal',
    },
    'dog': {
      'definition':
      'A domesticated carnivorous mammal that typically has a long snout, an acute sense of smell, non-retractile claws, and a barking, howling, or whining voice.',
      'ipa': '/dɔɡ/',
      'noun': 'a domesticated carnivorous mammal',
    },
    'apple': {
      'definition': 'A round fruit with red or green skin and a whitish interior.',
      'ipa': '/ˈæpl/',
      'noun': 'a round fruit with red or green skin',
    },
    'banana': {
      'definition':
      'A long curved fruit that grows in clusters and has soft pulpy flesh and yellow skin when ripe.',
      'ipa': '/bəˈnænə/',
      'noun': 'a long curved fruit growing in clusters',
    },
    'orange': {
      'definition':
      'A round juicy citrus fruit with a tough bright reddish-yellow rind.',
      'ipa': '/ˈɔrɪndʒ/',
      'noun': 'a round juicy citrus fruit with a tough rind',
    },
    // ... (other words with IPA and Noun information)
    'artificial intelligence': {
      'definition':
      'The simulation of human intelligence processes by machines, especially computer systems, encompassing learning, reasoning, and self-correction.',
      'ipa': '/ˌɑːrtɪˈfɪʃəl ɪnˈtelɪdʒəns/',
      'noun': 'the simulation of human intelligence processes by machines',
    },
    // Add words and definitions
  };

  String searchQuery = '';
  String result = '';

  void searchDictionary(String query) {
    setState(() {
      if (dictionary.containsKey(query)) {
        Map<String, dynamic> wordData = dictionary[query]!;
        result = '${wordData['definition']}\n\nIPA: ${wordData['ipa']}\nNoun: ${wordData['noun']}';
      } else {
        result = '';
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Word Not Found'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://cdn.dribbble.com/users/31818/screenshots/2619658/dribbb.gif',
                          width: 100,
                        ),
                      ),
                      SizedBox(width: 10), // Add some space between the image and the text
                      Flexible(
                        child: Text(
                          'No definition found for 😀"$query".',
                          overflow: TextOverflow.clip, // Adjust overflow behavior if needed
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dictionary '),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter a word',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                searchDictionary(searchQuery.toLowerCase());
              },
              child: Text('Search'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Text(
                      result.isEmpty ? 'Enter a word to search.' : result,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


