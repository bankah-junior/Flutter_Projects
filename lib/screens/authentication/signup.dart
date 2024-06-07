import 'package:flutter/material.dart';
import 'package:go_moon/screens/Template.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // Controller for the text field to get the email
  // ignore: prefer_final_fields
  TextEditingController _emailController = TextEditingController();

  // Controller for the text field to get the password
  // ignore: prefer_final_fields
  TextEditingController _passwordController = TextEditingController();

  bool _isObscured = true;
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sign Up',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const BackButtonIcon(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[100],
                ),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      labelText: 'Email Address',
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      labelStyle: TextStyle(color: Colors.grey[600])),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[100],
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: _isObscured,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    labelStyle: TextStyle(color: Colors.grey[600]),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscured ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscured = !_isObscured;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[100],
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: _isObscured,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    labelStyle: TextStyle(color: Colors.grey[600]),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscured ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscured = !_isObscured;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (isChecked) {
                        setState(() {
                          _isChecked = !_isChecked;
                        });
                      },
                      checkColor: Colors.white,
                      fillColor: MaterialStatePropertyAll(
                        _isChecked ? const Color.fromARGB(255, 71, 198, 143) : const Color.fromARGB(255, 219, 219, 219), 
                      ),
                      side: BorderSide.none,
                    ),
                    SizedBox(
                      width: deviceWidth * 0.7,
                      child: const Text(
                          "By creating an account you agree to Terms and Conditions"),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const Template()),
                  );
                },
                child: Container(
                  width: deviceWidth,
                  height: deviceHeight * 0.07,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 71, 198, 143),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
