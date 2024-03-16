import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ContactPage();
  }
}

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 25, 68),
      // appBar: AppBar(
      //   title: const Text('Navigate back'),
      // ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Contact Page',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.mail,
                          color: Colors.amber,
                          size: 30.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "anthonybekoebankah@gmail.com",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.phone_android,
                          color: Colors.amber,
                          size: 30.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "+233 594618786",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.place,
                          color: Colors.amber,
                          size: 30.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "Cape Coast, Central Region, Ghana",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.podcasts,
                          color: Colors.amber,
                          size: 30.0,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "https://bankidev.netlify.app/",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                    child: Text(
                      "Follow me up:",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "GitHub: @bankah-junior",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "LinkedIn: @anthony-bekoe-bankah",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "X: @iam_bankah",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          "Instagram: @iam_bankah",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 17.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.man),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Contact',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            if (index == 0) {
              Navigator.pushReplacementNamed(context, '/home');
            } else if (index == 1) {
              Navigator.pushReplacementNamed(context, '/about');
            } else if (index == 2) {
              Navigator.pushReplacementNamed(context, '/contact');
            } else {
              Navigator.pushReplacementNamed(context, '/home');
            }
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ),
    );
  }
}
