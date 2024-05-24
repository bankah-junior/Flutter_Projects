import 'package:flutter/material.dart';
import 'package:go_moon/screens/authentication/login.dart';

class WelcomeTwo extends StatelessWidget {
  const WelcomeTwo({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
            width: deviceWidth,
            height: deviceHeight,
            color: const Color.fromARGB(255, 226, 248, 236),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "bd",
                  style: TextStyle(
                      color: Color.fromARGB(255, 71, 198, 143),
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  width: deviceWidth * 0.7,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: const Image(
                    image: AssetImage(
                      "assets/images/Man.jpg",
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 1),
                  child: Text(
                    "Empower Your",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 1),
                  child: Text(
                    "Learning Experience",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Save your time by bringing all your",
                    style: TextStyle(
                        color: Color.fromARGB(120, 8, 8, 8),
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 0, bottom: 20),
                  child: Text(
                    "communication to life",
                    style: TextStyle(
                        color: Color.fromARGB(120, 8, 8, 8),
                        fontSize: 17,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 5,
                      height: 13,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 5,
                      height: 7,
                      decoration: const BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  child: Container(
                    width: deviceWidth * 0.7,
                    height: deviceHeight * 0.07,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 71, 198, 143),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
