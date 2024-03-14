import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //var myGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Auto Size Text',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue,
            child: const AutoSizeText(
              //group: myGroup,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              stepGranularity: 20,
              //minFontSize: 20,
              //maxFontSize: 60,
              presetFontSizes: [40, 20, 14],
              'Flutter widget that automatically resizes text to fit perfectly within its bounds.',
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            color: Colors.red,
            child: const Text(
              //group: myGroup,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              'Flutter widget that automatically resizes text to fit perfectly within its bounds.',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
