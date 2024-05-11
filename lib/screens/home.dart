import 'package:flutter/material.dart';
import 'package:hard_element/customWidgets/bottom_navy_bar.dart';
import 'package:hard_element/screens/card_details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Data> data = [
    Data(
      imageUrl: "assets/images/Jumanji.jpg",
      id: 0,
    ),
    Data(
      imageUrl: "assets/images/Avengers.jpg",
      id: 1,
    ),
    Data(
      imageUrl: "assets/images/Gray_man.jpg",
      id: 2,
    ),
    Data(
      imageUrl: "assets/images/Justice_League.jpg",
      id: 3,
    ),
    Data(
      imageUrl: "assets/images/LUCK.jpg",
      id: 4,
    ),
    Data(
      imageUrl: "assets/images/the100.jpg",
      id: 5,
    ),
    Data(
      imageUrl: "assets/images/Togo.jpg",
      id: 6,
    ),
  ];

  final List<String> category = [
    "New",
    "Trending",
    "Funny",
    "Drama",
  ];

  List<OffersTypes> offers = [
    OffersTypes(
      icon: Icons.house,
      text: "Special Theatre",
      color: Colors.white,
      bgColor: const Color.fromARGB(255, 90, 2, 105),
    ),
    OffersTypes(
      icon: Icons.group,
      text: "Group By",
      color: Colors.white,
      bgColor: const Color.fromARGB(255, 115, 137, 123),
    ),
    OffersTypes(
      icon: Icons.online_prediction,
      text: "Online",
      color: Colors.white,
      bgColor: Colors.yellow,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 15, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Video",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 216, 38, 50),
                          ),
                        ),
                        Text(
                          "Play",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                        image: DecorationImage(
                          image: AssetImage("assets/images/user.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryBox(
                        text: "New",
                        color: Colors.white,
                        bgColor: Color.fromARGB(255, 216, 38, 50),
                      ),
                      CategoryBox(
                        text: "Trending",
                        color: Colors.black,
                        bgColor: Colors.white,
                      ),
                      CategoryBox(
                        text: "Funny",
                        color: Colors.black,
                        bgColor: Colors.white,
                      ),
                      CategoryBox(
                        text: "Drama",
                        color: Colors.black,
                        bgColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                child: Container(
                  width: double.infinity,
                  height: 55.0,
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Search...",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Icon(Icons.menu)
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: Column(
                  children: [
                    Container(
                      height: 200.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        image: DecorationImage(
                          image: AssetImage(data[0].imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        for (int i = 0; i < 2; i++)
                          const Text(
                            "∙",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 35),
                          ),
                        for (int i = 0; i < 2; i++)
                          const Text(
                            "∙",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                                color: Colors.amber),
                          ),
                        for (int i = 0; i < 2; i++)
                          const Text(
                            "∙",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 35),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < offers.length; i++)
                      Offers(
                        icon: offers[i].icon,
                        text: offers[i].text,
                        color: offers[i].color,
                        bgColor: offers[i].bgColor,
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: PlayCardTitle(title: "Popular"),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int i = 1; i < data.length; i++)
                            PlayCard(
                              image: data[i].imageUrl,
                              id: data[i].id,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            activeColor: const Color.fromARGB(255, 216, 38, 50),
            textAlign: TextAlign.center
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.video_camera_front),
            title: const Text("Stream"),
            activeColor: const Color.fromARGB(255, 216, 38, 50),
            textAlign: TextAlign.center
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.list),
            title: const Text("Menu"),
            activeColor: const Color.fromARGB(255, 216, 38, 50),
            textAlign: TextAlign.center
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.manage_accounts_sharp),
            title: const Text("Profile"),
            activeColor: const Color.fromARGB(255, 216, 38, 50),
            textAlign: TextAlign.center
          ),
        ],
        onItemSelected: (value) {
        },
      ),
    );
  }
}

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    super.key,
    required this.text,
    required this.color,
    required this.bgColor,
  });

  final String text;
  final Color color;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
            child: Text(
              text,
              style: TextStyle(
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Offers extends StatelessWidget {
  const Offers({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
    required this.bgColor,
  });

  final IconData icon;
  final String text;
  final Color color;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: color,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: color,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PlayCard extends StatelessWidget {
  const PlayCard({
    super.key,
    required this.image,
    required this.id,
  });
  final String image;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 15,
        ),
        Container(
          width: 130,
          height: 130,
          padding: const EdgeInsets.only(right: 20.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CardDetails(
                      id: id,
                    ),
                  ),
                );
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Center(
                      child: Icon(Icons.play_arrow, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PlayCardTitle extends StatelessWidget {
  const PlayCardTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const Text(
            "More",
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class Data {
  final String imageUrl;
  final int id;

  Data({required this.imageUrl, required this.id});
}

class OffersTypes {
  final IconData icon;
  final String text;
  final Color color;
  final Color bgColor;

  OffersTypes({
    required this.icon,
    required this.text,
    required this.color,
    required this.bgColor,
  });
}
