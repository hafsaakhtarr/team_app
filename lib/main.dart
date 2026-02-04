// main.dart - STARTER CODE
// GitHub Collaborative Activity: Flutter Team Challenge
// Replace your entire lib/main.dart file with this code

import 'package:flutter/material.dart';

// The main entry point of the app
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TIP: The MaterialApp wraps your whole app and sets theme + navigation.
      // Only edit text/colors below unless instructed otherwise.
      // TASK 1: Change the title of the app
      // 👉 Replace the string below with your own app title (example: 'Flutter Team Challenge').
      title: 'Flutter TEAM Challenge',
      theme: ThemeData(
        // TASK 2: Change the primary swatch color
        // 👉 Pick one Material color from Colors (example: Colors.red, Colors.green, Colors.purple).
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int _currentThemeIndex = 0;
  final List<MaterialColor> _themeColors = [
    Colors.blue,
    Colors.purple,
    Colors.teal,
  ];

  // FEATURE 3: Motivational Quotes List
  final List<String> _motivationalQuotes = [
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Innovation distinguishes between a leader and a follower. - Steve Jobs",
    "Life is what happens when you're busy making other plans. - John Lennon",
    "The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt",
    "It is during our darkest moments that we must focus to see the light. - Aristotle",
  ];
    int _currentQuoteIndex = 0;

  void _nextQuote() {
    setState(() {
      _currentQuoteIndex = (_currentQuoteIndex + 1) % _motivationalQuotes.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TIP: Scaffold gives you a page layout with appBar + body.
      appBar: AppBar(
        // TASK 3: Change the text in the top bar
        // 👉 Replace the AppBar title text with your team name or app name.
        title: Text('Team_APP Challenge'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // TIP: Widgets appear in order from top to bottom.
            // If something doesn't show, make sure commas and parentheses match.
            // TASK 4: Change the main text below
            // 👉 Update this main headline to describe your app.
            Text(
              'An app on student hobbies',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5), // Adds space between widgets
            // TASK 5: Change the subtitle text
            // 👉 Update this smaller subtitle with a brief description.
            Text(
              'Exploring different ways to learn and grow as a student.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              // TIP: onPressed runs when the button is tapped.
              onPressed: () {
                print('Button Clicked!');
              },
              // TASK 6: Change the text on the button
              // 👉 Replace the button text with an action label (example: 'Show Info').
              child: Text('Learn More'),
            ),
            SizedBox(height: 9),
            //FEATURE 1 : Add a Card widget to display student info
            Card(
                elevation: 4,
                margin: EdgeInsets.all(16),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.person, size: 50, color: Colors.blue),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Student Name',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Major: Computer Science',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            SizedBox(height: 9),
            // FEATURE 2: Switching themes
            Card(
                elevation: 2,
                margin: EdgeInsets.all(16),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        'Theme Customization',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _currentThemeIndex = 0;
                              });
                            },
                            child: Text('Blue'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _currentThemeIndex = 1;
                              });
                            },
                            child: Text('Purple'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _currentThemeIndex = 2;
                              });
                            },
                            child: Text('Teal'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //Feature 3: Motivational Quote Display
              SizedBox(height: 9),
              Card(
                elevation: 2,
                margin: EdgeInsets.all(16),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        'Daily Motivation',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 9),
                      Text(
                        _motivationalQuotes[_currentQuoteIndex],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(height: 9),
                      ElevatedButton(
                        onPressed: _nextQuote,
                        child: Text('Next Quote'),
                      ),
                    ],
                  ),
                ),
              ),
            SizedBox(height: 9),
            Card(
                elevation: 2,
                margin: EdgeInsets.all(16),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        'Interests & Hobbies',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.code, size: 40, color: Colors.blue),
                              SizedBox(height: 6),
                              Text('Coding'),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.cloud, size: 40, color: Colors.blue),
                              SizedBox(height: 6),
                              Text('Cloud'),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.security, size: 40, color: Colors.blue),
                              SizedBox(height: 6),
                              Text('Security'),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.music_note, size: 40, color: Colors.blue),
                              SizedBox(height: 6),
                              Text('Music'),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.psychology, size: 40, color: Colors.blue),
                              SizedBox(height: 6),
                              Text('AI/ML'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),


            // TASK 7: Add a new Text widget below (after this comment)
            // 👉 Add a new Text widget here. Example:
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => InteractiveFeaturesPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Interactive Features'),
                  ),
                  SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AdvancedComponentsPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Advanced Components'),
                          ),
                ],
              ),

              // TASK 7: Signature line
            ],
          ),
        ),
      );
  }
}
class InteractiveFeaturesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interactive Features'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),

              // ========== FEATURE 5: COUNTER WIDGET ==========
              CounterWidget(),

              SizedBox(height: 16),

              // ========== FEATURE 6: IMAGE DISPLAY ==========
              ImageDisplay(),

              SizedBox(height: 16),

              // ========== FEATURE 7: TEXT INPUT FIELD ==========
              TextInputWidget(),

              SizedBox(height: 16),

              // ========== FEATURE 8: TOGGLE SWITCH ==========
              ToggleSwitchWidget(),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

