import 'package:dartz/dartz.dart';
import 'package:foodie_have/core/errors/failures.dart';
import 'package:foodie_have/core/usecases/usecase.dart';

import 'package:foodie_have/features/meals/domain/entities/meal_entity.dart';
import 'package:foodie_have/features/meals/domain/repositories/meal_repository.dart';

class GetMealByIdUseCase extends UseCase<MealEntity, String> {
  final MealRepository repository;

  GetMealByIdUseCase(this.repository);

  @override
  Future<Either<Failure, MealEntity>> call(params) async {
    return await repository.getMealsById(params);
  }
}
