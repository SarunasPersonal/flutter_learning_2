import 'package:flutter/material.dart';

// Main function - Entry point of the Flutter application
void main() => runApp(const MyApp());

// Root widget of your Flutter application, which initializes the app structure
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // The build method constructs the widget's UI
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // AppBar at the top of the screen
        appBar: AppBar(title: const Text('Flutter Basics')),
        // Body of the screen, centered vertically and horizontally
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Example of using a custom stateless widget
              PaddedText(),
              // Adds spacing between widgets
              SizedBox(height: 20),
              // Example of using a custom stateful widget
              CounterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

// --------- Stateless Widget Example ---------

// Defines a stateless widget, which does not change after creation
class PaddedText extends StatelessWidget {
  const PaddedText({super.key});

  // Builds the widget's UI
  @override
  Widget build(BuildContext context) {
    return Padding(
      // Adds padding (spacing) around the text
      padding: const EdgeInsets.all(8.0),
      child: const Text('Hello, World!'),
    );
  }
}

// Stateless widgets:
// - Have a build method returning UI widgets.
// - Do not maintain any internal state.

// --------- Stateful Widget Example ---------

// Defines a stateful widget, which can change its internal state over time
class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  // Creates the state object
  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

// State object associated with CounterWidget
class _CounterWidgetState extends State<CounterWidget> {
  // Mutable variable to hold the current counter value
  int _counter = 0;

  // Method to increase the counter value
  void _incrementCounter() {
    // Updates the state and rebuilds the UI
    setState(() {
      _counter++;
    });
  }

  // Builds the widget's UI based on the current state
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Displays the current value of the counter
        Text('Counter: $_counter'),
        // Button that triggers the incrementCounter method
        ElevatedButton(
          onPressed: _incrementCounter,
          child: const Text('Increment'),
        ),
      ],
    );
  }
}

// Stateful widgets:
// - Maintain mutable state that can change over time.
// - Use setState() to trigger UI updates whenever the state changes.

// Summary:
// - Stateless widgets: no mutable state, simple and static UI components.
// - Stateful widgets: mutable state, dynamic UI components reacting to interactions.
