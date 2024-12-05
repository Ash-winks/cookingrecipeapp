import 'dart:math';
import 'package:cooking/View/UI/reviewrecipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../bloc/recipe_bloc.dart';
import 'dashboard.dart';

class Deatilssavedrecipe extends StatefulWidget {
  const Deatilssavedrecipe({
    super.key,
  });

  @override
  State<Deatilssavedrecipe> createState() => _DeatilssavedrecipeState();
}

class _DeatilssavedrecipeState extends State<Deatilssavedrecipe> {
  void showalert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
              height: 190,
              width: 800,
              child: Stack(
                children: [
                  Positioned(
                      left: 15,
                      top: 10,
                      child: Text(
                        'Recipe Link',
                        style: GoogleFonts.aleo(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      )),
                  Positioned(
                      left: 320,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.cancel_outlined))),
                  Positioned(
                      top: 60,
                      left: 10,
                      child: SizedBox(
                        width: 280,
                        child: Text(
                          'Copy the link and share the link with your friends and family.',
                          style: GoogleFonts.aleo(
                              fontSize: 17,
                              color: Colors.black.withOpacity(0.5)),
                          maxLines: 2,
                          textAlign: TextAlign.start,
                        ),
                      )),
                  Positioned(
                      top: 120,
                      left: 10,
                      right: 10,
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 0.6,
                                color: Colors.grey.withOpacity(0.6)),
                            color: Colors.grey.withOpacity(0.6)),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text(
                            'app.Recipe.co/chicken_rice',
                            style: GoogleFonts.aleo(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 120,
                      left: 220,
                      right: 10,
                      child: GestureDetector(
                        onTap: () {
                          OverlayEntry overlayEntry =
                              OverlayEntry(//to display the link has been copied
                                  builder: (BuildContext context) {
                            return Positioned(
                              top: 940,
                              left: 175,
                              child: Material(
                                color: Colors.transparent,
                                child: Container(
                                  width: 130,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          width: 1, color: Colors.white)),
                                  child: Center(
                                    child: Text(
                                      'Link Copied',
                                      style: GoogleFonts.aleo(fontSize: 14),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          });
                          Overlay.of(context).insert(
                              overlayEntry); //to remove the text after few seconds
                          Future.delayed(Duration(seconds: 1), () {
                            overlayEntry.remove();
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 0.6, color: Color(0xff129575)),
                              color: Color(0xff129575)),
                          child: Center(
                              child: Text(
                            'Copy Link',
                            style: GoogleFonts.aleo(
                                fontSize: 16, color: Colors.white),
                          )),
                        ),
                      ))
                ],
              )),
        );
      },
    );
  }

  void alerttoraterecipe() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            width: 70,
            height: 120,
            child: Stack(
              children: [
                Positioned(
                    top: 10,
                    left: 100,
                    right: 50,
                    child: Text(
                      'Rate Recipe',
                      style: GoogleFonts.aleo(fontSize: 16),
                    )),
                Positioned(
                    top: 35,
                    left: 40,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star_border_outlined),
                      color: Colors.orange,
                    )),
                Positioned(
                    top: 35,
                    left: 80,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star_border_outlined),
                      color: Colors.orange,
                    )),
                Positioned(
                    top: 35,
                    left: 120,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star_border_outlined),
                      color: Colors.orange,
                    )),
                Positioned(
                    top: 35,
                    left: 160,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star_border_outlined),
                      color: Colors.orange,
                    )),
                Positioned(
                    top: 35,
                    left: 200,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.star_border_outlined),
                      color: Colors.orange,
                    )),
                Positioned(
                    top: 90,
                    left: 100,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 20,
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Colors.grey.withOpacity(0.5)),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.5)),
                          child: Center(
                              child: Text(
                            'Submit',
                            style: GoogleFonts.aleo(
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.6)),
                          ))),
                    )),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext) => Dashboard(
                              initialindex: 1,
                            )));
              },
              icon: Icon(Icons.arrow_back)),
          actions: [
            PopupMenuButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              popUpAnimationStyle: AnimationStyle(curve: Curves.fastOutSlowIn),
              position: PopupMenuPosition.under,
              elevation: 4,
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                      value: 0,
                      child: Row(
                        children: [
                          Icon(Icons.share_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Share',
                            style:
                                GoogleFonts.aleo(fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  PopupMenuItem(
                      value: 1,
                      child: Row(
                        children: [
                          Icon(Icons.star),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Rate Recipe',
                            style:
                                GoogleFonts.aleo(fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  PopupMenuItem(
                      value: 2,
                      child: Row(
                        children: [
                          Icon(Icons.comment),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Review',
                            style:
                                GoogleFonts.aleo(fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  PopupMenuItem(
                      value: 3,
                      child: Row(
                        children: [
                          Icon(Icons.bookmark),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Unsave',
                            style:
                                GoogleFonts.aleo(fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                ];
              },
              onSelected: (value) {
                if (value == 0) {
                  showalert(context);
                } else if (value == 1) {
                  alerttoraterecipe();
                } else if (value == 2) {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryanimation) =>
                                  Reviewrecipe(),
                          transitionDuration: Duration(milliseconds: 400),
                          transitionsBuilder:
                              (context, animation, secondaryanimation, child) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          }));
                }
              },
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              Container(
                width: 700,
                height: 200,
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
                      return Column(
                          children: List.generate(min(state.plist!.length, 1),
                              (index) {
                        return Stack(
                          clipBehavior: Clip.none, //to overlay
                          children: [
                            Container(
                              height: 180,
                              width: 370,
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
                                        left: 300,
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
                                                padding: EdgeInsets.fromLTRB(
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
                                        top: 144,
                                        left: 5,
                                        child: Icon(
                                          Icons.timer_sharp,
                                          color: Colors.white,
                                        )),
                                    Positioned(
                                        top: 147,
                                        left: 30,
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
                        );
                      }));
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
              Row(
                children: [
                  SizedBox(
                      width: 180,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Classic Marghertia Pizza',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 17),
                          maxLines: 2,
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 80, bottom: 20),
                    child: Text('(13K Reviews)',
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.grey)),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: Stack(
                  children: [
                    Positioned(
                        right: 325,
                        child: CircleAvatar(
                          radius: 28,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/OIP.FRHdiwY9kZ6FMzaHbYYqvwHaLW?w=131&h=201&c=7&r=0&o=5&pid=1.7'),
                            radius: 27,
                          ),
                        )),
                    Positioned(
                        right: 220,
                        child: Text('Laura Willam',
                            style: GoogleFonts.poppins(
                                fontSize: 15, color: Colors.black))),
                    Positioned(
                        right: 299,
                        top: 20,
                        child: Icon(
                          Icons.location_pin,
                          color: Color(0xff129575),
                        )),
                    Positioned(
                        right: 190,
                        top: 20,
                        child: Text('Lagos,Nigeria',
                            style: GoogleFonts.poppins(
                                fontSize: 15, color: Colors.grey))),
                    Positioned(
                        left: 270,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff129575),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {},
                            child: Text(
                              'FOLLOW',
                              style: GoogleFonts.aleo(
                                  fontSize: 15, color: Colors.white),
                            ))),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TabBar(
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff129575),
                      border: Border.all(width: 1, color: Color(0xff129575))),
                  labelStyle:
                      GoogleFonts.aleo(color: Colors.white, fontSize: 15),
                  labelColor: Colors.white,
                  tabs: [
                    Container(
                      width: 140,
                      height: 40,
                      child: Tab(
                        text: 'Ingredient',
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 40,
                      child: Tab(
                        text: 'Procedure',
                      ),
                    )
                  ]),
              Expanded(
                  child: TabBarView(children: [Ingredients(), Procedure()])),
            ],
          ),
        ),
      ),
    );
  }
}

class Ingredients extends StatelessWidget {
  const Ingredients({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> ingredient = [
      {
        'name': ' Homemade pizza crust',
        'Quantity': '1/4',
        'image':
            'https://picky-palate.com/wp-content/uploads/2020/03/IMG_4484-scaled.jpg'
      },
      {
        'name': ' olive oil',
        'Quantity': '2 teaspoons ',
        'image':
            'https://th.bing.com/th/id/OIP.rLtB06wkZcOTQYWJsVSu1gHaKY?w=137&h=191&c=7&r=0&o=5&pid=1.7'
      },
      {
        'name': '  Marinara sauce',
        'Quantity': '2 tablespoons',
        'image':
            'https://th.bing.com/th/id/OIP.2CiFKgJZPVyr5Wi2c-VJ-gHaLH?w=138&h=192&c=7&r=0&o=5&pid=1.7'
      },
      {
        'name': 'Clove Garlic , minced',
        'Quantity': '100g',
        'image':
            'https://th.bing.com/th/id/OIP.QAMiaIMEfWe_KWCqbIGB2gHaHa?w=175&h=180&c=7&r=0&o=5&pid=1.7'
      },
      {
        'name': '  Mozzarella cheese',
        'Quantity': '3 ounces',
        'image':
            'https://th.bing.com/th/id/OIP.42WVUDM_bh63LbCjjEykyQHaE8?w=246&h=180&c=7&r=0&o=5&pid=1.7'
      },
      {
        'name': '   Tomato , sliced',
        'Quantity': '1',
        'image':
            'https://th.bing.com/th/id/OIP.ZHMofVWoNVLZDbZZuwBggQHaHa?w=191&h=192&c=7&r=0&o=5&pid=1.7'
      },
      {
        'name': '  Basil leaves',
        'Quantity': '2',
        'image':
            'https://th.bing.com/th/id/OIP.EEwB6FVahx9GDtrKytRd3gHaHa?w=180&h=180&c=7&r=0&o=5&pid=1.7'
      },
      {
        'name': '   black pepper',
        'Quantity': '10 g',
        'image':
            'https://th.bing.com/th/id/OIP.DsmSRaOL0P85Mc_eI8oYpQHaHa?w=183&h=183&c=7&r=0&o=5&pid=1.7'
      },
    ];
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.restaurant_menu,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8,
              ),
              Padding(
                padding: EdgeInsets.only(right: 240),
                child: Text(
                  '1 serve',
                  style: GoogleFonts.aleo(fontSize: 16, color: Colors.grey),
                ),
              ),
              Text(
                '8 items',
                style: GoogleFonts.aleo(fontSize: 16,color: Colors.grey),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Expanded(
              child: ListView.builder(
               itemCount: ingredient.length,
               itemBuilder: (BuildContext context, int index) {
               final ingredients = ingredient[index];
               return Card(
                child: Container(
                  width: 120,
                  height: 100,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(ingredients['image']!),
                    ),
                    title: Text(ingredients['name']!,style: GoogleFonts.aleo(fontSize: 19),maxLines: 2,textAlign: TextAlign.start,),
                    trailing: Text(ingredients['Quantity']!,style: GoogleFonts.aleo(fontSize: 16,fontWeight: FontWeight.bold)),
                  ),
                ),
              );
            },
          )),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}

class Procedure extends StatelessWidget {
  const Procedure({super.key});

  @override
  Widget build(BuildContext context) {
    List procedure = [
      'Place a pizza stone in the oven. Preheat the oven to 500 degrees F, allowing the stone to get hot.',
      'Shape the pizza dough on a floured surface into an 8-inch round and 1/4-inch thick. Transfer it to a pizza peel lined with parchment paper. Reshape if necessary.',
      'Gently brush the dough with the olive oil, then evenly spread the marinara sauce on, leaving a 1-inch border around the edge. Sprinkle the garlic over the top. Top with the mozzarella slices and tomatoes, leaving space in between.',
      'Slide the parchment with the crust onto the heated stone. Bake for 8-10 minutes until crust is golden and cheese is melted and bubbly. Remove from oven and sprinkle the basil over the top, along with 1-2 grinds of fresh black pepper.',
      'Cut into wedges and serve immediately.',
    ];
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Expanded(
              child: ListView.separated(
            itemCount: procedure.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  width: 120,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1, color: Colors.grey.withOpacity(0.4)),
                      color: Colors.grey.withOpacity(0.2)),
                  child: Stack(
                    children: [
                      Positioned(
                          left: 10,
                          child: Text(
                            'Step ${index + 1}:',
                            style: GoogleFonts.poppins(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                          top: 25,
                          left: 20,
                          child: SizedBox(
                            width: 300,
                            child: Text(
                              maxLines: 9,
                              procedure[index],
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ))
                    ],
                  ));
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10,
              );
            },
          )),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}
