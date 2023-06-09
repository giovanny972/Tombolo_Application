// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tombolo/Screen/tombolaCode/TombalaCode.dart';

class Carousel extends StatelessWidget {
  Carousel({super.key});

  var Tickets = [1, 2, 3];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          height: 150.0,
        ),
        items: Tickets.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: const BoxDecoration(color: Colors.amber),
                child: Center(
                  child: Text(
                    'Ticket $i',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
