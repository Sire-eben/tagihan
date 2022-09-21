import 'package:flutter/material.dart';
import 'package:tagihan/screens/authentication/get_started_screen.dart';
import 'package:tagihan/screens/homescreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
              'Welcome Back!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Sign in to your account',
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
            const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: Text('Sign in'),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account? ',
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
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Sign Up',
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
