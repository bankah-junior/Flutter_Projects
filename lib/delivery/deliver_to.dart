import 'package:flutter/material.dart';

class DeliverTo extends StatelessWidget {
  const DeliverTo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // ),
      backgroundColor: const Color.fromARGB(255, 228, 227, 227),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Container(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                color: Colors.white,
                child: Row(
                  children: [
                    BackButton(
                      onPressed: () =>
                          Navigator.pushReplacementNamed(context, '/delivery'),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Deliver to',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      color: Colors.grey[200],
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
              ),

              const SizedBox(
                height: 20.0,
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: 
                Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.map, color: Colors.blue,),
                          const SizedBox(width: 4,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Address book',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 3,),
                              Text(
                                'Use you Tiki\'s saved address',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/addressBook');
                        },
                        icon: const Icon(Icons.forward), 
                        label: const Text(''),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                child: const Text(
                  'Saved places',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              
              const SizedBox(
                height: 10.0,
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: 
                Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.location_on, color: Colors.blue,),
                          const SizedBox(width: 4,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '128 Nguyen Dinh Chieu,D.3,HCM...',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 3,),
                              Text(
                                'Nick * 0896969696',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/deliveryTo');
                        },
                        icon: const Icon(Icons.edit), 
                        label: const Text(''),
                      ),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(
                height: 10.0,
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: 
                Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.location_on, color: Colors.blue,),
                          const SizedBox(width: 4,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '147 Ton Dat Tien,D.7,HCM city',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 3,),
                              Text(
                                'Tu * 0896969696',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/deliveryTo');
                        },
                        icon: const Icon(Icons.edit), 
                        label: const Text(''),
                      ),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(
                height: 10.0,
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: 
                Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.white,
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.add, color: Colors.blue,),
                          SizedBox(width: 4,),
                          Text(
                            'New place',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
