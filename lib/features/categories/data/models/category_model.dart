import 'package:foodie_have/features/categories/domain/entities/category_entity.dart';

class CategoryModel extends CategoryEntity {
  const CategoryModel({
    super.id,
    super.name,
    super.thumbnail,
    super.description,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json['idCategory'],
        name: json['strCategory'],
        thumbnail: json['strCategoryThumb'],
        description: json['strCategoryDescription'],
      );

  Map<String, dynamic> toJson() => {
        'idCategory': id,
        'strCategory': name,
        'strCategoryThumb': thumbnail,
        'strCategoryDescription': description,
      };

  factory CategoryModel.fromEntity(CategoryEntity entity) => CategoryModel(
        id: entity.id,
        name: entity.name,
        thumbnail: entity.thumbnail,
        description: entity.description,
      );
}
