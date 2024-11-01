import 'package:restaurant_manager/components/dls_actionbtn.dart';
import 'package:restaurant_manager/components/dls_cartproductcard.dart';
import 'package:restaurant_manager/components/dls_customappbar.dart';
import 'package:restaurant_manager/model/product_model.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const CartView());
  }

  const CartView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appbarHeight: 50, title: "Cart List"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Your Cart hear...'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(),
                      elevation: 0),
                  child: const Text('Add More Items'))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CartProductCard(
            product: ProductModel.products[0],
            count: '2',
          ),
          CartProductCard(
            product: ProductModel.products[4],
            count: '4',
          ),
          CartProductCard(
            product: ProductModel.products[5],
            count: '1',
          ),
          CartProductCard(
            product: ProductModel.products[2],
            count: '3',
          ),
          const Divider(
            thickness: 2,
          ),
          DlsActionbtn(
            title: 'Proceed Payment',
            onPressAction: () {},
            backColr: Colors.black87,
            foreColr: Colors.white,
          )
        ]),
      ),
    );
  }
}
