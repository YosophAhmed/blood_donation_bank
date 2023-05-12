import 'package:donation/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class SuggestionItem extends StatelessWidget {

  final String suggestion;
  final VoidCallback onTap;

  const SuggestionItem({Key? key, required this.suggestion,required this.onTap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title:  Text(
        suggestion,
        textAlign: TextAlign.center,
        style: TextStyles.inputTextStyle(),
      ),
    );
  }
}
