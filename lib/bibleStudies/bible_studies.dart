import 'package:flutter/material.dart';
import 'package:flutter_masterclass/bibleStudies/bs_lists.dart';
import 'package:flutter_masterclass/general/bottom_bar.dart';

class BibleStudies extends StatefulWidget {
  const BibleStudies({super.key});

  @override
  State<BibleStudies> createState() => _BibleStudiesState();
}

class _BibleStudiesState extends State<BibleStudies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                      color: Color.fromARGB(255, 3, 11, 163), // color of container
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "2024 Home cell Weeks",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Icon(
                      Icons.calendar_month,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 255, 213, 122)),
                        foregroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 227, 138, 3)),
                        side: MaterialStatePropertyAll(
                          BorderSide(color: Color.fromARGB(255, 255, 213, 122)),
                        ), // adds border color
                      ),
                      onPressed: () {},
                      child: const Text("Asante Twi"),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    OutlinedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 167, 115, 3)),
                        foregroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 255, 255, 255)),
                        side: MaterialStatePropertyAll(
                          BorderSide(color: Color.fromARGB(255, 167, 115, 3)),
                        ), // adds border color
                      ),
                      onPressed: () {},
                      child: const Text("English"),
                    ),
                  ],
                ),
              
        
                const SizedBox(height: 5,),
        
                Column(
                  children: [
                    for (int i = 0; i <= 8; i++)
                      const BSList(child: 1,),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
