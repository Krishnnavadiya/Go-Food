import 'package:flutter/material.dart';
import 'package:gofood/Login_screen.dart';
import 'package:gofood/Register_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                onPageChanged: (int index) {
                  setState(() {
                    currentindex = index;
                  });
                },
                itemCount: contents.length,
                itemBuilder: (_, i) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25))),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Image.asset(contents[i].image),
                              // Container(
                              //   child: Row(
                              //       mainAxisAlignment: MainAxisAlignment.center,
                              //       children: List.generate(
                              //           contents.length,
                              //           (index) => Container(
                              //                 height: currentindex == index ? 10 : 7,
                              //                 width:
                              //                     currentindex == index ? 10 : 7,
                              //                 margin: EdgeInsets.only(right: 5),
                              //                 decoration: BoxDecoration(
                              //                     borderRadius:
                              //                         BorderRadius.circular(20),
                              //                     color: currentindex==index ?Colors.deepOrange:Colors.grey),
                              //               ))),
                              // ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(contents[i].title,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "robot")),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                contents[i].discription,
                                textAlign: TextAlign.center,
                                style: const TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  contents.length,
                  (index) => Container(
                        height: 10,
                        width: currentindex == index ? 30 : 10,
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
                      ))),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ));
                },
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                      const BorderSide(color: Colors.white)),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 45)),
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ));
                },
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(horizontal: 45)),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: const Text(
                  "Sign In",
                  style: TextStyle(color: Colors.deepOrange, fontSize: 15),
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

class unboardingContent {
  String image;
  String title;
  String discription;

  unboardingContent({this.image = '', this.title = '', this.discription = ''});
}

List<unboardingContent> contents = [
  unboardingContent(
      title: "Search for favorite\nfood near you",
      image: "assets/images/onboarding1.png",
      discription: "Discover the foods from over\n3250 restaurants."),
  unboardingContent(
      title: "Fast delivery to\nyour place",
      image: "assets/images/onboarding2.png",
      discription: "Fast delivery to your home,\noffice and wherever you are."),
  unboardingContent(
      title: "Tracking shipper\non the map",
      image: "assets/images/onboarding3.png",
      discription:
          "Real time tracking of your food on the app\nonce you placed the order."),
];
