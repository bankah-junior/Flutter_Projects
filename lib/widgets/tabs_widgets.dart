import 'package:flutter/material.dart';

class TabsWidget extends StatefulWidget {
  const TabsWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TabsWidgetState createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  int _selectedTabIndex = 0;

  final List<String> _tabs = [
    'Lessons',
    'Projects',
    'Quit',
  ];

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    // var deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _tabs.map((tab) {
            int index = _tabs.indexOf(tab);
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedTabIndex = index;
                });
              },
              child: Container(
                width: deviceWidth * 0.25,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 2.0,
                      color: _selectedTabIndex == index
                          ? Colors.blue
                          : Colors.grey.withAlpha(0),
                    ),
                  ),
                ),
                child: Text(
                  tab,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:
                        _selectedTabIndex == index ? Colors.blue : Colors.black,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
        const SizedBox(
          height: 10,
        ),
        IndexedStack(
          index: _selectedTabIndex,
          children: [
            // Lessons content
            const Center(
              child: Text('Lessons'),
            ),
            // Projects content
            const Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Projects',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  ProjectCard(img: AssetImage("assets/images/class1.jpg"),),
                  ProjectCard(img: AssetImage("assets/images/class2.JPG"),),
                ],
              ),
            ),
            // Quit content
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(30, 71, 198, 143),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          "New",
                          style: TextStyle(
                            color: Color.fromARGB(255, 71, 198, 143),
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const QuitCard(),
                  const QuitCard(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.img,
  });

  final ImageProvider img;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Card(
          child: GestureDetector(
            child: Container(
              width: deviceWidth,
              height: deviceHeight * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: img,
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Container(
                width: deviceWidth,
                padding: const EdgeInsets.only(
                  right: 16.0,
                  bottom: 5.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  color: Colors.black.withOpacity(0.2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'This is the text of the card',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 8.0,
                            ),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/images/Brandnn.jpg"),
                                  radius: 10.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 8.0,
                                  ),
                                  child: Text(
                                    'iam.Bankah',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.grey.withAlpha(100),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 4.0,
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 16.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8.0,
                            ),
                            child: Text(
                              '123',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class QuitCard extends StatelessWidget {
  const QuitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'This is the text of the card',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 8.0,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Brandnn.jpg"),
                    radius: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.0,
                    ),
                    child: Text(
                      'iam.Bankah',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          color: const Color.fromARGB(255, 247, 253, 251),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  right: 16.0,
                  left: 16.0,
                  bottom: 8.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'iam.Bankah',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 4.0,
                      ),
                      child: Text(
                        'This is the text of the card This is the text of the card This is the text of the card This is the text of the card This is the text of the card',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 16.0,
                  bottom: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 8.0,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/Brandnn.jpg"),
                              radius: 15.0,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.0,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'iam.Bankah',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'This is the text of the card',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: const Color.fromARGB(30, 71, 198, 143),
                          border: Border.all(
                            color: const Color.fromARGB(255, 71, 198, 143),
                          )),
                      child: const Center(
                        child: Icon(
                          Icons.favorite,
                          color: Color.fromARGB(255, 71, 198, 143),
                          size: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
