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

  //Text("Card Id is ${widget.id}"),
  int get selectedCard => widget.id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: books[selectedCard].image, fit: BoxFit.cover),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 40),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      color: Colors.white,
                      child: const Icon(
                        Icons.chevron_left,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  books[selectedCard].title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  books[selectedCard].author,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  books[selectedCard].price,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[200],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline
                      ),
                    ),
                    Text(
                      "Reviews (${books.length})",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text(
                      "Similar Books",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),

                Text(
                  books[selectedCard].dscription,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                  ),
                ),

                const SizedBox(
                  height: 90,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 400,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.red[200],
                    ),
                    child: const Center(
                      child: Text(
                        "Add to Library",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
