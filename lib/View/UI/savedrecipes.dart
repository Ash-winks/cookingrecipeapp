import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../bloc/recipe_bloc.dart';
import 'deatilssavedrecipe.dart';

class Savedrecipes extends StatefulWidget {
  const Savedrecipes({super.key});

  @override
  State<Savedrecipes> createState() => _SavedrecipesState();
}

class _SavedrecipesState extends State<Savedrecipes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(appBar: AppBar(
        automaticallyImplyLeading: false,
        forceMaterialTransparency: true,
        centerTitle: true,
        title: Text(
          'Saved Recipes',
          style: GoogleFonts.poppins(
              fontSize: 23, fontWeight: FontWeight.bold),
        )
      ),
        body: Padding(
          padding:  EdgeInsets.only(left: 10),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: BlocBuilder<RecipeBloc, RecipeState>(
                  builder: (context, state) {
                    if (state is RecipeLoading) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: Colors.grey,
                        ),
                      );
                    } else if (state is RecipeError) {
                      return Center(
                        child: Text('${state.error}'),
                      );
                    } else if (state is RecipeLoaded) {
                      return ListView.builder(
                          padding: EdgeInsets.fromLTRB(32, 10, 10, 20),
                          scrollDirection: Axis.vertical,
                          itemCount: min(state.plist!.length, 4),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext) =>
                                              Deatilssavedrecipe()));
                                },
                                child: Stack(
                                  clipBehavior: Clip.none, //to overlay
                                  children: [
                                    Container(
                                      height: 180,
                                      width: 350,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Stack(children: [
                                            Image.network(
                                              '${state.plist?[index].image}',
                                              fit: BoxFit.cover,
                                              width: 400,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  tileMode: TileMode.clamp,
                                                  end: Alignment.bottomCenter,
                                                  begin: Alignment.topCenter,
                                                  colors: [
                                                    Colors.transparent,
                                                    Colors.black.withOpacity(0.8)
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                                top: 10,
                                                left: 290,
                                                child: Container(
                                                  width: 50,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      border: Border.all(
                                                          width: 0.5,
                                                          color:
                                                              Color(0xffffe1b3)),
                                                      color: Color(0xffffe1b3)),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                1, 0, 0, 0),
                                                        child: Icon(
                                                          Icons.star,
                                                          size: 15,
                                                          color:
                                                              Color(0xffffad30),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 2,
                                                      ),
                                                      Text(
                                                          '${state.plist?[index].rating}'),
                                                    ],
                                                  ),
                                                )),
                                            Positioned(
                                              left: 10,
                                              bottom: 10,
                                              child: SizedBox(
                                                width: 170,
                                                child: Text(
                                                  '${state.plist?[index].name}',
                                                  style: GoogleFonts.aleo(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 17,
                                                      color: Colors.white),
                                                  maxLines: 2,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                                top: 144,
                                                left: 215,
                                                child: Icon(
                                                  Icons.timer_sharp,
                                                  color: Colors.white,
                                                )),
                                            Positioned(
                                                top: 146,
                                                left: 240,
                                                child: Text(
                                                  ' ${state.plist?[index].cookTimeMinutes} Mins',
                                                  style: GoogleFonts.aleo(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white),
                                                )),
                                            Positioned(
                                              left: 310,
                                              top: 136,
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: CircleAvatar(radius: 18,
                                                    backgroundColor:
                                                    Colors.white,
                                                    child: Image(
                                                      image: AssetImage(
                                                          'asset/image/bookmark.png'),
                                                      width: 20,
                                                      height: 20,
                                                      color: Color(0xff129575),
                                                    )),
                                              ),
                                            )
                                          ])),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
