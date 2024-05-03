import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 226, 255),
      body: Container(
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                'Welcome back',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.grey[700],
                ),
              ),


              Text(
                'Login to your account',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[800],
                ),
              ),


              const SizedBox(
                height: 50,
              ),


              SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Input fields
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        prefixIcon: Icon(
                          Icons.person_2_outlined,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    TextField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.grey[700],
                        ),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.visibility),
                          onPressed: () {},
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 35,
                    ),

                    // Login button
                    FilledButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 57, 91, 169)),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      }, 
                      child: const Text('Login'),
                    ),

                    // const SizedBox(height: 4,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Don\'t have an account?'),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/register');
                          }, 
                          child: const Text(
                            'Signup',
                            style: TextStyle(
                              color: Color.fromARGB(255, 57, 91, 169),
                            ),
                          )
                        )
                      ],
                    )


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
