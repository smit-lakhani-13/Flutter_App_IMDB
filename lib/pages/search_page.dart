import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Search Page'),
        ),
        body: const Center(
            child: Text(
          'Home',
          style: TextStyle(fontSize: 60),
        )),
      );
}
