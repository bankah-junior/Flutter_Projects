import 'package:flutter/material.dart';
import 'package:hard_element/customWidgets/bottom_navbar.dart';
import 'package:hard_element/screens/card_details.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<BookProps> books = [
    BookProps(
        id: 0,
        title: "The Lord of the Rings",
        author: "J.R.R. Tolkien",
        image: const AssetImage("assets/images/01.jpg"),
        price: "\$16.99",
        dscription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        category: "New"),
    BookProps(
        id: 1,
        title: "The Lord of the Rings",
        author: "J.R.R. Tolkien",
        image: const AssetImage("assets/images/02.jpg"),
        price: "\$16.99",
        dscription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        category: "New"),
    BookProps(
        id: 2,
        title: "The Lord of the Rings",
        author: "J.R.R. Tolkien",
        image: const AssetImage("assets/images/03.jpg"),
        price: "\$16.99",
        dscription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        category: "Trending"),
    BookProps(
        id: 3,
        title: "The Lord of the Rings",
        author: "J.R.R. Tolkien",
        image: const AssetImage("assets/images/04.jpg"),
        price: "\$16.99",
        dscription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        category: "Trending"),
    BookProps(
        id: 4,
        title: "The Lord of the Rings",
        author: "J.R.R. Tolkien",
        image: const AssetImage("assets/images/05.jpg"),
        price: "\$16.99",
        dscription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        category: "Best"),
    BookProps(
        id: 5,
        title: "The Lord of the Rings",
        author: "J.R.R. Tolkien",
        image: const AssetImage("assets/images/06.jpg"),
        price: "\$16.99",
        dscription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        category: "Best"),
    BookProps(
        id: 6,
        title: "The Lord of the Rings",
        author: "J.R.R. Tolkien",
        image: const AssetImage("assets/images/11.jpg"),
        price: "\$16.99",
        dscription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        category: "Popular"),
    BookProps(
        id: 7,
        title: "The Lord of the Rings",
        author: "J.R.R. Tolkien",
        image: const AssetImage("assets/images/12.jpg"),
        price: "\$16.99",
        dscription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        category: "Popular"),
    BookProps(
        id: 8,
        title: "The Lord of the Rings",
        author: "J.R.R. Tolkien",
        image: const AssetImage("assets/images/13.jpg"),
        price: "\$16.99",
        dscription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        category: "Popular"),
    BookProps(
        id: 9,
        title: "The Lord of the Rings",
        author: "J.R.R. Tolkien",
        image: const AssetImage("assets/images/14.jpg"),
        price: "\$16.99",
        dscription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        category: "Popular"),
    BookProps(
        id: 10,
        title: "The Lord of the Rings",
        author: "J.R.R. Tolkien",
        image: const AssetImage("assets/images/15.jpg"),
        price: "\$16.99",
        dscription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        category: "Popular"),
    BookProps(
        id: 11,
        title: "The Lord of the Rings",
        author: "J.R.R. Tolkien",
        image: const AssetImage("assets/images/16.jpg"),
        price: "\$16.99",
        dscription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. ",
        category: "Popular"),
  ];

  bool _new = true;
  bool _trending = false;
  bool _best = false;

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //List<BookProps> newBooks = books.where((book) => book.category == 'New').toList();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi, Bankah",
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "Discover Latest Book",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Search bar
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[300],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: TextField(
                              controller: _searchController,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search book...',
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            color: Colors.red[200],
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // End of Search bar

                // Book list
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          // Toggling between the tabs to output contents based on active or true variable
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _new = true;
                                _trending = false;
                                _best = false;
                              });
                            },
                            child: ConditionalActiveText(
                              isActive: _new,
                              text: "New",
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _new = false;
                                _trending = true;
                                _best = false;
                              });
                            },
                            child: ConditionalActiveText(
                              isActive: _trending,
                              text: "Trending",
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _new = false;
                                _trending = false;
                                _best = true;
                              });
                            },
                            child: ConditionalActiveText(
                              isActive: _best,
                              text: "Best Sales",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Outputting all data from the books list with category == New and _new variable being true
                          for (int i = 0; i < books.length; i++)
                            if (_new == true && books[i].category == "New")
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CardDetails(
                                        id: books[i].id,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 165,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: books[i].image,
                                        fit: BoxFit.cover),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                ),
                              ),

                          // Outputting all data from the books list with category == Trending and _trending variable being true
                          for (int i = 0; i < books.length; i++)
                            if (_trending == true &&
                                books[i].category == "Trending")
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CardDetails(
                                        id: books[i].id,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 165,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: books[i].image,
                                        fit: BoxFit.cover),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                ),
                              ),

                          // Outputting all data from the books list with category == Best and _best variable being true
                          for (int i = 0; i < books.length; i++)
                            if (_best == true && books[i].category == "Best")
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CardDetails(
                                        id: books[i].id,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 165,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: books[i].image,
                                        fit: BoxFit.cover),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                ),
                              ),
                        ],
                      ),
                    ],
                  ),
                ),
                // End of Book list

                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Popular",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Column(
                        children: [
                          // Outputting all data with category equals "Popular"
                          for (int i = 0; i < books.length; i++)
                            if (books[i].category == "Popular")
                              // TextCard
                              TextCard(
                                id: books[i].id,
                                image: books[i].image,
                                title: books[i].title,
                                author: books[i].author,
                                price: books[i].price,
                              ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

// Book properties
class BookProps {
  final int id;
  final ImageProvider image;
  final String title;
  final String author;
  final String price;
  final String dscription;
  final String category;

  BookProps({
    required this.id,
    required this.image,
    required this.title,
    required this.author,
    required this.price,
    required this.dscription,
    required this.category,
  });
}

// A card that contains image and texts
class TextCard extends StatelessWidget {
  const TextCard({
    super.key,
    required this.image,
    required this.title,
    required this.author,
    required this.price,
    required this.id,
  });

  final ImageProvider image;
  final String title;
  final String author;
  final String price;
  final int id;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 90,
              decoration: BoxDecoration(
                image: DecorationImage(image: image, fit: BoxFit.contain),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Text(
                  author,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Outputs a text and an underline
class ActiveText extends StatelessWidget {
  const ActiveText({
    super.key,
    required this.text,
    required this.textStyle,
    this.underlineThickness = 2.0,
    this.underlineColor = Colors.black,
    this.underlineSpacing = 2.0,
  });

  final String text;
  final TextStyle textStyle;
  final double underlineThickness;
  final Color underlineColor;
  final double underlineSpacing;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: underlineSpacing),
          child: Text(
            text,
            style: textStyle,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: underlineThickness,
            color: underlineColor,
          ),
        ),
      ],
    );
  }
}

// Checks if a condition is true then adds an underline using the ActiveText widget
class ConditionalActiveText extends StatelessWidget {
  final bool isActive;
  final String text;

  const ConditionalActiveText(
      {super.key, required this.isActive, required this.text});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveText(
            text: text,
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            underlineThickness: 2.0,
            underlineColor: Colors.black,
            underlineSpacing:
                4.0, // Adjust this value to change the space between text and underline
          )
        : Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.grey[700],
            ),
          );
  }
}
