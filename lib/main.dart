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
            SizedBox(height: 20), // Adds space between widgets
            // TASK 5: Change the subtitle text
            // 👉 Update this smaller subtitle with a brief description.
            Text(
              'Exploring different ways to learn and grow as a student.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              // TIP: onPressed runs when the button is tapped.
              onPressed: () {
                print('Button Clicked!');
              },
              // TASK 6: Change the text on the button
              // 👉 Replace the button text with an action label (example: 'Show Info').
              child: Text('Learn More'),
            ),
            SizedBox(height: 20),
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
            SizedBox(height: 20),
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
              SizedBox(height: 20),
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
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        _motivationalQuotes[_currentQuoteIndex],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: _nextQuote,
                        child: Text('Next Quote'),
                      ),
                    ],
                  ),
                ),
              ),


            // TASK 7: Add a new Text widget below (after this comment)
            // 👉 Add a new Text widget here. Example:
            // Text('Created by: [Your Name]')
            // Tip: Use a smaller font or italic style for a signature line.
            // Example with styling:
            // Text(
            //   'Created by: [Your Name]",
            //   style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic, color: Colors.grey),
            // ),
          ],
        ),
      ),
    );
  }
}

// TASK 8: Modify the ElevatedButton above to add custom styling
// Add this inside the ElevatedButton (after child parameter):
// style: ElevatedButton.styleFrom(
//   backgroundColor: Colors.green,
// ),
// 👉 Example full snippet:
// ElevatedButton(
//   onPressed: () {},
//   child: Text('Click Me'),
//   style: ElevatedButton.styleFrom(
//     backgroundColor: Colors.green,
//     foregroundColor: Colors.white,
//   ),
// ),
// TIP: Keep the button inside the Column so it shows in the center.
