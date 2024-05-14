import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppNewWidget extends StatelessWidget {
  final String bigText;
  final String SmallText;
  const AppNewWidget({Key?key,required this.bigText,required this.SmallText}):super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText,style: Styles.headLineStyle2,),
        InkWell(
            onTap: (){
              print("you are tapped");
            },
            child: Text(SmallText,style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
      ],
    );
  }
}
