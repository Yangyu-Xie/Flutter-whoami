import 'package:audioplayers/audioplayers.dart';

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

class WhoAmIApp extends StatefulWidget {
  const WhoAmIApp({super.key});

  @override
  State<WhoAmIApp> createState() => _WhoAmIAppState();
}

class _WhoAmIAppState extends State<WhoAmIApp> {
  String name = "Kagari";
  MaterialColor colorOfBackground = Colors.yellow;
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    String image_name = name.toLowerCase();
    return Container(
      color: colorOfBackground,
      child: Center(
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
                      setState(() {
                        player.play(AssetSource('audio/kagari.mp3'));
                        name = "Loki";
                        colorOfBackground = Colors.blueGrey;
                        print(name);
                      });
                    } else if (name == "Loki") {
                      setState(() {
                        player.play(AssetSource('audio/loki.mp3'));
                        name = "Kagari";
                        colorOfBackground = Colors.yellow;

                        print(name);
                      });
                    }
                  },
                  child: Image.asset("images/$image_name.png")),
            ))
          ],
        ),
      ),
    );
  }
}
