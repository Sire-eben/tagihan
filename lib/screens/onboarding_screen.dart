import 'package:flutter/material.dart';
import 'package:tagihan/screens/welcome_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List headerText = [
    'Best Way To Start Your Business',
    'Modern Way To Start Your Business',
    'Retain Your Customers Now',
  ];
  List subtitleText = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus gravida eros eget aliquet imperdiet.',
    'Sed ut magna at tortor placerat congue eget sed elit. Sed ut magna at tortor placerat congue eget sed elit.',
    'Phasellus eu sapien vitae leo scelerisque posuere. Phasellus eu sapien vitae leo scelerisque posuere.'
  ];

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
                image: AssetImage('assets/gradient.png'),
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
                'assets/mockup1.png',
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
              height: 400,
              padding: const EdgeInsets.fromLTRB(20, 0, 16, 0),
              decoration: const BoxDecoration(
                  color: Color(0xFF1D1E25),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                  )),
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, pageIndex) {
                  return SizedBox(
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          headerText[pageIndex],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // const SizedBox(height: 10),
                        ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 275),
                          child: Text(
                            subtitleText[pageIndex],
                            style: const TextStyle(
                              color: Color(0xFF808D9E),
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              height: 1.6,
                            ),
                          ),
                        ),
                        // const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // THE INDICATORS
                            Row(
                              children: List.generate(headerText.length,
                                  (indicatorIndex) {
                                return Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  height: 7,
                                  width: pageIndex == indicatorIndex ? 25 : 10,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                );
                              }),
                            ),

                            // THE BUTTON
                            pageIndex == 2
                                ? GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const WelcomeScreen()));
                                    },
                                    child: Container(
                                        padding: const EdgeInsets.all(20),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child: const Icon(
                                          Icons.arrow_forward,
                                          color: Colors.black,
                                        )),
                                  )
                                : Container(),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
