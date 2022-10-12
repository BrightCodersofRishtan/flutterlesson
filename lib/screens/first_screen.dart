import 'package:flutter/material.dart';

class FirsPage extends StatefulWidget {
  const FirsPage({super.key});

  @override
  State<FirsPage> createState() => _FirsPageState();
}

class _FirsPageState extends State<FirsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lesson one"),
      ),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.green, Colors.blue],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  final snakBar = SnackBar(
                      content: const Text('This is First lesson'),
                      action: SnackBarAction(label: "ok", onPressed: () {}));
                  ScaffoldMessenger.of(context).showSnackBar(snakBar);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                ),
                child: const Text('Click me'),
              ),
                        
            ),        
          ),
          const Divider(
          color: Colors.black,
          height: 10,
          thickness: 2,
          indent: 10,
          endIndent: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10.0),
              ),
              ),
              labelText: 'password',
            ),
          ),
        ),
        ],
      ),
      
      
    );
  }
}
