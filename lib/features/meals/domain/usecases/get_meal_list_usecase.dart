import 'package:dartz/dartz.dart';
import 'package:foodie_have/core/errors/failures.dart';
import 'package:foodie_have/core/usecases/usecase.dart';

import 'package:foodie_have/features/meals/domain/entities/meal_entity.dart';
import 'package:foodie_have/features/meals/domain/repositories/meal_repository.dart';

class GetMealListUseCase extends UseCase<List<MealEntity>, String> {
  final MealRepository repository;

  GetMealListUseCase(this.repository);

  @override
  Future<Either<Failure, List<MealEntity>>> call(params) async {
    return await repository.getMealsByQuery(params);
  }
}
