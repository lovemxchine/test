import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:onboarding_screen/components/my_textfield.dart';
// import 'package:onboarding_screen/screen/introduction_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 248, 210),
        appBar: AppBar(
          title: const Text('Restaurant'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 244, 230, 162),
        ),
        body:  Form(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              MyTextField(
                  controller: emailController,
                  hintText: 'Enter your email',
                  obscureText: false,
                  labelText: 'name')
            ],
          ),
        ));
  }
}
