import 'package:flutter/material.dart';
import 'package:hard_element/customWidgets/bottom_navbar.dart';
import 'package:hard_element/customWidgets/card_body.dart';
import 'package:hard_element/customWidgets/card_heading.dart';
import 'package:hard_element/screens/mode.dart';
import 'package:hard_element/screens/welcom_view.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<Category> catego = [
    Category(
      imagUrl: "assets/images/emily.png",
      name: "Yoga exercises",
    ),
    Category(
      imagUrl: "assets/images/sule.png",
      name: "Example exercises",
    ),
    Category(
      imagUrl: "assets/images/alexsandra.png",
      name: "Example exercises",
    ),
  ];

  final List menu = [
    "Popular",
    "Hard workout",
    "Full body",
    "Crossfit",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // width: double.infinity,
          // height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/image3.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hello,",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 32,
                              color: Colors.white,
                              letterSpacing: 1.8,
                            ),
                          ),
                          Text(
                            "Bankah",
                            style: GoogleFonts.bebasNeue(
                              fontSize: 32,
                              color: const Color(0xFF40D876),
                              letterSpacing: 1.8,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          border: Border.all(
                            width: 3,
                            color: const Color(0xFF40D876),
                          ),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/emely.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.1),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Center(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WelcomView(),
                            ),
                          );
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xFF40D876),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.play_arrow,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Find ",
                            style: GoogleFonts.lato(
                              fontSize: 26,
                              color: const Color(0xFF40D876),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "your Workout",
                            style: GoogleFonts.lato(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.filter_alt_outlined,
                        size: 40,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 353,
                    height: 46,
                    decoration: BoxDecoration(
                      color: const Color(0xFF232441),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "SEARCH WORKOUT",
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                          border: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        for (int i = 0; i < menu.length; i++)
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Text(
                              menu[i],
                              style: GoogleFonts.lato(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                const CardHeading(text: "Popular Workout"),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                        itemCount: catego.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) {
                          return CardBody(
                            image: AssetImage(catego[index].imagUrl), 
                            text: catego[index].name,
                          );
                        }),
                  ),
                ),
                const CardHeading(text: "Hard Workout"),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                        itemCount: catego.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) {
                          return CardBody(
                            image: AssetImage(catego[index].imagUrl), 
                            text: catego[index].name,
                          );
                        }),
                  ),
                ),
                const CardHeading(text: "Full body"),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                        itemCount: catego.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) {
                          return CardBody(
                            image: AssetImage(catego[index].imagUrl), 
                            text: catego[index].name,
                          );
                        }),
                  ),
                ),
                const CardHeading(text: "Crossfit"),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: ListView.builder(
                        itemCount: catego.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) {
                          return CardBody(
                            image: AssetImage(catego[index].imagUrl), 
                            text: catego[index].name,
                          );
                        }),
                  ),
                ),
                const SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

}
