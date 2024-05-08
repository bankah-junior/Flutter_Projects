import 'package:flutter/material.dart';

class BSList extends StatelessWidget {
  const BSList({
    super.key,
    required this.child
  });

  final int child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 8, 25, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 65,
                    height: 65,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Color.fromARGB(70, 0, 140, 255),
                    ),
                    child: Center(
                      child: Text(
                        "$child",
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 140, 255),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "LORD'S SUPPER SUNDAY",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "7th January 2024",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Divider(
          color: Colors.grey[300],
          thickness: 1.0,
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
