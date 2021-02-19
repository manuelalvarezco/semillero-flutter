import 'package:flutter/material.dart';
import 'package:semillero/src/models/products_model.dart';
import 'package:semillero/src/pages/products/product_list.dart';
import 'package:semillero/src/services/products/product_service.dart';
import 'package:http/http.dart' as http;

class ProductsListPage extends StatefulWidget {
  ProductsListPage({Key key}) : super(key: key);

  @override
  _ProductsListPageState createState() => _ProductsListPageState();
}

class _ProductsListPageState extends State<ProductsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products Page'),
      ),
      body: FutureBuilder<List<Product>>(
        future: fetchProducts(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? ProductList(products: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
