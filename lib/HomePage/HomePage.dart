import 'package:flutter/material.dart';
import 'package:tombolo/Code Dépendance/Carousel.dart';
import 'package:tombolo/Code Dépendance/barre_de_recherche.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Home")),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Carousel(),
            NavBar(),
          ],
        ),
      ),
    );
  }
}
