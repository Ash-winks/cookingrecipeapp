import 'package:cooking/bloc/recipe_bloc.dart';
import 'package:cooking/View/UI/landingpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<RecipeBloc>(
        create: (BuildContext context) =>RecipeBloc()..add(RecipeEvent()),
      ),
    ],
    child: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home: Landingpage(),);
  }
}
