import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final size = AppLayout.getSize(context);
    return  Scaffold(

      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?",style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),),
          Gap(AppLayout.getHeight(20)),
          FittedBox(
            child: Container(
              padding: const EdgeInsets.all(3.5),
              child: Row(
                children: [
                  /*
                Airlines Tickets Tab
                 */
                  Container(
                    width: size.width*.44, //44% of screen width
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    child: Center(child: Text("Airline Tickets"),),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                      color: Colors.white,
                    ),
                  ),
                  /*
                  Hotels Tab
                   */
                  Container(
                    width: size.width*.44, //44% of screen width
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    child: Center(child: Text("Hotels"),),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                      color: Colors.transparent,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
                  color: const Color(0xFFF4F6FD)
              ),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(15)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
    padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(18),horizontal: AppLayout.getHeight(15)),
    decoration: BoxDecoration(
    color: Color(0xD91130CE),
    borderRadius: BorderRadius.circular(AppLayout.getWidth(10))
    ),
    child:
    Center(child: Text("Find Tickets",style: Styles.textStyle.copyWith(color: Colors.white),))

    ),
          Gap(AppLayout.getHeight(40)),
          DoubleTextWidget(bigText: "Upcoming Flights", smallText: "view all"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /*
              upcoming flight disocunt module
               */
              Container(
                height: AppLayout.getHeight(380),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1
                    )
                  ]
                ),
                //doubt
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: DecorationImage(
                          fit:BoxFit.cover,
                          image: AssetImage("assets/images/sit.webp")
                        )
                      ),

                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text("20% discount on early booking of this flight. Don't miss.",style: Styles.headLineStyle2,),

                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(180),
                    decoration: BoxDecoration(
                      color: Color(0xFF3AB8B8),
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                    ),
                    padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(15),horizontal: AppLayout.getWidth(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discount\nfor Survey",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold),),
                        Gap(AppLayout.getHeight(10)),
                        Text("Take the survey about our services and get discount",style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),)
                      ],
                    ),
                  )
                ],
              )
            ],
          )


          
        ],
      ),

    );
  }
}
