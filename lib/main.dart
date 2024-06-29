import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Who am I?"),
      ),
      body: WhoAmIApp(),
    ),
  ));
}

class WhoAmIApp extends StatelessWidget {
  const WhoAmIApp({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "Kagari";
    String image_name = name.toLowerCase();

    return Center(
      child: Column(
        children: [
          Text(
            "I am $name",
            style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextButton(
                style:
                    TextButton.styleFrom(backgroundColor: Colors.transparent),
                onPressed: () {
                  if (name == "Kagari") {
                    name = "Loki";
                    print(name);
                  } else if (name == "Loki") {
                    name = "Kagari";
                    print(name);
                  }
                },
                child: Image.asset("images/$image_name.png")),
          ))
        ],
      ),
    );
  }
}
