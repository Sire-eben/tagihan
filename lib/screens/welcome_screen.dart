import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //THE BACKGROUND IMAGE
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/splash2.png'),
              ),
            ),
          ),

          //THE PHONE MOCKUP
          Column(
            children: [
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    width: 55,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Tagihan',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              Image.asset(
                'assets/mockup.png',
                width: double.maxFinite,
              )
            ],
          ),

          // THE BUTTOM BLACK BACKGROUND WITH TEXT
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              width: double.maxFinite,
              alignment: Alignment.center,
              height: 400,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'The most complete product in just one application',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1D1E25),
                        elevation: 1,
                      ),
                      onPressed: () {},
                      child: Text('Get Started'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Have an account? ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
