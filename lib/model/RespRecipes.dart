import 'Recipes.dart';
import 'dart:convert';

RespRecipes respRecipesFromJson(String str) => RespRecipes.fromJson(json.decode(str));
String respRecipesToJson(RespRecipes data) => json.encode(data.toJson());
class RespRecipes {
  RespRecipes({
      this.recipes, 
      this.total, 
      this.skip, 
      this.limit,});

  RespRecipes.fromJson(dynamic json) {
    if (json['recipes'] != null) {
      recipes = [];
      json['recipes'].forEach((v) {
        recipes?.add(Recipes.fromJson(v));
      });
    }
    total = json['total'];
    skip = json['skip'];
    limit = json['limit'];
  }
  List<Recipes>? recipes;
  num? total;
  num? skip;
  num? limit;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (recipes != null) {
      map['recipes'] = recipes?.map((v) => v.toJson()).toList();
    }
    map['total'] = total;
    map['skip'] = skip;
    map['limit'] = limit;
    return map;
  }

}