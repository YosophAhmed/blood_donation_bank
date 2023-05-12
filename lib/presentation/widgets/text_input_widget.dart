import 'package:flutter/cupertino.dart';

import '../../../../core/styles/text_styles.dart';

class InputText extends StatelessWidget {
  final String text;
  const InputText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyles.inputTextStyle(),
    );
  }
}
