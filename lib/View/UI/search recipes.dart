import 'package:cooking/bloc/recipe_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboard.dart';
import 'filteroption.dart';

class SearchRecipes extends StatefulWidget {
  const SearchRecipes({super.key});

  @override
  State<SearchRecipes> createState() => _SearchRecipesState();
}

class _SearchRecipesState extends State<SearchRecipes> {
  void fliteroption() {
    showModalBottomSheet(
        barrierColor: Colors.black.withOpacity(0.2),
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.vertical(top: Radius.elliptical(50, 50))),
        context: context,
        builder: (context) => Filteroption());
  }

  String query = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext) {
                return Dashboard();
              }));
            },
            icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          'Search Recipes',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
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
                          padding: EdgeInsets.fromLTRB(15, 2, 0, 0),
                          child: Icon(Icons.search, color: Colors.grey),
                        ),
                        SizedBox(width: 15,),
                        Expanded(
                          child: TextFormField(
                            cursorColor: Colors.grey,
                            onChanged: (newstring) {
                              setState(() {
                                query = newstring;
                              });
                              print('Search query: $query');
                              context
                                  .read<RecipeBloc>()
                                  .add(SearchRecipesEvent(query: query));
                            }, //what we type on the texfiedl it will updated using onchanged
                            style: GoogleFonts.poppins(color: Colors.black),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search Recipes',
                              hintStyle:
                                  GoogleFonts.poppins(color: Colors.grey,fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                GestureDetector(
                  onTap: () {
                    fliteroption();
                  },
                  child: Container(
                    width: 53,
                    height: 53,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff129575),
                        border:
                            Border.all(width: 2.0, color: Color(0xff129575))),
                    child: Center(
                        child: Image.asset(
                      'asset/image/filter.png',
                      height: 30,
                      color: Colors.white,
                    )),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
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
                    return GridView.builder(
                      padding: EdgeInsets.fromLTRB(30, 10, 25, 20),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 15.0,
                      ),
                      itemCount: state.plist!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Stack(
                              clipBehavior: Clip.none, // To allow overlay
                              children: [
                                Container(
                                  height: 180,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Stack(children: [
                                        Image.network(
                                          '${state.plist?[index].image}',
                                          fit: BoxFit.fill,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Colors.transparent,
                                                Colors.black.withOpacity(0.8),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                            top: 10,
                                            left: 110,
                                            child: Container(
                                              width: 50,
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
                                                        EdgeInsets.fromLTRB(
                                                            1, 0, 0, 0),
                                                    child: Icon(
                                                      Icons.star,
                                                      size: 15,
                                                      color: Color(0xffffad30),
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
                                          bottom: 20,
                                          left: 5,
                                          right: 10,
                                          child: Text(
                                            '${state.plist?[index].name}',
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ])),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
