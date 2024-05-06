import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_masterclass/general/bottom_bar.dart';
import 'package:flutter_masterclass/home/home_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
                
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      HomeCard(),
                      HomeCard(),
                      HomeCard(),
                      HomeCard(),
                      HomeCard(),
                    ],
                  ),
                ),

              ],
            ),

            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 201, 227, 243),
                ),
                padding: const EdgeInsets.all(20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.menu_book_sharp,
                          size: 30,
                          color: Colors.black87,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          "About the books",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 0.0,),

            Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 201, 227, 243),
                ),
                padding: const EdgeInsets.all(20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.privacy_tip,
                          size: 30,
                          color: Colors.black87,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
