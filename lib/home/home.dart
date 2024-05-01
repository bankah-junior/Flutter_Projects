import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // ),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Column(
              children: [
                // Header
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Padding(padding: EdgeInsets.all(20)),
                    Image.asset(
                      'assets/home/Logo.png',
                      width: 40,
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Sample restaurant',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const Expanded(child: SizedBox()),
                    Container(
                      color: Colors.grey[300],
                      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                      child: Row(
                        children: [
                          Image.asset('assets/home/menu.png'),
                          Container(
                            width: 2,
                            color: Colors.grey,
                            margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: const Text(""),
                          ),
                          Image.asset('assets/home/close.png'),
                        ],
                      ),
                    )
                  ],
                ),
          
                const SizedBox(
                  height: 30.0,
                ),
          
                // Banner
                Container(
                  padding: const EdgeInsets.all(25.0),
                  color: Colors.blue[700],
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Username',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Join date: 20/04/2020',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '420 points',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
          
                const SizedBox(height: 30,),
          
                // Section 1
                Container(
                  padding: const EdgeInsets.all(25.0),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/home/store.png'),
                          const SizedBox(height: 10,),
                          const Text(
                            'Store pickup',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            'Best quality',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 2,
                        height: 50,
                        color: Colors.grey,
                        margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: const Text(""),
                      ),
                      Column(
                        children: [
                          Image.asset('assets/home/motor.png'),
                          const SizedBox(height: 10,),
                          const Text(
                            'Delivery',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Text(
                            'Always on time',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
          
                const SizedBox(height: 30,),
          
                // Section 2
                Container(
                  padding: const EdgeInsets.all(25.0),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Online reservation',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                              ),
                              Text(
                                'Table booking',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                              ),
                            ],
                          ),
                          Image.asset('assets/home/reservation.png'),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            style: const ButtonStyle(
                              foregroundColor: MaterialStatePropertyAll(Colors.blue),
                            ),
                            onPressed: (){}, 
                            child: Row(
                              children: [
                                Image.asset('assets/home/calander.png'),
                                const SizedBox(width: 5,),
                                const Text(
                                  'Reserve a table', 
                                  style: TextStyle(
                                    fontSize: 12
                                  ),
                                ),
                              ],
                            )
                          ),
                          const SizedBox(width: 5,),
                          OutlinedButton(
                            style: const ButtonStyle(
                              foregroundColor: MaterialStatePropertyAll(Colors.blue),
                            ),
                            onPressed: (){}, 
                            child: const Text(
                              'My reservations', 
                                  style: TextStyle(
                                    fontSize: 12
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ),
          
                const SizedBox(height: 30,),

                // Section 3
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Promotion campaign',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/home/product1.png'),
                            const SizedBox(height: 10,),
                            const Text(
                              'Discount all Excelsa',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              '20% in all stores',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              '20/04/20 - 08/09/2020',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/home/product2.png'),
                            const SizedBox(height: 10,),
                            const Text(
                              'Discount all Excelsa',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              '20% in all stores',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              '20/04/20 - 08/09/2020',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/home/product3.png'),
                            const SizedBox(height: 10,),
                            const Text(
                              'Discount all Excelsa',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              '20% in all stores',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              '20/04/20 - 08/09/2020',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 5,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/home/product4.png'),
                            const SizedBox(height: 10,),
                            const Text(
                              'Discount all Excelsa',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              '20% in all stores',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              '20/04/20 - 08/09/2020',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 30,),

              ],
            ),
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
            icon: Icon(Icons.store),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: 'Profile',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            if (index == 0) {
              Navigator.pushReplacementNamed(context, '/');
            } else if (index == 1) {
              Navigator.pushReplacementNamed(context, '/delivery');
            } else if (index == 2) {
              Navigator.pushReplacementNamed(context, '/storePickup');
            } else if (index == 3) {
              Navigator.pushReplacementNamed(context, '/');
            } else {
              Navigator.pushReplacementNamed(context, '/');
            }
          });
        },
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[800],
      ),
    );
  }
}
