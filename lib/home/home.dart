import 'package:flutter/material.dart';
import 'package:flutter_masterclass/general/bottom_bar.dart';
import 'package:flutter_masterclass/general/icon_text_link_card.dart';
import 'package:flutter_masterclass/home/home_card.dart';

import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    List<dynamic> bibleStudiesJsonData = [];
  
  @override
  void initState() {
    super.initState();
    _loadJsonData();
  }

  Future<void> _loadJsonData() async {
    String jsonString = await rootBundle.loadString('assets/db/bibleStudies.json');
    setState(() {
      bibleStudiesJsonData = json.decode(jsonString);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 229, 229),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 170,
              child: Container(
                decoration: const BoxDecoration(
                  // background image for container
                  borderRadius: BorderRadius.only(
                      // border radius for container
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                  color: Colors.white, // color of container
                  image: DecorationImage(
                    // image of container
                    image: AssetImage('assets/home/bgImage.jpg'), // image path
                    fit: BoxFit.cover, // image fit
                  ),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                      child: Text(
                        "5th May 2024",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      OutlinedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Colors.blue[800]), // adds background color
                          foregroundColor: const MaterialStatePropertyAll(
                              Colors.white), // adds foreground color
                          overlayColor: const MaterialStatePropertyAll(
                              Colors.white), // adds overlay color
                          side: const MaterialStatePropertyAll(BorderSide(
                              color: Color.fromARGB(
                                  255, 2, 65, 117))), // adds border color
                          shape: const MaterialStatePropertyAll(
                              CircleBorder()), // makes it circular
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.zero), // remove padding
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios_new),
                        label: const Text(""),
                      ),
                      const Text(
                        "Week 17",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      OutlinedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Colors.blue[800]), // adds background color
                          foregroundColor: const MaterialStatePropertyAll(
                              Colors.white), // adds foreground color
                          overlayColor: const MaterialStatePropertyAll(
                              Colors.white), // adds overlay color
                          side: const MaterialStatePropertyAll(BorderSide(
                              color: Color.fromARGB(
                                  255, 2, 65, 117))), // adds border color
                          shape: const MaterialStatePropertyAll(
                              CircleBorder()), // makes it circular
                          padding: const MaterialStatePropertyAll(
                              EdgeInsets.zero), // remove padding
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios),
                        label: const Text(""),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(
                  height: 20,
                ),
                
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // for(int i = 0; i <= 4; i++)
                      //   const HomeCard(
                      //     bsTitle: "Bible Studies",
                      //     hcTitle: "Home Cell",
                      //   ),
                      for (int i = 0; i < bibleStudiesJsonData.length; i++)
                        HomeCard(
                          bsTitle: bibleStudiesJsonData[i]['name'], 
                          hcTitle: bibleStudiesJsonData[i]['description'],
                          id: bibleStudiesJsonData[i]['id'],
                        ),
                    ],
                  ),
                ),

              ],
            ),

            const SizedBox(height: 30),

            const IconTextLinkCard(
              leadIcon: Icons.menu_book_sharp, 
              text: "About the books", 
              endIcon: Icons.arrow_forward_ios,
            ),

            const IconTextLinkCard(
              leadIcon: Icons.privacy_tip, 
              text: "Privacy Policy", 
              endIcon: Icons.arrow_forward_ios,
            ),

          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
