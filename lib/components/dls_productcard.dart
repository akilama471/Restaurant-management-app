import 'package:colombo_pitza/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/product', arguments: product);
      },
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            height: 150,
            child: Image.network(
              product.productImg,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: 60,
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: 80,
                decoration: BoxDecoration(color: Colors.black.withAlpha(200)),
              )),
          Positioned(
              top: 65,
              left: 5,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 2.5 - 10,
                height: 70,
                child: Row(children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.productName,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$${product.productPrice}',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle,
                          color: Colors.white,
                        )),
                  )
                ]),
              )),
        ],
      ),
    );
  }
}
