import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:semillero/src/models/products_model.dart';

final url = 'https://platzi-store.herokuapp.com/products';

Future<Product> fetchProduct() async {
  final response =
      await http.get('https://platzi-store.herokuapp.com/products/1');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Product.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load product');
  }
}

List<Product> parseProducts(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Product>((json) => Product.fromJson(json)).toList();
}

Future<List<Product>> fetchProducts(http.Client client) async {
  final response =
      await client.get('https://platzi-store.herokuapp.com/products');

  return compute(parseProducts, response.body);
}
