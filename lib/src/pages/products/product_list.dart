import 'package:flutter/material.dart';
import 'package:semillero/src/models/products_model.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key key, this.products}) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset('assets/images/hoodie.png'),
              title: Row(
                children: [
                  Text(products[index].title,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 20,
                  ),
                  Text('COP ${products[index].price}')
                ],
              ),
              subtitle: Text(products[index].description),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {},
            ),
          );
        });
  }

  noImagePipe(context, index) {
    return Image.network(products[index].image);
  }
}
