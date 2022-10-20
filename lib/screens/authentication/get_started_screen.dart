import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tagihan/screens/authentication/sign_in_screen.dart';
import 'package:tagihan/screens/homescreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? checkbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sign Up!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Create account and enjoy all services',
              style: TextStyle(
                color: Color(0xFF808D9E),
                fontSize: 16,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              height: 55,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  width: .8,
                  color: Colors.grey,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/google.png',
                    height: 50,
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    'Sign in with Google',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 2,
                  width: 140,
                  color: Color(0xffE9ECF2),
                ),
                const Text('OR'),
                Container(
                  height: 2,
                  width: 140,
                  color: Color(0xffE9ECF2),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Enter your username',
                  labelText: 'Enter your username'),
            ),
            const SizedBox(height: 20),
            const TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined),
                  hintText: 'Enter your email',
                  labelText: 'Enter your email'),
            ),
            const SizedBox(height: 20),
            const TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                hintText: 'Enter your password',
                labelText: 'Enter your password',
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                    activeColor: Colors.black,
                    checkColor: Colors.white,
                    value: checkbox,
                    onChanged: (userAction) {
                      setState(() {
                        checkbox = userAction;
                      });
                      print(checkbox);
                    }),
                const Text(
                  'I agree to the company Term of Service and\nPrivacy Policy',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.maxFinite,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1D1E25),
                  elevation: 1,
                ),
                onPressed: () {
                  if (checkbox == true) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                        (route) => false);
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Unable to sign up'),
                          );
                        });
                    print('you must agree to our terms and conditions');
                  }
                },
                child: Text('Sign Up'),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Have an account? ',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
