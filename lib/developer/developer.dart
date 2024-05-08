import 'package:flutter/material.dart';
import 'package:flutter_masterclass/general/icon_text_link_card.dart';
import 'package:flutter_masterclass/general/bottom_bar.dart';

class Developer extends StatefulWidget {
  const Developer({super.key});

  @override
  State<Developer> createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 200.0,
                      height: 200.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(100.0)),
                        color: Colors.white, // color of container
                        image: DecorationImage(
                          image: AssetImage('assets/home/bgImage.jpg'), // image path
                          fit: BoxFit.cover, // image fit
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "Hi, I'm Bankah ☺️",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
        
              const SizedBox(height: 60),
        
              const IconTextLinkCard(
                leadIcon: Icons.thumb_up, 
                text: "Rate the App", 
                endIcon: Icons.arrow_forward_ios,
              ),
        
              const IconTextLinkCard(
                leadIcon: Icons.work, 
                text: "See other cool stuff I do", 
                endIcon: Icons.arrow_forward_ios,
              ),
        
              const IconTextLinkCard(
                leadIcon: Icons.mail, 
                text: "Suggestion or feedback?", 
                endIcon: Icons.arrow_forward_ios,
              ),
        
              const IconTextLinkCard(
                leadIcon: Icons.facebook, 
                text: "Follow me on FB", 
                endIcon: Icons.arrow_forward_ios,
              ),
        
              const IconTextLinkCard(
                leadIcon: Icons.social_distance, 
                text: "Follow me on Twitter", 
                endIcon: Icons.arrow_forward_ios,
              ),
        
              const IconTextLinkCard(
                leadIcon: Icons.connect_without_contact, 
                text: "Lets connect", 
                endIcon: Icons.arrow_forward_ios,
              ),

              const SizedBox(height: 30),

              const Text(
                "Version 1.0.0",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),

              const SizedBox(height: 8),
        
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
