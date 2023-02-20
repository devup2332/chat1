import 'package:flutter/material.dart';

class ButtonSocial extends StatelessWidget {
  final String logo;
  final String label;
  final String brand;
  const ButtonSocial(
      {super.key,
      required this.logo,
      required this.label,
      required this.brand});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        minimumSize: Size(60, 50),
        side: BorderSide(
            color: Theme.of(context).colorScheme.primary.withOpacity(.3)),
      ),
      child: Row(
        children: [
          Image.network(this.logo,
              width: 25, color: Theme.of(context).colorScheme.primary),
          Spacer(
            flex: 4,
          ),
          Text(
            this.label,
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
