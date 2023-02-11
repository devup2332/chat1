import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
      body: SafeArea(
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
              const InputLogin(
                label: 'Email',
                isPassword: false,
              ),
              const SizedBox(
                height: 25,
              ),
              const InputLogin(label: 'Password', isPassword: true),
              SizedBox(
                height: 20,
              ),
              Text(
                'Forgot Password ?',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
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
                  onPressed: () {},
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
                      color: Colors.black,
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
                      color: Colors.black,
                      width: 50,
                      height: 2,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

class InputLogin extends StatefulWidget {
  final String label;
  final bool isPassword;
  const InputLogin({super.key, required this.label, required this.isPassword});

  @override
  State<InputLogin> createState() => _InputLoginState();
}

class _InputLoginState extends State<InputLogin> {
  bool showPass = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label),
        const SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: Theme.of(context).colorScheme.primary.withOpacity(.3)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              obscureText: showPass,
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: InputDecoration(
                  suffixIcon: widget.isPassword
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              showPass = !showPass;
                            });
                          },
                          icon: Icon(
                            showPass ? Icons.visibility : Icons.visibility_off,
                          ),
                        )
                      : null,
                  hintStyle: TextStyle(
                    color: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.color
                        ?.withOpacity(.3),
                  ),
                  hintText: widget.label,
                  border: InputBorder.none),
            ),
          ),
        ),
      ],
    );
  }
}
