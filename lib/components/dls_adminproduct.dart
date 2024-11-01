import 'package:restaurant_manager/model/product_model.dart';
import 'package:flutter/material.dart';

class AdminProductCard extends StatelessWidget {
  final ProductModel product;
  final String count;

  const AdminProductCard({super.key, required this.product, required this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Image.network(
            product.productImg,
            width: 100,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.productName),
                  Text('Rs.${product.productPrice}')
                ]),
          ),
          const SizedBox(
            width: 10,
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
            ],
          )
        ],
      ),
    );
  }
}
