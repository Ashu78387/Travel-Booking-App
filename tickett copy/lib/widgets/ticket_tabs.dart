import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tickett/utils/app_layout.dart';



class AppTicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketTabs({Key?key,required this.firstTab,required this.secondTab}):super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getsize(context);
    final screenWidth = MediaQuery.of(context).size.width;

    return FittedBox(
      child:  Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF4F6FD),

        ),
        child: Row(
          children: [
            Container(
              width: screenWidth * 0.44,
              padding: EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left:Radius.circular(50)),
                color: Colors.white,

              ),
              child: Center(child: Text(firstTab),),
            ),
            Container(
              width: screenWidth * 0.44,
              padding: EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right:Radius.circular(50)),
                  color: Colors.transparent

              ),
              child: Center(child: Text(secondTab),),
            )
          ],

        ),
      ),
    );
  }
}
