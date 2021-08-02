import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Animated Dialog")),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Animate Dialog"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => NetworkGiffyDialog(
                image: Image.network(
                  "https://cdn.dribbble.com/users/69182/screenshots/4793955/feedback_reactions__by__amiri.gif",
                  fit: BoxFit.cover,
                ),
                title: Text("Leave us a Rating",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
                ),
                buttonCancelColor: Colors.teal,
                entryAnimation: EntryAnimation.BOTTOM_LEFT,
              ),
            );
          },
        ),
      ),
    );
  }
}
