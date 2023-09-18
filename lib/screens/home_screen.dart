import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Styles.bgColor,

      body: ListView(

        children: [

           Gap(AppLayout.getHeight(40)),
          Container(
            padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: Column(
              children: [
                /*
                Header part
                 */
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                     children:  [
                        Text("Good Morning",style: Styles.headLineStyle4),
                         Gap(AppLayout.getHeight(5)),
                        Text("Atman",style: Styles.headLineStyle1),
                      ]
                    ),

                    Container(
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getHeight(50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/profileimg.jpg")
                        )
                      ),
                    )

                  ],
                ),
                 Gap(AppLayout.getHeight(20)),
                /*
                Search Field part
                 */
                Container(
                  height: AppLayout.getHeight(40),
                  decoration: BoxDecoration(
                      color: const Color(0xFFF4F6FD),
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(10))
                  ),
                  padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205)),
                      Text("search",style: Styles.headLineStyle4)
                    ],
                  ),
                ),
                 Gap(AppLayout.getHeight(40)),
                /*
                Upcoming Flight part
                 */
                const DoubleTextWidget(bigText: "Upcoming Flights", smallText: "view all")
              ],
            ),
          ),
           Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding:  EdgeInsets.only(left: AppLayout.getHeight(10)),
            child: Row(
                children: flightList.map((ticket)=> TicketView(ticket: ticket)).toList(),
            ),
          ),
           Gap(AppLayout.getHeight(15)),
            Container(
            padding:  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              child: const DoubleTextWidget(bigText: "Hotels", smallText: "view all"),
    ),
           Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            padding:  EdgeInsets.only(left: AppLayout.getHeight(20)),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotelList.map((hotel)=> HotelScreen(hotel: hotel,)).toList(),
            ),
          )


        ],
      ),

    );
  }
}
