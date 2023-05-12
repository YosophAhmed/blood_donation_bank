import 'package:flutter/material.dart';

class SignInUpRow extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final String buttonText;

  const SignInUpRow({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: const TextStyle(
                color: Colors.lightBlue,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
