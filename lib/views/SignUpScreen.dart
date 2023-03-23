import 'package:app/components.dart/Colors.dart';
import 'package:app/components.dart/RoundButton.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController skillController = TextEditingController();
  TextEditingController companyController = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  'Signup',
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
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.key,
                              size: 20,
                            ),
                            hintText: 'Name',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: dobController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.key,
                              size: 20,
                            ),
                            hintText: 'Date of birth',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: skillController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.key,
                              size: 20,
                            ),
                            hintText: 'Skill',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          controller: companyController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.key,
                              size: 20,
                            ),
                            hintText: 'Company',
                          ),
                        ),
                      ),
                      Center(
                          child: RoundButton(title: 'Sign Up', onTap: () {})),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: RichText(
                            text: const TextSpan(
                                text: 'Already a user?',
                                style: TextStyle(color: Colors.grey),
                                children: [
                              TextSpan(
                                  text: ' Signin',
                                  style: TextStyle(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.bold))
                            ])),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
