import 'package:dartz/dartz.dart';
import 'package:foodie_have/core/errors/failures.dart';
import 'package:foodie_have/core/usecases/no_params.dart';
import 'package:foodie_have/core/usecases/usecase.dart';

import 'package:foodie_have/features/meals/domain/entities/meal_entity.dart';
import 'package:foodie_have/features/meals/domain/repositories/meal_repository.dart';

class LookupRandomMealUseCase extends UseCase<MealEntity, NoParams> {
  final MealRepository repository;

  LookupRandomMealUseCase(this.repository);

  @override
  Future<Either<Failure, MealEntity>> call(NoParams params) async {
    return await repository.lookupRandomMeal();
  }
}
