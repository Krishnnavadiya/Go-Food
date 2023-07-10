import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:gofood/home_screen.dart';
import 'package:gofood/register_screen.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  bool passwordVisible = true;
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List<Map> userData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/logo.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Text("Welcome Back,",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Sign in to continue",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: mobileNumberController,
                    decoration: InputDecoration(
                        labelText: "Mobile Number",
                        prefixText: "+91",
                        prefixIcon: Icon(
                          Icons.person_outline,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.circular(10))), //maxLength: 10,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(
                          Icons.lock_outline,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                            icon: Icon(passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility)),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forgot password?",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      var d =
                          await FirebaseDatabase.instance.ref('User').once();
                      Map temp = d.snapshot.value as Map;
                      userData.clear();
                      temp.forEach((key, value) {
                        userData.add(value);
                      });
                      bool error = false;
                      if (mobileNumberController.text.isEmpty ||
                          passwordController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Please Enter The Detail")));
                      } else {
                        for (int index = 0; index < userData.length; index++) {
                          if (mobileNumberController.text ==
                                  userData[index]['phoneNumber'] &&
                              passwordController.text ==
                                  userData[index]['password']) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => homeScreen(),
                                ));
                            error = false;
                            break;
                          } else {
                            error = true;
                          }
                        }
                        if (error == true) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Enter Valid Detail")));
                        }
                      }
                    },
                    child: Text("Sign in",
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      elevation: MaterialStateProperty.all(15),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("You don't have an account?",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => registerScreen(),
                              ));
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
