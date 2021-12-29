import 'package:flutter/material.dart';
import 'package:test_drawer/test_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Testing Drawer')),
      body: const Center(child: Text('Testing Drawer')),

      //
      //
      drawer: const TestDrawer(),
    );
  }
}
