import 'package:flutter/material.dart';

class AdddressBook extends StatefulWidget {
  const AdddressBook({super.key});

  @override
  State<AdddressBook> createState() => _AdddressBookState();
}

class _AdddressBookState extends State<AdddressBook> {
  // Controller for the text field to get the username
  // ignore: prefer_final_fields
  TextEditingController _addressController = TextEditingController();
  
  // Controller for the text field to get the password
  // ignore: prefer_final_fields
  TextEditingController _cityController = TextEditingController();

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
                          Navigator.pushReplacementNamed(context, '/deliveryTo'),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'New address',
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Address book',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5,),
                          TextField(
                            controller: _addressController,
                            decoration: const InputDecoration(
                              labelText: 'Lot number, street name',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          const Text(
                            'City',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5,),
                          TextField(
                            controller: _cityController,
                            decoration: const InputDecoration(
                              labelText: 'Select city',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          const Text(
                            'District',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5,),
                          TextField(
                            controller: _addressController,
                            decoration: const InputDecoration(
                              labelText: 'Select district',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          const Text(
                            'Ward',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5,),
                          TextField(
                            controller: _cityController,
                            decoration: const InputDecoration(
                              labelText: 'Select ward',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          const Text(
                            'Recipient\'s name',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5,),
                          TextField(
                            controller: _addressController,
                            decoration: const InputDecoration(
                              labelText: 'E.g. Nguyen Van A',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 16.0),
                          const Text(
                            'Recipient\'s phone number',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5,),
                          TextField(
                            controller: _cityController,
                            decoration: const InputDecoration(
                              labelText: '10-digit phone number',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 16.0),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                              style: const ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(Colors.blue),
                                elevation: MaterialStatePropertyAll(0),
                              ),
                              onPressed: () {_handleSaveForm();},
                              child: const Text(
                                'Save',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                                                      ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),

            ],
          ),
        ),
      ),
    );
    
  }

void _handleSaveForm() {
    String address = _addressController.text;
    String city = _cityController.text;

    if (address.isNotEmpty && city.isNotEmpty) {
      // Simulating a successful login
      if (address == 'demo' && city == 'city') {
        _showDialog('Login Successful', 'Welcome, $address!');
      } else {
        _showDialog('Login Failed', 'Invalid address or city. Try again.');
      }
    } else {
      _showDialog('Failed To Save', 'address and city cannot be empty.');
    }
  }

  void _showDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

}


