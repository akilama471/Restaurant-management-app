import 'package:restaurant_manager/config/app_api.dart';
import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final String productName;
  final String productCategory;
  final String productImg;
  final double productPrice;
  final bool isRecommended;
  final bool isPopular;

  const ProductModel(
      {required this.productName,
      required this.productCategory,
      required this.productPrice,
      required this.productImg,
      required this.isRecommended,
      required this.isPopular});

  @override
  List<Object?> get props => [
        productName,
        productCategory,
        productPrice,
        productImg,
        isRecommended,
        isPopular
      ];

  static List<ProductModel> products = [
    const ProductModel(
        productName: "Chiken Tri Party",
        productCategory: "Pizza",
        productPrice: 830,
        productImg: '${AppApi.productImages}pizza_chiken_tri_party.jpg',
        isRecommended: true,
        isPopular: true),
    const ProductModel(
        productName: "Tandoori Chicken",
        productCategory: "Pizza",
        productPrice: 850,
        productImg: '${AppApi.productImages}pizza_tandoorichicken.jpg',
        isRecommended: true,
        isPopular: true),
    const ProductModel(
        productName: "Spicy Veggie with Paneer",
        productCategory: "Pizza",
        productPrice: 830,
        productImg: '${AppApi.productImages}pizza_spicy_veggie_with_paneer.jpg',
        isRecommended: true,
        isPopular: false),
    const ProductModel(
        productName: "Cheese Lovers",
        productCategory: "Pizza",
        productPrice: 820,
        productImg: '${AppApi.productImages}pizza_cheeselover.jpg',
        isRecommended: false,
        isPopular: true),
    const ProductModel(
        productName: "Devilled Chicken",
        productCategory: "Pizza",
        productPrice: 830,
        productImg: '${AppApi.productImages}pizza_devilledchickenbb.jpg',
        isRecommended: false,
        isPopular: true),
    const ProductModel(
        productName: "Black Chicken",
        productCategory: "Pizza",
        productPrice: 830,
        productImg: '${AppApi.productImages}pizza_black_chicken.jpg',
        isRecommended: true,
        isPopular: true),
    const ProductModel(
        productName: "BBQ Chicken",
        productCategory: "Pizza",
        productPrice: 830,
        productImg: '${AppApi.productImages}pizza_bbq_chicken.jpg',
        isRecommended: true,
        isPopular: true),
    const ProductModel(
        productName: "Butter Chicken Masala",
        productCategory: "Pizza",
        productPrice: 830,
        productImg: '${AppApi.productImages}pizza_butter_chicken_masala.jpg',
        isRecommended: true,
        isPopular: true),
    const ProductModel(
        productName: "Hot & Spicy Chicken",
        productCategory: "Pizza",
        productPrice: 830,
        productImg: '${AppApi.productImages}pizza_hot_and_spicy_chicken.jpg',
        isRecommended: true,
        isPopular: false),
    const ProductModel(
        productName: "Chicken Hawaiian",
        productCategory: "Pizza",
        productPrice: 830,
        productImg: '${AppApi.productImages}pizza_chicken_hawaiian.jpg',
        isRecommended: true,
        isPopular: false),
  ];
}
