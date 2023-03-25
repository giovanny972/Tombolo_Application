import 'package:flutter/material.dart';
import 'package:tombolo/Component/Card.dart';

class TombolaCarde extends StatefulWidget {
  const TombolaCarde({super.key});

  @override
  State<TombolaCarde> createState() => _TombolaCardeState();
}

class _TombolaCardeState extends State<TombolaCarde> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tombola'),
      ),
      body: const SingleChildScrollView(
        child: TombolaCarde(),
      ),
    );
  }
}
