import 'package:flutter/material.dart';
import 'package:go_moon/screens/Template.dart';

class Learning extends StatefulWidget {
  const Learning({super.key});

  @override
  State<Learning> createState() => _LearningState();
}

class _LearningState extends State<Learning> {
  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Template()),
            );
          },
        ),
        title: const Text(
          "Learning Activity",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: deviceWidth,
                height: deviceHeight * 0.18,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 239, 239, 239),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Weekly Streak"),
                          Text(
                            "See all >",
                            style: TextStyle(
                              color: Color.fromARGB(255, 71, 198, 143),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(7, 20, 7, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("M"),
                            Text("T"),
                            Text("W"),
                            Text("T"),
                            Text("F"),
                            Text("S"),
                            Text("S"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WeekButton(
                              state: false,
                            ),
                            WeekButton(
                              state: false,
                            ),
                            WeekButton(
                              state: true,
                            ),
                            WeekButton(
                              state: false,
                            ),
                            WeekButton(
                              state: false,
                            ),
                            WeekButton(
                              state: true,
                            ),
                            WeekButton(
                              state: false,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "This week",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const MyCard(cardImg: AssetImage("assets/images/class1.jpg"),),
              const MyCard(cardImg: AssetImage("assets/images/user1.jpg"),),
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("28"),
                  Text("Sun"),
                ],
              ),
              const SizedBox(
                width: 28,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sunday",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: deviceWidth * 0.7,
                    child: const Text(
                      "Sunday Sunday Sunday Sunday Sunday Sunday Sunday ",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: deviceWidth,
          height: deviceHeight * 0.25,
          decoration: BoxDecoration(
            color: const Color.fromARGB(155, 215, 216, 215),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            image: DecorationImage(
              image: cardImg,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "A Chosen one",
            style: TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  foregroundImage: AssetImage("assets/images/Brandnn.jpg"),
                ),
                SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Yakubush Nish",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Bush World",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                )
              ],
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
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Divider(
            height: 2,
          ),
        ),
      ],
    );
  }
}

class WeekButton extends StatefulWidget {
  const WeekButton({Key? key, required this.state,})
      : super(key: key);

  final bool state;

  @override
  State<WeekButton> createState() => _WeekButtonState();
}

class _WeekButtonState extends State<WeekButton> {
  bool _isToggled = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isToggled = !_isToggled;
        });
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: _isToggled
              ? const Color.fromARGB(255, 71, 198, 143)
              : Colors.white,
        ),
        child: const Center(
          child: Icon(
            Icons.catching_pokemon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}