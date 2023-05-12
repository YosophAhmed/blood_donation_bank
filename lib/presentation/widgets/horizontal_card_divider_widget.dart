import 'package:flutter/material.dart';

class HorizontalCardDivider extends StatelessWidget {
  const HorizontalCardDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 50.0,
      ),
      child: Divider(
        thickness: 2,
        color: Colors.grey.withOpacity(0.5),
      ),
    );
  }
}
