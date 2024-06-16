import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Discover",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 2,
                      ),
                    ),
                    const Text("look for what's good for your liking"),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[100],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Search',
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                          labelStyle: TextStyle(
                            color: Colors.grey[600],
                          ),
                          prefixIcon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButtonIconText(
                          icon: Icons.fastfood,
                          text: "Cooking",
                        ),
                        MyButtonIconText(
                          icon: Icons.design_services,
                          text: "Design",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButtonIconText(
                          icon: Icons.music_note,
                          text: "Music",
                        ),
                        MyButtonIconText(
                          icon: Icons.auto_graph,
                          text: "Business",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButtonIconText(
                          icon: Icons.draw,
                          text: "Arts",
                        ),
                        MyButtonIconText(
                          icon: Icons.health_and_safety,
                          text: "Wellness",
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Popular Mentors",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const Text("look for what's good for your liking"),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 7, 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      MyCard(
                        cardImg: AssetImage("assets/images/class1.jpg"),
                      ),
                      SizedBox(width: 12,),
                      MyCard(
                        cardImg: AssetImage("assets/images/class2.JPG"),
                      ),
                      SizedBox(width: 12,),
                      MyCard(
                        cardImg: AssetImage("assets/images/class1.jpg"),
                      ),
                      SizedBox(width: 12,),
                      MyCard(
                        cardImg: AssetImage("assets/images/class2.JPG"),
                      ),
                      SizedBox(width: 12,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}

class MyButtonIconText extends StatelessWidget {
  const MyButtonIconText({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    void _showDialog(String title, String message) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }

    var deviceWidth = MediaQuery.of(context).size.width;
    // var deviceHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        _showDialog(text, "Explore more from $text.");
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          width: deviceWidth * 0.42,
          height: 50,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 0.8, color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: const Color.fromARGB(255, 71, 198, 143),
              ),
              const SizedBox(width: 10.0),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.cardImg,
  });

  final ImageProvider cardImg;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: deviceWidth * 0.35,
          height: deviceHeight * 0.25,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: cardImg,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.save,
                color: Colors.white,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          "Anthony Bankah",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const Text(
          "An eng / dev",
          style: TextStyle(
            fontSize: 15,
            color: Colors.black45,
          ),
        ),
      ],
    );
  }
}
