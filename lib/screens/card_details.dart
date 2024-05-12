import 'package:flutter/material.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({
    super.key,
    required this.id,
  });

  final int id;

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  List<Data> data = [
    Data(
        id: "0",
        coverImage: "assets/images/Jumanji.jpg",
        title: "Jumanji",
        date: "2021-01-01",
        durration: "2hrs 50mins",
        rating: "4.5",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        actor1: "Robert Downey Jr.",
        actor2: "Chris Evans",
        actor3: "Mark Ruffalo",
        actor4: "Chris Hemsworth",
        actor1Image: "assets/images/actor1.jpg",
        actor2Image: "assets/images/actor2.jpg",
        actor3Image: "assets/images/actor3.jpg",
        actor4Image: "assets/images/user.jpg"),
    Data(
        id: "1",
        coverImage: "assets/images/Avengers.jpg",
        title: "Avengers",
        date: "2021-01-01",
        durration: "2hrs 50mins",
        rating: "4.5",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        actor1: "Robert Downey Jr.",
        actor2: "Chris Evans",
        actor3: "Mark Ruffalo",
        actor4: "Chris Hemsworth",
        actor1Image: "assets/images/actor1.jpg",
        actor2Image: "assets/images/actor2.jpg",
        actor3Image: "assets/images/actor3.jpg",
        actor4Image: "assets/images/user.jpg"),
    Data(
        id: "2",
        coverImage: "assets/images/Gray_man.jpg",
        title: "GRAY MAN",
        date: "2021-01-01",
        durration: "2hrs 50mins",
        rating: "4.5",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        actor1: "Robert Downey Jr.",
        actor2: "Chris Evans",
        actor3: "Mark Ruffalo",
        actor4: "Chris Hemsworth",
        actor1Image: "assets/images/actor1.jpg",
        actor2Image: "assets/images/actor2.jpg",
        actor3Image: "assets/images/actor3.jpg",
        actor4Image: "assets/images/user.jpg"),
    Data(
        id: "3",
        coverImage: "assets/images/Justice_League.jpg",
        title: "Justice League",
        date: "2021-01-01",
        durration: "2hrs 50mins",
        rating: "4.5",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        actor1: "Robert Downey Jr.",
        actor2: "Chris Evans",
        actor3: "Mark Ruffalo",
        actor4: "Chris Hemsworth",
        actor1Image: "assets/images/actor1.jpg",
        actor2Image: "assets/images/actor2.jpg",
        actor3Image: "assets/images/actor3.jpg",
        actor4Image: "assets/images/user.jpg"),
    Data(
        id: "4",
        coverImage: "assets/images/LUCK.jpg",
        title: "LUCK",
        date: "2021-01-01",
        durration: "2hrs 50mins",
        rating: "4.5",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        actor1: "Robert Downey Jr.",
        actor2: "Chris Evans",
        actor3: "Mark Ruffalo",
        actor4: "Chris Hemsworth",
        actor1Image: "assets/images/actor1.jpg",
        actor2Image: "assets/images/actor2.jpg",
        actor3Image: "assets/images/actor3.jpg",
        actor4Image: "assets/images/user.jpg"),
    Data(
        id: "5",
        coverImage: "assets/images/the100.jpg",
        title: "The 100",
        date: "2021-01-01",
        durration: "2hrs 50mins",
        rating: "4.5",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        actor1: "Robert Downey Jr.",
        actor2: "Chris Evans",
        actor3: "Mark Ruffalo",
        actor4: "Chris Hemsworth",
        actor1Image: "assets/images/actor1.jpg",
        actor2Image: "assets/images/actor2.jpg",
        actor3Image: "assets/images/actor3.jpg",
        actor4Image: "assets/images/user.jpg"),
    Data(
        id: "6",
        coverImage: "assets/images/Togo.jpg",
        title: "Togo",
        date: "2021-01-01",
        durration: "2hrs 50mins",
        rating: "4.5",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        actor1: "Robert Downey Jr.",
        actor2: "Chris Evans",
        actor3: "Mark Ruffalo",
        actor4: "Chris Hemsworth",
        actor1Image: "assets/images/actor1.jpg",
        actor2Image: "assets/images/actor2.jpg",
        actor3Image: "assets/images/actor3.jpg",
        actor4Image: "assets/images/user.jpg"),
  ];

  int get selectedCard => widget.id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [

                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(data[selectedCard].coverImage),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 30, 338, 330),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Center(
                          child: Icon(Icons.arrow_back, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 210.0,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      width: 330,
                      height: 270,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: CardInfo(
                        title: data[selectedCard].title,
                        date: data[selectedCard].date,
                        duration: data[selectedCard].durration,
                        description: data[selectedCard].description,
                        rating: data[selectedCard].rating,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 100,
            ),
            
            Container(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: 330,
                height: 170,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Actors",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < 4; i++)
                            Container(
                              width: 65.0,
                              height: 65.0,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(100)),
                                image: DecorationImage(
                                  image: AssetImage(
                                      data[selectedCard].actor1Image),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 330,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 216, 38, 50),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: const Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class CardInfo extends StatelessWidget {
  const CardInfo({
    super.key,
    required this.title,
    required this.date,
    required this.duration,
    required this.description,
    required this.rating,
  });

  final String title;
  final String date;
  final String duration;
  final String description;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              const Text("❤️"),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    border: Border.all(width: 2, color: Colors.amber)),
                child: const Center(
                  child: Text(
                    "CBFC: U/A",
                    style: TextStyle(color: Colors.amber),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Text("$date $duration"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Text("⭐ ⭐ ⭐ ⭐ ⭐"),
              const SizedBox(
                width: 15,
              ),
              Text("${rating}k Reviews"),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class Data {
  final String id;
  final String coverImage;
  final String title;
  final String date;
  final String durration;
  final String rating;
  final String description;
  final String actor1;
  final String actor2;
  final String actor3;
  final String actor4;
  final String actor1Image;
  final String actor2Image;
  final String actor3Image;
  final String actor4Image;

  Data({
    required this.id,
    required this.coverImage,
    required this.title,
    required this.date,
    required this.durration,
    required this.rating,
    required this.description,
    required this.actor1,
    required this.actor2,
    required this.actor3,
    required this.actor4,
    required this.actor1Image,
    required this.actor2Image,
    required this.actor3Image,
    required this.actor4Image,
  });
}
