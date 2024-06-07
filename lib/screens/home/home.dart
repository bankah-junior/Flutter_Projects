import 'package:flutter/material.dart';
import 'package:go_moon/screens/home/card_detail.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome Jordan",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          "what do you want to eat today?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 10.0),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/user1.jpg"),
                          radius: 20,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[100],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Search',
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      labelStyle: TextStyle(
                        color: Colors.grey[600],
                      ),
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.8, color: Colors.grey),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.fastfood),
                            SizedBox(width: 10.0),
                            Text('Category'),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.8, color: Colors.grey),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.draw),
                            SizedBox(width: 10.0),
                            Text('Arts'),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.8, color: Colors.grey),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.gamepad),
                            SizedBox(width: 10.0),
                            Text('Game'),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Container(
                        height: 50,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.8, color: Colors.grey),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.movie),
                            SizedBox(width: 10.0),
                            Text('Movie'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                const Text("Recent class"),
                const SizedBox(height: 20.0),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/user1.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const CardDetail(),
                                ),
                              );
                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(155, 215, 216, 215),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: const Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Sushi",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          const Text(
                            "Noodles",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "data",
                              ),
                              SizedBox(width: 60.0),
                              Text(
                                "data",
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 200,
                            height: 6,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(155, 123, 123, 123),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                            ),
                            child: Container(
                              width: 80,
                              height: 6,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 71, 198, 143),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Recommended classes for you",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
                Text(
                  "Selected by favorite",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.grey[500],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 165,
                          height: 165,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/user1.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.save,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          "data",
                          style: TextStyle(
                            color: Color.fromARGB(255, 71, 198, 143),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 165,
                          height: 165,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/user1.jpg"),
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
                          "data",
                          style: TextStyle(
                            color: Color.fromARGB(255, 71, 198, 143),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: const BottomNavBar(),
    );
  }
}
