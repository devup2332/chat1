import 'package:flutter/material.dart';

class InputLogin extends StatefulWidget {
  final String label;
  final bool isPassword;
  final TextEditingController controller;
  const InputLogin({
    super.key,
    required this.label,
    required this.isPassword,
    required this.controller,
  });

  @override
  State<InputLogin> createState() => _InputLoginState();
}

class _InputLoginState extends State<InputLogin> {
  bool hideText = true;
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
              controller: widget.controller,
              obscureText: hideText && widget.label != 'Email',
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: InputDecoration(
                  suffixIcon: widget.isPassword
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              hideText = !hideText;
                            });
                          },
                          icon: Icon(
                            hideText ? Icons.visibility : Icons.visibility_off,
                            color: Theme.of(context).colorScheme.primary,
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
