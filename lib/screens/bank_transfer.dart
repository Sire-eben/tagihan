import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tagihan/constants/colors.dart';
// import 'package:tagihan/constants/colors.dart';

class SendMoneyPage extends StatelessWidget {
  const SendMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBlack,
        elevation: 0,
        title: const Text("Send Money"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              width: double.maxFinite,
              height: 125,
              color: primaryBlack,
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Balance",
                    style: TextStyle(color: Colors.white60),
                  ),
                  Text(
                    "IDR 895.500,00",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    "Top up minimum IDR 10.000",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                      )),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.blueGrey.shade50,
                        child: const Text("IDR 10.000"),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        color: primaryBlack,
                        child: const Text(
                          "IDR 10.000",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(12),
                        color: Colors.blueGrey.shade50,
                        child: const Text("IDR 10.000"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 300),
                  SizedBox(
                    width: double.maxFinite,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryBlack,
                        elevation: 1,
                      ),
                      onPressed: () {},
                      child: Text('Continue'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
