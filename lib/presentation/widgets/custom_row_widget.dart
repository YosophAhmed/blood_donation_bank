import 'package:donation/presentation/widgets/text_container_widget.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/styles/text_styles.dart';

class CustomRow extends StatelessWidget {
  final String title;
  final String data;

  const CustomRow({
    Key? key,
    required this.title,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomTextContainer(
            text: data,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: TextStyles.normalTextStyle(),
          ),
        ],
      ),
    );
  }
}
