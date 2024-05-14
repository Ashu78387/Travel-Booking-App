import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:tickett/utils/app_layout.dart';
import 'package:tickett/widgets/icon_text_widget.dart';
import 'package:tickett/widgets/ticket_tabs.dart';

import '../utils/app_styles.dart';
import '../widgets/New_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size=AppLayout.getsize(context);
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical:20 ),
        children: [
           const Gap(40),
          Text("What are\nyou looking for?",style: Styles.headLineStyle1.copyWith(fontSize: 35),),
          const Gap(20),
         const AppTicketTabs(firstTab: "Airline tickets",secondTab: "Hotels",),
          const Gap(25),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          const Gap(20),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
      const Gap(25),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
        decoration: BoxDecoration(

            color: const Color(
              0xD91130CE

            ),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Center(child: Text("find tickets",style: Styles.textStyle.copyWith(color: Colors.white,))),

      ),
          const Gap(40),

          const AppNewWidget(bigText: "Upcoming Flights", SmallText: "View all"),
          const Gap(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 450,
                width: Size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(12),

                        image: const DecorationImage
                          (
                          fit: BoxFit.cover,
                            image: AssetImage("assets/images/view.jpeg"))
                      ),
                    ),
                    const Gap(10),
                    Text("20% discount on the early booking of this flight.Don't miss.  ",
                    style: Styles.headLineStyle2.copyWith(),)
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: Size.width*0.44,
                        height: 210,
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(18),

                        ),
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Discount\nfor survey",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold,color: Colors.white),),
                            const Gap(10),
                            Text("Take the survey about our services and get discount",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                          top: -40,
                          child: Container(
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 18,color: Color(0xFF189999)),
                          color: Colors.transparent,

                        ),
                      )),

                    ],
                  ),
                  const Gap(15),
                  Container(
                    width: Size.width*0.44,
                    height: 210,
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: const Color(0xFFEC6545),


                    ),
                    child: Column(
                      children: [
                        Text("Take Love ",style: Styles.headLineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                        const Gap(5),
                        Text("Enjoy your journey and keep booking with us ",style: Styles.headLineStyle2.copyWith(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                          ]
                        ))

                      ],
                    ),

                ],
              )
            ],
          )






      );

  }
}
