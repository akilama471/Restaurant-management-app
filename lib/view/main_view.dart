import 'package:carousel_slider/carousel_slider.dart';
import 'package:colombo_pitza/components/dls_customappbar.dart';
import 'package:colombo_pitza/components/dls_headingtitle.dart';
import 'package:colombo_pitza/components/dls_herocarouselcard.dart';
import 'package:colombo_pitza/components/dls_productcarousel.dart';
import 'package:colombo_pitza/model/category_model.dart';
import 'package:colombo_pitza/model/product_model.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  static const String routeName = '/';

  const MainView({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const MainView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appbarHeight: 70,
        title: 'Colombo Pizza',
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            CarouselSlider(
                items: CategoryModel.categories
                    // ignore: non_constant_identifier_names
                    .map((Category) => DlsHeroCarouselCard(category: Category))
                    .toList(),
                options: CarouselOptions(
                    aspectRatio: 1.8,
                    viewportFraction: 0.9,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height)),
            const HeadingTitile(title: 'RECOMMENDED'),
            ProductCarousel(
                products: (ProductModel.products
                    .where((product) => product.isRecommended)
                    .toList())),
            const HeadingTitile(title: 'MOST POPULAR'),
            ProductCarousel(
                products: (ProductModel.products
                    .where((product) => product.isPopular)
                    .toList())),
          ],
        ),
      ),
    );
  }
}
