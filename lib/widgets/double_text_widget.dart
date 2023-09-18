
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class DoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const DoubleTextWidget({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText,style: Styles.headLineStyle2,),
        InkWell(
            onTap: (){
              print("You tapped view all through widget func");
            },
            child: Text(smallText,style: Styles.textStyle.copyWith(color: Styles.primaryColor)))

      ],
    );
  }
}
