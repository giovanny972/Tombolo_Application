// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:tombolo/tombolaCode/TombalaCode.dart';

class Carousel extends StatelessWidget {
  Carousel({super.key});

  var Ticket = [
    Container(
      height: 35,
      width: 35,
      color: Colors.blue,
    ),
    Container(
      height: 35,
      width: 35,
      color: Colors.yellow,
    ),
    Container(
      height: 35,
      width: 35,
      color: Colors.purple,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(height: 400.0),
        items: Ticket.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: Text(
                    'text $i',
                    style: const TextStyle(fontSize: 16.0),
                  ));
            },
          );
        }).toList(),
      ),
    );
  }
}
