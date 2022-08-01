import 'package:flutter/material.dart';
import 'package:zoom_clone/controller/auth_controller.dart';
import 'package:zoom_clone/views/screens/widgets/custom_button.dart';
import 'package:zoom_clone/views/screens/widgets/home_screen.dart';

class LoginScreen extends StatelessWidget {
  final AuthController _authController = AuthController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Start or join meeting",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Image.asset("assets/images/onboarding.jpg"),
        ),
        CustomButton(
          onPressed: () {
            _authController.signInWithGoogle();
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return HomeScreen();
            }));
          },
          text: 'Login',
        ),
      ],
    ));
  }
}
