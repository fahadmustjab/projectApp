import 'package:app/components.dart/Colors.dart';
import 'package:app/components.dart/RoundButton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/login.jpg"),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Login',
                  style: TextStyle(color: AppColors.primaryColor, fontSize: 20),
                ),
              ),
              Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              size: 20,
                            ),
                            hintText: 'Email',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: passwordController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.key,
                              size: 20,
                            ),
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ],
                  )),
              const Padding(
                padding: EdgeInsets.only(right: 10, bottom: 5),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Forget Password',
                    style: TextStyle(color: AppColors.primaryColor),
                  ),
                ),
              ),
              Center(child: RoundButton(title: 'Sign in', onTap: () {})),
              Align(
                alignment: Alignment.bottomCenter,
                child: RichText(
                    text: const TextSpan(
                        text: 'Not a User?',
                        style: TextStyle(color: Colors.grey),
                        children: [
                      TextSpan(
                          text: ' Signup',
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.bold))
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
