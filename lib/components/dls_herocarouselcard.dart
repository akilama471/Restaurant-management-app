import 'package:colombo_pitza/model/category_model.dart';
import 'package:colombo_pitza/model/product_model.dart';
import 'package:flutter/material.dart';

class DlsHeroCarouselCard extends StatelessWidget {
  final CategoryModel? category;
  final ProductModel? product;

  const DlsHeroCarouselCard({Key? key, this.category, this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (product == null) {
          Navigator.pushNamed(context, '/catalog', arguments: category);
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 20),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.network(
                product == null ? category!.imgUrl : product!.productImg,
                fit: BoxFit.cover,
                width: 1000.0,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(200, 0, 0, 0),
                    Color.fromARGB(0, 0, 0, 0)
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    product == null ? category!.title : product!.productName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
