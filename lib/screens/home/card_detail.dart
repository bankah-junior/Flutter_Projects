import 'package:flutter/material.dart';
import 'package:go_moon/screens/home/home.dart';
import 'package:go_moon/widgets/tabs_widgets.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              // Save logic goes here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: deviceWidth,
                    height: deviceHeight * 0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/user1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    left: 10,
                    child: Container(
                      width: deviceWidth * 0.85,
                      height: deviceHeight * 0.1,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 253, 252, 252),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ),
                          );
                        },
                        child: Container(
                          width: deviceWidth,
                          height: deviceHeight * 0.07,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 71, 198, 143),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Play Lesson 1",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60.0,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 80),
                child: Text(
                  "Photography: Capture and Share Your Life",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.circle_notifications_rounded,
                        color: Color.fromARGB(255, 71, 198, 143),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Beginner"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.people_alt,
                        color: Color.fromARGB(255, 71, 198, 143),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("7.5k Students"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 71, 198, 143),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("4.8"),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const Text("data"),
                  Row(
                    children: [
                      const CircleAvatar(
                        foregroundImage: AssetImage("assets/images/user1.jpg"),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "data",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("data data data data data data"),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(30, 71, 198, 143),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "View Profile",
                              style: TextStyle(
                                color: Color.fromARGB(255, 71, 198, 143),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const TabsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
