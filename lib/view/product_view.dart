import 'package:colombo_pitza/components/dls_customappbar.dart';
import 'package:colombo_pitza/components/dls_herocarouselcard.dart';
import 'package:colombo_pitza/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  static const String routeName = '/product';

  static Route route({required ProductModel product}) {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => ProductView(product: product));
  }

  final ProductModel product;

  const ProductView({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appbarHeight: 50, title: product.productName),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: SizedBox(
          height: 70,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            IconButton(
                icon: const Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.favorite, color: Colors.white),
                onPressed: () {}),
            ElevatedButton(
              onPressed: () {},
              child: const Text('ADD TO CART',
                  style: TextStyle(color: Colors.white)),
            )
          ]),
        ),
      ),
      body: ListView(children: [
        DlsHeroCarouselCard(product: product),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.bottomCenter,
                color: Colors.black.withAlpha(50),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                width: MediaQuery.of(context).size.width - 10,
                height: 50,
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(product.productName,
                            style: const TextStyle(color: Colors.white)),
                        Text('Rs. ${product.productPrice}',
                            style: const TextStyle(color: Colors.white)),
                      ]),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
