import 'package:bloc/bloc.dart';
import 'package:cooking/Apiservice/apiservice.dart';
import 'package:equatable/equatable.dart';

import '../model/Recipes.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  RecipeBloc() : super(RecipeLoading()) {
    final apiservice = Apiservices();


    on<RecipeEvent>((event, emit) async {
      emit(RecipeLoading());
      try {
        var list = await apiservice.fetchall();
        emit(RecipeLoaded(plist: list));
      } catch (e) {
        emit(RecipeError(error: e.toString()));
      }
    });


    on<SearchRecipesEvent>((event, emit) async {
      emit(RecipeLoading());
      try {
        var searchList = await apiservice.serachrecipe(event.query);
        emit(RecipeSearch(splist: searchList));
      } catch (e) {
        emit(RecipeError(error: e.toString()));
      }
    });

  }
}
