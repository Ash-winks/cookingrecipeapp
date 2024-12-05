part of 'recipe_bloc.dart';

 class RecipeEvent extends Equatable {
  const RecipeEvent();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
class SearchRecipesEvent extends RecipeEvent {
 final String query;

 SearchRecipesEvent({required this.query});

 @override
 List<Object?> get props => [query];
}