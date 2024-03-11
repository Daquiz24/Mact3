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
  final Map<String, dynamic> dictionary = {
    'cat':
    'A small domesticated carnivorous mammal with soft fur, a short snout, and retractile claws.',
    'dog':
    'A domesticated carnivorous mammal that typically has a long snout, an acute sense of smell, non-retractile claws, and a barking, howling, or whining voice.',
    'bird':
    'A warm-blooded egg-laying vertebrate animal distinguished by the possession of feathers, wings, a beak, and typically by being able to fly.',
    'tree':
    'A woody perennial plant, typically having a single stem or trunk growing to a considerable height and bearing lateral branches at some distance from the ground.',
    'flower':
    'The seed-bearing part of a plant, consisting of reproductive organs (stamens and carpels) that are typically surrounded by brightly colored petals and sepals.',
    'computer':
    'An electronic device that can receive, store, process, and output data, perform arithmetic and logical operations, and execute instructions programmed into its memory.',
    'internet':
    'A global computer network providing a variety of information and communication facilities, consisting of interconnected networks using standardized communication protocols.',
    'universe':
    'All existing matter, energy, space, and time considered as a whole; the cosmos.',
    'planet':
    'A celestial body moving in an elliptical orbit around a star.',
    'moon':
    'The natural satellite of the Earth, visible (chiefly at night) by reflected light from the sun.',
    'ocean':
    'A very large expanse of sea, in particular, each of the main areas into which the sea is divided geographically.',
    'mountain':
    'A large natural elevation of the earth\'s surface rising abruptly from the surrounding level; a large steep hill.',
    'river':
    'A large natural stream of water flowing in a channel to the sea, a lake, or another such stream.',
    'language':
    'The method of human communication, either spoken or written, consisting of the use of words in a structured and conventional way.',
    'book':
    'A written or printed work consisting of pages glued or sewn together along one side and bound in covers.',
    'music':
    'Vocal or instrumental sounds (or both) combined in such a way as to produce beauty of form, harmony, and expression of emotion.',
    'film':
    'A motion picture; a movie.',
    'art':
    'The expression or application of human creative skill and imagination, typically in a visual form such as painting or sculpture, producing works to be appreciated primarily for their beauty or emotional power.',
    'history':
    'The study of past events, particularly in human affairs.',
    'science':
    'The intellectual and practical activity encompassing the systematic study of the structure and behavior of the physical and natural world through observation and experiment.',
    'mathematics':
    'The abstract science of numbers, quantity, and space, either as abstract concepts (pure mathematics) or as applied to other disciplines such as physics and engineering (applied mathematics).',
    'chemistry':
    'The branch of science that deals with the identification of the substances of which matter is composed; the investigation of their properties and the ways in which they interact, combine, and change; and the use of these processes to form new substances.',
    'physics':
    'The branch of science concerned with the nature and properties of matter and energy. The subject matter of physics includes mechanics, heat, light and other radiation, sound, electricity, magnetism, and the structure of atoms.',
    'biology':
    'The study of living organisms, divided into many specialized fields that cover their morphology, physiology, anatomy, behavior, origin, and distribution.',
    'geography':
    'The study of the physical features of the earth and its atmosphere, and of human activity as it affects and is affected by these, including the distribution of populations and resources, land use, and industries.',
    'astronomy':
    'The branch of science that deals with celestial objects, space, and the physical universe as a whole.',
    'psychology':
    'The scientific study of the human mind and its functions, especially those affecting behavior in a given context.',
    'sociology':
    'The study of the development, structure, and functioning of human society.',
    'economics':
    'The branch of knowledge concerned with the production, consumption, and transfer of wealth.',
    'politics':
    'The activities associated with the governance of a country or other area, especially the debate or conflict among individuals or parties having or hoping to achieve power.',
    'philosophy':
    'The study of the fundamental nature of knowledge, reality, and existence, especially when considered as an academic discipline.',
    'religion':
    'The belief in and worship of a superhuman controlling power, especially a personal God or gods.',
    'engineering':
    'The branch of science and technology concerned with the design, building, and use of engines, machines, and structures.',
    'medicine':
    'The science and practice of the diagnosis, treatment, and prevention of disease.',
    'architecture':
    'The art or practice of designing and constructing buildings.',
    'law':
    'The system of rules that a particular country or community recognizes as regulating the actions of its members and may enforce by the imposition of penalties.',
    'education':
    'The process of receiving or giving systematic instruction, especially at a school or university.',
    'business':
    'The practice of making one\'s living by engaging in commerce.',
    'agriculture':
    'The science or practice of farming, including cultivation of the soil for the growing of crops and the rearing of animals to provide food, wool, and other products.',
    'environment':
    'The surroundings or conditions in which a person, animal, or plant lives or operates.',
    'climate':
    'The weather conditions prevailing in an area in general or over a long period.',
    'culture':
    'The arts and other manifestations of human intellectual achievement regarded collectively.',
    'apple': 'A round fruit with red or green skin and a whitish interior.',
    'banana':
    'A long curved fruit that grows in clusters and has soft pulpy flesh and yellow skin when ripe.',
    'orange':
    'A round juicy citrus fruit with a tough bright reddish-yellow rind.',
    'grape':
    'A small juicy fruit with a smooth skin, growing in clusters on a vine.',
    'kiwi':
    'A small brown fruit with a fuzzy skin and bright green flesh with black seeds.',
    'pineapple':
    'A tropical fruit with tough, spiky skin and sweet, juicy yellow flesh.',
    'strawberry':
    'A small sweet red fruit with tiny seeds on its surface.',
    'algorithm':
    'A set of rules or steps for solving a particular problem or accomplishing a particular task.',
    'democracy':
    'A system of government in which the citizens exercise power directly or elect representatives to form a governing body.',
    'renewable energy':
    'Energy that is collected from renewable resources, which are naturally replenished on a human timescale, such as sunlight, wind, rain, tides, waves, and geothermal heat.',
    'artificial intelligence':
    'The simulation of human intelligence processes by machines, especially computer systems, encompassing learning, reasoning, and self-correction.',

    // Add words and definitions
  };

  String searchQuery = '';
  String result = '';

  void searchDictionary(String query) {
    setState(() {
      if (dictionary.containsKey(query)) {
        result = dictionary[query]!;
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
        title: Text('Dictionary App'),
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
            SizedBox(height: 20),
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


