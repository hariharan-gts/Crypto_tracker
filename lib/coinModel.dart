import 'package:flutter/material.dart';

class Coin {
  Coin({
    required this.name,
    required this.symbol,
    required this.price,
    required this.change,
    required this.chagePercetage,
    required this.imageUrl,
  });

  String name;
  String symbol;
  num price;
  num change;
  num chagePercetage;
  String imageUrl;

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
        name: json['name'],
        symbol: json['symbol'],
        price: json['current_price'],
        change: json['price_change_24h'],
        chagePercetage: json['price_change_percentage_24h'],
        imageUrl: json['image']);
  }
}

List<Coin> coinList = [];
