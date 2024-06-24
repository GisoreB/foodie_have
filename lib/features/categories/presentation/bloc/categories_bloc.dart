import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:foodie_have/core/di/injector.dart';
import 'package:foodie_have/core/usecases/no_params.dart';
import 'package:foodie_have/features/categories/domain/usecases/get_category_list_usecase.dart';

import '../../domain/entities/category_entity.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc({required GetCategoryListUseCase getCategoriesUsecase})
      : super(CategoriesInitial()) {
    on<FetchCategories>((event, emit) async {
      emit(CategoriesLoading());
      final result = await sl<GetCategoryListUseCase>().call(NoParams());
      result.fold(
        (failure) => emit(CategoriesError(failure.toString())),
        (categories) => emit(CategoriesLoaded(categories)),
      );
    });
  }
}
