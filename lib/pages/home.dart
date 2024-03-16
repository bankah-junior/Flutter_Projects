import 'package:flutter/material.dart';
//import 'package:hello_world/components/navbar.dart';

class Home extends StatelessWidget {
const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 25, 68),
      /*appBar: AppBar(
        title: const Text('Navigate back'),
      ),*/
      body: Column(
        children: [
          Image.asset(
            'assets/temp/home.gif',
            width: 450.0,
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "An Engineer / Developer",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(
                  height: 0.0,
                ),
                const Text(
                  "Anthony Bekoe Bankah",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Text(
                  "Enthusiastic computer lover with a computer science background and a love for coding, problem-solving, creative and collaborative team player.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                FilledButton.icon(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/contact');
                  }, 
                  icon: const Icon(Icons.phone), 
                  label: const Text("Contact"),
                  style: const ButtonStyle(
                    elevation: MaterialStatePropertyAll(10.0),
                  ),
                )
              ],
            ),
          ),
        ],
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