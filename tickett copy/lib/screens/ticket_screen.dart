import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickett/screens/ticket_view.dart';
import 'package:tickett/utils/app_info_list.dart';
import 'package:tickett/utils/app_layout.dart';
import 'package:tickett/widgets/ticket_tabs.dart';

import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size=AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children:[ ListView(
          padding: EdgeInsets.symmetric(horizontal:20 ,vertical:20 ),
          children: [
            const Gap(40),
            Text("Tickets",style: Styles.headLineStyle1,),
            const Gap(20),
            const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            const Gap(20),
            Container(
              padding: EdgeInsets.only(left: 15),

              child: TicketView(ticket: ticketList[0],),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              color:Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("Flutter Dash",style: Styles.headLineStyle3,),
                          const Gap(5),
                          Text("Passanger",style: Styles.headLineStyle3,),

                        ],
                      )
                    ],
                  )
                ],
              ),
            )

          ],

        ),
      ]
      ),
    );
  }
}
