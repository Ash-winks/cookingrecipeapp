import 'dart:math';
import 'package:cooking/bloc/recipe_bloc.dart';
import 'package:cooking/View/UI/search%20recipes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'deatilepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> category = ['All', 'Indian', 'Italian', 'Arabic', 'Chinese'];
  late var selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 35, top: 15),
              child: Text(
                'Hello',
                style: GoogleFonts.raleway(
                    fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35,top: 5),
              child: Text(
                'What are you cooking today?',
                style: GoogleFonts.raleway(
                    color: Colors.grey.withOpacity(0.8),
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 35, right: 20, top: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchRecipes(),
                        ),
                      );
                    },
                    child: Container(
                      width: 310,
                      height: 53,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2.1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: 10, top: 2),
                            child: Icon(Icons.search, color: Colors.grey),
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Search Recipes',
                            style: GoogleFonts.poppins(color: Colors.grey,fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 53,
                      height: 53,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff129575),
                        border:
                            Border.all(width: 2.0, color: Color(0xff129575)),
                      ),
                      child: Center(
                        child: Image.asset('asset/image/filter.png',
                            height: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 25),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  child: Row(
                    children: List.generate(category.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedindex = index;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext) => Deatilepage(
                                category: category[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: 35,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: selectedindex == index
                                ? Color(0xff129575)
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            category[index],
                            style: GoogleFonts.aleo(
                              fontSize: 14,
                              color: selectedindex == index
                                  ? Colors.white
                                  : Color(0xff129575),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),

            // BlocBuilder Content (Scrollable Recipes)
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 360,
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
                    return ListView.separated(
                      padding: EdgeInsets.fromLTRB(15, 0, 10, 20),
                      scrollDirection: Axis.horizontal,
                      itemCount: min(state.plist!.length, 5),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(15, 95, 10, 0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Stack(
                              clipBehavior: Clip.none, //to overlay
                              children: [
                                Card(
                                  elevation: 5,
                                  child: Container(
                                    height: 230,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.withOpacity(0.1)),
                                  ),
                                ),
                                Positioned(
                                    top: -55,
                                    left: 45,
                                    child: CircleAvatar(
                                      radius: 60,
                                      backgroundImage: NetworkImage(
                                          '${state.plist?[index].image}'),
                                    )),
                                Positioned(
                                    top: -25,
                                    left: 145,
                                    child: Container(
                                      width: 60,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              width: 0.5,
                                              color: Color(0xffffe1b3)),
                                          color: Color(0xffffe1b3)),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(7, 0, 0, 0),
                                            child: Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Color(0xffffad30),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          Text('${state.plist?[index].rating}'),
                                        ],
                                      ),
                                    )),
                                Positioned(
                                    top: 80,
                                    left: 10,
                                    child: SizedBox(
                                      width: 180,
                                      child: Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(7, 0, 0, 0),
                                        child: Text(
                                          '${state.plist?[index].name}',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              color: Colors.black
                                                  .withOpacity(0.7)),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                    left: 15,
                                    top: 175,
                                    child: Text(
                                      'Time',
                                      style: GoogleFonts.aleo(
                                          color: Colors.black.withOpacity(0.5)),
                                    )),
                                Positioned(
                                    left: 15,
                                    top: 200,
                                    child: Text(
                                      '${state.plist?[index].cookTimeMinutes} Mins',
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black.withOpacity(0.8)),
                                    )),
                                Positioned(
                                  left: 160,
                                  top: 180,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: CircleAvatar(
                                        backgroundColor:
                                            Colors.white.withOpacity(0.4),
                                        child: Image(
                                          image: AssetImage(
                                              'asset/image/bookmark.png'),
                                          width: 20,
                                          height: 20,
                                          color: Color(0xff129575),
                                        )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 10);
                      },
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(35, 20, 0, 20),
              child: Text(
                'New Recipes ',
                style: GoogleFonts.aleo(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Container(
                height: 165,
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
                      final int startIndex = state.plist!.length > 5
                          ? state.plist!.length - 5
                          : 0; //to get the last 5 items from the list
                      final List<dynamic> lastFiveItems =
                          state.plist!.sublist(startIndex);
                      return ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.fromLTRB(15, 35, 10, 20),
                          itemCount: lastFiveItems.length,
                          itemBuilder: (BuildContext context, int index) {
                            final item = lastFiveItems[index];
                            return Padding(
                              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Stack(clipBehavior: Clip.none, children: [
                                Container(
                                  width: 290,
                                  height: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 1, color: Colors.white)),
                                ),
                                Positioned(
                                    top: -35,
                                    left: 190,
                                    child: CircleAvatar(
                                      radius: 45,
                                      backgroundImage: NetworkImage(item.image),
                                    )),
                                Positioned(
                                    top: 15,
                                    left: 10,
                                    child: SizedBox(
                                      width: 170,
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: Text(
                                          '${item.name}',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color:
                                                  Colors.black.withOpacity(0.8)),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    )),
                                Positioned(
                                  left: 10,
                                  top: 45,
                                  child: Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Color(0xffffad30),
                                  ),
                                ),
                                Positioned(
                                    top: 44,
                                    left: 35,
                                    child: Text(
                                      '${item.rating}',
                                      style: GoogleFonts.aleo(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15),
                                    )),
                                Positioned(
                                    top: 75,
                                    left: 10,
                                    child: Text(
                                      'CUISINE :',
                                      style: GoogleFonts.aleo(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.grey),
                                    )),
                                Positioned(
                                    top: 75,
                                    left: 80,
                                    child: Text(
                                      '${item.cuisine}',
                                      style: GoogleFonts.aleo(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.grey),
                                    )),
                                Positioned(
                                    top: 74,
                                    left: 180,
                                    child: Icon(
                                      Icons.timer_sharp,
                                      color: Colors.grey,
                                    )),
                                Positioned(
                                    top: 77,
                                    left: 210,
                                    child: Text(
                                      '${item.cookTimeMinutes} Mins',
                                      style: GoogleFonts.aleo(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    )),
                              ]),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 10,
                            );
                          });
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
