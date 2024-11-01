import 'package:equatable/equatable.dart';
import 'package:restaurant_manager/config/app_api.dart';

class CategoryModel extends Equatable {
  final String title;
  final String imgUrl;

  const CategoryModel({required this.title, required this.imgUrl});

  @override
  List<Object?> get props => [title, imgUrl];

  static List<CategoryModel> categories = [
    const CategoryModel(
        title: 'Pizza', imgUrl: '${AppApi.catalogImages}drink.png'),
    const CategoryModel(
        title: 'Pizza', imgUrl: '${AppApi.catalogImages}drink.png'),
    const CategoryModel(
        title: 'Pizza', imgUrl: '${AppApi.catalogImages}drink.png'),
  ];
}
