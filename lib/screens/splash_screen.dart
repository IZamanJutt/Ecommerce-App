import 'package:ecommerce/screens/welcome.dart';
import 'package:ecommerce/utills/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Introduce a delay here for the desired time duration (in seconds)
    navigateToNextScreen();
  }

  Future<void> navigateToNextScreen() async {
    await Future.delayed(
        const Duration(seconds: 3)); // Set the desired time here
    // Navigate to the next screen after the delay
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) =>
              WelcomeScreen()), // Replace YourNextScreen with the screen you want to navigate to.
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
                child: Image(image: AssetImage('assets/images/box.png'))),
            const Gap(10),
            Container(
              width: 184,
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Colors.orange,
              ),
              child: Center(
                  child: Text('Fruit Hub', style: Styles.splashbtn,),
            ),
            )
          ],
        ),
      ),
    );
  }
}
