part of 'recipe_bloc.dart';

 class RecipeState extends Equatable {
  const RecipeState();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

final class RecipeLoading extends RecipeState {
  @override
  List<Object> get props => [];
}

final class RecipeLoaded extends RecipeState {
  List<Recipes>?plist;
  RecipeLoaded({required this.plist});

  @override
  List<Object> get props => [plist!];
}

final class RecipeError extends RecipeState {
  late  String error;

  RecipeError({required this.error});

  @override
  List<Object> get props => [error];
}
final class RecipeSearch extends RecipeState {
  List<Recipes>?splist;
  RecipeSearch({required this.splist});

  @override
  List<Object> get props => [splist!];
}
class BookmarkUpdated extends RecipeState {
  final List<Recipes> bookmarkedRecipes;

   BookmarkUpdated({required this.bookmarkedRecipes});

  @override
  List<Object> get props => [bookmarkedRecipes];
}