import 'package:flutter/material.dart';

class IconTextLinkCard extends StatelessWidget {
  const IconTextLinkCard({
    super.key,
    required this.leadIcon,
    required this.text,
    required this.endIcon,

    // required this.children
  });

  // final Widget children;
  final IconData leadIcon;
  final String text;
  final IconData endIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(255, 201, 227, 243),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(
                  leadIcon,
                  size: 30,
                  color: Colors.black87,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            Icon(endIcon),
          ],
        ),
      ),
    );
  }
}
