import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class coinCard extends StatelessWidget {
  coinCard({
    required this.name,
    required this.symbol,
    required this.imageUrl,
    required this.price,
    required this.change,
    required this.chagePercetage,
  });

  String name;
  String symbol;
  String imageUrl;
  double price;
  double change;
  double chagePercetage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(28),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              // ignore: prefer_const_constructors
              BoxShadow(
                  color: Colors.grey,
                  // ignore: prefer_const_constructors
                  offset: Offset(4, 4),
                  blurRadius: 10,
                  spreadRadius: 1),
              // ignore: prefer_const_constructors
              BoxShadow(
                  color: Colors.white,
                  // ignore: prefer_const_constructors
                  offset: Offset(-4, -4),
                  blurRadius: 10,
                  spreadRadius: 1),
            ]),
        child: Row(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 75,
              width: 75,
              child: Image(
                image: NetworkImage(imageUrl),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.lato(
                    color: Colors.grey[900],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                symbol,
                style: GoogleFonts.lato(
                    color: Colors.grey[900],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Rs.' + price.toDouble().toStringAsFixed(2),
                      style: GoogleFonts.lato(
                          color: Colors.grey[900],
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      change.toDouble() < 0
                          ? 'Rs.' + change.toDouble().toStringAsFixed(2)
                          : 'Rs.' + change.toDouble().toStringAsFixed(2),
                      style: GoogleFonts.lato(
                          color:
                              change.toDouble() < 0 ? Colors.red : Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      chagePercetage.toDouble() < 0
                          ? chagePercetage.toDouble().toStringAsFixed(2) + '%'
                          : chagePercetage.toDouble().toStringAsFixed(2) + '%',
                      style: GoogleFonts.lato(
                          color: chagePercetage.toDouble() < 0
                              ? Colors.red
                              : Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}


// Image.network(
//                       "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579"),