import 'package:flutter/material.dart';
import 'package:tombolo/Code Dépendance/Carousel.dart';
import 'package:tombolo/Component/barre_de_recherche.dart';
import 'package:tombolo/Component/Annonces.dart';
import 'package:tombolo/Component/Bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(),
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
            const SizedBox(height: 20.0),
            SearchBar(),
            const SizedBox(height: 20.0),
            const Annonces(),
            const SizedBox(height: 20.0),
            Center(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Centrer les éléments horizontalement
                  children: [
                    const SizedBox(width: 50),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Annonce'),
                    ),
                    const SizedBox(width: 50),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Tombola'),
                    ),
                    const SizedBox(width: 50),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Favorie'),
                    ),
                    const SizedBox(width: 50),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
