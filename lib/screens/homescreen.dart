import 'package:flutter/material.dart';
import 'package:tagihan/screens/bank_transfer.dart';

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
                    const Text('9.500')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Wallet icon
                    const CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 32,
                      child: Icon(
                        Icons.wallet_outlined,
                        color: Colors.white,
                      ),
                    ),

                    //Transaction icon
                    const CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 32,
                      child: Icon(
                        Icons.sync_alt_outlined,
                        color: Colors.white,
                      ),
                    ),

                    //Money icon
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                padding: const EdgeInsets.all(16),
                                color: Colors.white,
                                child: Column(
                                  children: [
                                    const SizedBox(height: 10),
                                    Container(
                                      width: 80,
                                      height: 7,
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey.shade100,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Top Up Method",
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ),
                                    const SizedBox(height: 30),
                                    // BANK TRANSFER
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const SendMoneyPage(),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            decoration: const BoxDecoration(
                                              color: Color(0xFFF7F7F7),
                                              shape: BoxShape.circle,
                                            ),
                                            height: 42,
                                            width: 42,
                                            child: const Icon(
                                                Icons.house_outlined),
                                          ),
                                          const SizedBox(width: 20),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text("Bank Transfer",
                                                  style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                              Text(
                                                  "Top up balance via bank transfer",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w200,
                                                  )),
                                            ],
                                          ),
                                          const Spacer(),
                                          const Icon(Icons.arrow_forward_ios)
                                        ],
                                      ),
                                    ),

                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 22),
                                      child: Divider(
                                        thickness: 1,
                                      ),
                                    ),

                                    //ALFAMRT
                                    Row(
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0xFFF7F7F7),
                                            shape: BoxShape.circle,
                                          ),
                                          height: 42,
                                          width: 42,
                                          child: const Icon(Icons.store),
                                        ),
                                        const SizedBox(width: 20),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text("Alfamrt",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                            Text(
                                                "Top up balance via nearby Alfamart",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w200,
                                                )),
                                          ],
                                        ),
                                        const Spacer(),
                                        const Icon(Icons.arrow_forward_ios)
                                      ],
                                    ),

                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 22),
                                      child: Divider(
                                        thickness: 1,
                                      ),
                                    ),

                                    //VIRTUAL ACCOUNT
                                    Row(
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0xFFF7F7F7),
                                            shape: BoxShape.circle,
                                          ),
                                          height: 42,
                                          width: 42,
                                          child: const Icon(Icons.fingerprint),
                                        ),
                                        const SizedBox(width: 20),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text("Virtual Account",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                            Text(
                                                "Confirm automaticaly by 24 hours",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w200,
                                                )),
                                          ],
                                        ),
                                        const Spacer(),
                                        const Icon(Icons.arrow_forward_ios)
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 32,
                        child: Icon(
                          Icons.attach_money_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    //Scan money
                    const CircleAvatar(
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
            decoration: const BoxDecoration(
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
          const GridLayout(),
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
          const SizedBox(height: 20),
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
          backgroundColor: const Color(0xFFF7F5F5),
          radius: 32,
          child: Icon(
            icon,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 3),
        Text(text)
      ],
    );
  }
}
