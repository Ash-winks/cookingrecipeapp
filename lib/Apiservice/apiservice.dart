import 'dart:convert';

import 'package:cooking/model/Recipes.dart';
import 'package:cooking/model/RespRecipes.dart';
import 'package:http/http.dart'as http;

class Apiservices{
  Future<List<Recipes>?>fetchall() async {
    final resp= await http.get(Uri.parse('https://dummyjson.com/recipes'));
    if(resp.statusCode>=200&&resp.statusCode<=299){
      var jsonn=jsonDecode(resp.body);
      var res=RespRecipes.fromJson(jsonn);
      var list=res.recipes;
      return list;
    }
  }
  Future<List<Recipes>?>serachrecipe(String query) async{
    final resp=await http.get(Uri.parse('https://dummyjson.com/recipes/search?q=$query'));
    if(resp.statusCode>=200&&resp.statusCode<=299){
      var jsonn=jsonDecode(resp.body);
      var res=RespRecipes.fromJson(jsonn);
      var list=res.recipes;
      return list;
    }
  }
}