import 'package:flutter/material.dart';

import '../../core/styles/text_styles.dart';

class SuccessRequestWidget extends StatelessWidget {
  const SuccessRequestWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.check_circle_rounded,
            color: Colors.green,
            size: 40,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'تم اضافة الطلب بنجاح',
            style: TextStyles.buttonTextStyle(),
          ),
        ],
      ),
    );
  }
}
