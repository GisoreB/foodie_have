import 'package:foodie_have/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:foodie_have/features/categories/domain/entities/category_entity.dart';

abstract class CategoryRepository {
  Future<Either<Failure, List<CategoryEntity>>> getCategories();
}
