import 'package:dartz/dartz.dart';
import 'package:foodie_have/core/errors/failures.dart';
import 'package:foodie_have/core/usecases/no_params.dart';
import 'package:foodie_have/core/usecases/usecase.dart';
import 'package:foodie_have/features/categories/domain/entities/category_entity.dart';
import 'package:foodie_have/features/categories/domain/repositories/category_repository.dart';

class GetCategoryListUseCase extends UseCase<List<CategoryEntity>, NoParams> {
  final CategoryRepository repository;

  GetCategoryListUseCase(this.repository);

  @override
  Future<Either<Failure, List<CategoryEntity>>> call(NoParams params) async {
    return await repository.getCategories();
  }
}
