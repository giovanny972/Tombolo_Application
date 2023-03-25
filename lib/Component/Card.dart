import 'package:flutter/material.dart';

class CardFavori extends StatefulWidget {
  @override
  _CardFavoriState createState() => _CardFavoriState();
}

class _CardFavoriState extends State<CardFavori> {
  bool estFavori = false;

  void toggleFavori() {
    setState(() {
      estFavori = !estFavori;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: const Text('Titre de la carte'),
            subtitle: const Text('Description de la carte'),
            trailing: IconButton(
              icon: estFavori ? Icon(Icons.star) : Icon(Icons.star_border),
              color: estFavori ? Colors.yellow : null,
              onPressed: toggleFavori,
            ),
          ),
        ],
      ),
    );
  }
}