//FEATURE 5: COUNTER WIDGET 
class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Counter Widget',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Count: $_count',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => setState(() => _count--),
                  child: Icon(Icons.remove),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => setState(() => _count++),
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//FEATURE 6: IMAGE DISPLAY
class ImageDisplay extends StatefulWidget {
  @override
  _ImageDisplayState createState() => _ImageDisplayState();
}

class _ImageDisplayState extends State<ImageDisplay> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Image Display',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.network(
                'https://www.nami.org/wp-content/uploads/2025/08/biking-blog.jpeg',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Center(
                    child: Text('Image not loaded'),
                  );
                },
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Loaded from Internet',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
//FEATURE 7: TEXT INPUT FIELD
class TextInputWidget extends StatefulWidget {
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  late TextEditingController _controller;
  String _displayedText = '';

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Text Input Field',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Enter your text here',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.edit),
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _displayedText = _controller.text;
                });
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 12),
            if (_displayedText.isNotEmpty)
              Column(
                children: [
                  Text(
                    'You entered:',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    _displayedText,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
//FEATURE 8: TOGGLE SWITCH
class ToggleSwitchWidget extends StatefulWidget {
  @override
  _ToggleSwitchWidgetState createState() => _ToggleSwitchWidgetState();
}

class _ToggleSwitchWidgetState extends State<ToggleSwitchWidget> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Toggle Switch',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Show Details',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(width: 12),
                Switch(
                  value: _isToggled,
                  onChanged: (value) {
                    setState(() {
                      _isToggled = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            if (_isToggled)
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.blue),
                ),
                child: Column(
                  children: [
                    Text(
                      'Additional Content',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'This content is hidden when the toggle is off.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              )
            else
              Text(
                'Toggle is OFF - content hidden',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class AdvancedComponentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advanced Components'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),

              // ========== FEATURE 9: SCROLLABLE LIST ==========
              ScrollableList(),

              SizedBox(height: 20),

              // ========== FEATURE 10: SNACKBAR NOTIFICATIONS ==========
              SnackbarNotifications(),

              SizedBox(height: 20),

              // ========== FEATURE 11: CUSTOM WIDGET ==========
              //CustomWidget(),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
//Feature 9 : Scrollable list
class ScrollableList extends StatelessWidget {
  final List<String> _movies = [
    'Movie 1',
    'Movie 2',
    'Movie 3',
    'Movie 4',
    'Movie 5',
    'Movie 6',
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Scrollable List',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _movies.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.star, color: Colors.amber),
                    title: Text('Item ${index + 1}'),
                    subtitle: Text('Description for item ${index + 1}'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//Feature 10: Snackbar Notifications
class SnackbarNotifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Snackbar Notifications',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Notification sent!'),
                    duration: Duration(seconds: 2),
                  ),
                );
              },
              child: Text('Show Message'),
            ),
          ],
        ),
      ),
    );
  }
}