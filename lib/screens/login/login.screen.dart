import 'package:app1/screens/login/components/buttonSocial.component.dart';
import 'package:app1/screens/login/components/inputLogin.component.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  Future signIn() async {
    print(emailController.text);
    print(passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Log in to Scale',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 28)),
                const SizedBox(
                  height: 30,
                ),
                InputLogin(
                  label: 'Email',
                  isPassword: false,
                  controller: emailController,
                ),
                const SizedBox(
                  height: 25,
                ),
                InputLogin(
                  label: 'Password',
                  isPassword: true,
                  controller: passwordController,
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    print('Hi');
                  },
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {
                      signIn();
                    },
                    child: Text(
                      'Login',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).scaffoldBackgroundColor),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.3),
                        height: 2,
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Text('OR'),
                    SizedBox(
                      width: 35,
                    ),
                    Expanded(
                      child: Container(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(.3),
                        width: 50,
                        height: 2,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonSocial(
                  label: 'Continue with Apple',
                  brand: 'apple',
                  logo:
                      'https://pngimg.com/uploads/apple_logo/apple_logo_PNG19666.png',
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonSocial(
                    label: 'Continue with Google',
                    brand: 'google',
                    logo:
                        'http://pngimg.com/uploads/google/google_PNG19635.png'),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
