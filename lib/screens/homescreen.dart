import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                  text: 'Welcome back!\n',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'Zhafira',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )
              ])),
              const Icon(Icons.notifications_none_outlined)
            ],
          ),
          Container(
            height: 210,
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(vertical: 16),
            padding: const EdgeInsets.all(22),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/gradient.png'),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                        text: 'Balance\n',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'IDR 895.500,00',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      )
                    ])),
                    const Spacer(),
                    Image.asset('assets/icons/coinpng.png'),
                    Text('9.500')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    //Wallet icon
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 32,
                      child: Icon(
                        Icons.wallet_outlined,
                        color: Colors.white,
                      ),
                    ),

                    //Transaction icon
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 32,
                      child: Icon(
                        Icons.sync_alt_outlined,
                        color: Colors.white,
                      ),
                    ),

                    //Money icon
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 32,
                      child: Icon(
                        Icons.attach_money_outlined,
                        color: Colors.white,
                      ),
                    ),

                    //Scan money
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 32,
                      child: Icon(
                        Icons.fit_screen_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 100,
            width: double.maxFinite,
            // padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Row(
              children: [
                const SizedBox(width: 20),
                Image.asset('assets/icons/barcode.png'),
                const SizedBox(width: 20),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: 'Monthly Stats\n',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '25% better performance',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )
                ])),
                const Spacer(),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Image.asset('assets/icons/ring.png'),
                )
              ],
            ),
          ),
          GridLayout(),
        ],
      ),
    ));
  }
}

class GridLayout extends StatelessWidget {
  const GridLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              GridItems(
                text: 'Pulse',
                icon: Icons.phone_android_sharp,
              ),
              GridItems(text: 'Internet', icon: Icons.circle_outlined),
              GridItems(
                  text: 'Call Package', icon: Icons.phone_forwarded_outlined),
              GridItems(text: 'Water', icon: Icons.water_drop),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              GridItems(
                text: 'Electricity',
                icon: Icons.electrical_services_outlined,
              ),
              GridItems(text: 'Insurance', icon: Icons.security),
              GridItems(text: 'Game', icon: Icons.gamepad_outlined),
              GridItems(text: 'More', icon: Icons.grid_view_rounded),
            ],
          ),
        ],
      ),
    );
  }
}

class GridItems extends StatelessWidget {
  final String text;
  final IconData icon;

  const GridItems({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Color(0xFFF7F5F5),
          radius: 32,
          child: Icon(
            icon,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 3),
        Text(text)
      ],
    );
  }
}
