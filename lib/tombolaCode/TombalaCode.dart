import 'dart:math';
import 'package:flutter/material.dart';

class TombolaPage extends StatelessWidget {
  TombolaPage({Key? key});

  var articles = [
    {"nom": "Article 1", "valeur": 100},
    {"nom": "Article 2", "valeur": 200},
    {"nom": "Article 3", "valeur": 300},
    {"nom": "Article 4", "valeur": 400},
    {"nom": "Article 5", "valeur": 500},
  ];

  var prixBillet = 10;
  var totalBillets = 100;
  var billetsVendus = 0;

  var random = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Home")),
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        ),
        body: GridView.count(
          crossAxisCount: 4, // Nombre de billets par ligne
          children: List.generate(totalBillets, (index) {
            return Center(
              child: TextButton(
                onPressed: () {
                  // Acheter un billet
                  var billetAchete = acheterBillet(prixBillet);

                  // Tirage au sort du gagnant
                  var gagnant = random.nextInt(totalBillets);

                  if (gagnant == billetAchete) {
                    // Le billet acheté a gagné
                    var articleGagne =
                        articles[random.nextInt(articles.length)];
                    // Affichage de la notification de gain
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            "Félicitations! Vous avez gagné ${articleGagne['nom']} d'une valeur de ${articleGagne['valeur']}€"),
                      ),
                    );
                  } else {
                    // Le billet acheté n'a pas gagné
                    // Affichage de la notification de non gain
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                            "Désolé, vous n'avez pas gagné cette fois-ci. Essayez de nouveau!"),
                      ),
                    );
                  }
                },
                child: const Text('Acheter un billet'),
              ),
            );
          }),
        ),
      ),
    );
  }

  bool acheterBillet(int prix) {
    // Logique d'achat du billet
    return true;
  }
}
