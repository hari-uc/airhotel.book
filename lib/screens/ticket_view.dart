import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/thick_circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic>ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      height: AppLayout.getHeight(180),
      width: size.width*0.85, //85 percent of the screen
      child: Column(

        mainAxisSize: MainAxisSize.min,

        
        children: [
          /*
          This is the Top (blue part of the ticket)
           */
          Container(

            padding:  EdgeInsets.only(left: AppLayout.getHeight(16)),
            child: Column(
              children: [
              Container(
              decoration:  BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(10)),topRight: Radius.circular(AppLayout.getHeight(10)))
              ),
               padding: EdgeInsets.all(16),

               child: Column(
                children: [
                  Row(
                    children: [
                      Text('${ticket['from']['code']}',style: Styles.headLineStyle4.copyWith(color:Colors.white),),
                       const Spacer(),
                      const ThickCircle(),
                      Expanded(child: LayoutBuilder(

                        builder: (BuildContext context, BoxConstraints constraints ) {
                            return  Stack(
                              children: [
                                SizedBox(
                                  child: Flex(direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate((constraints.constrainWidth()/6).floor(), (index) => Text("-", style: Styles.textStyle.copyWith(color: Colors.white),)
                                    ),

                                  ),
                                ),

                                 Center(child: Transform.rotate(angle: 1.5,child: const Icon(Icons.airplanemode_active_outlined,color: Colors.white,),))
                              ]
                            );
                        },

                      )),
                     
                      const ThickCircle(),
                      const Spacer(),
                      Text('${ticket['to']['code']}',style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                    ],
                  ),
                   Gap(AppLayout.getHeight(3)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: AppLayout.getWidth(100),child: Text('${ticket['from']['name']}',style: Styles.headLineStyle4.copyWith(color: Colors.white),),),
                      Text("${ticket['flying_time']}",style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      SizedBox(width: AppLayout.getWidth(100),child:Text('${ticket['to']['name']}',textAlign: TextAlign.end,style: Styles.headLineStyle4.copyWith(color: Colors.white),))
                    ],
                  )
                ],
              ),
            )
              ],
            ),
          ),

          /*
          Middle Part of the ticket
           */
          Container(

            margin:  EdgeInsets.only(left: AppLayout.getHeight(16)),
            color: Styles.orangeColor,
            child: Row(

              children:  [

                 SizedBox(
                  height: AppLayout.getHeight(20),
                  width: AppLayout.getWidth(10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(AppLayout.getHeight(10)),bottomRight: Radius.circular(AppLayout.getHeight(10)))
                    ),
                  ),
                ),
                Expanded(child: LayoutBuilder(

                  builder: (BuildContext context , BoxConstraints constraints ) {
                    return Flex(direction: Axis.horizontal,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate((constraints.constrainWidth() /15 ).floor(), (index) => const SizedBox(
                          height: 1,
                          width: 5,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white
                            ),
                          ),
                        ))


                    );
                  },

                )),
                 SizedBox(
                  height: AppLayout.getHeight(20),
                  width: AppLayout.getWidth(10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(AppLayout.getHeight(10)),bottomLeft: Radius.circular(AppLayout.getHeight(10)))
                    ),
                  ),
                )

              ],
            ),

          ),

          /*
          Bottom Part of the Ticket
           */
          Container(
            margin:  EdgeInsets.only(left: AppLayout.getHeight(16), bottom: AppLayout.getWidth(16)),
            decoration: BoxDecoration(

              color: Styles.orangeColor,
              borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(AppLayout.getHeight(10)),bottomRight: Radius.circular(AppLayout.getHeight(10))),

            ),

            child: Container(
              padding:  EdgeInsets.only(top: AppLayout.getHeight(8),bottom: AppLayout.getHeight(16),left: AppLayout.getHeight(16),right: AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${ticket['date']}",style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                           Gap(AppLayout.getHeight(5)),
                          Text("Date",style: Styles.textStyle.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("${ticket['departure_time']}",style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                           Gap(AppLayout.getHeight(5)),
                          Text("Departure time",style: Styles.textStyle.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("${ticket['number']}",style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                           Gap(AppLayout.getHeight(5)),
                          Text("Number",style: Styles.textStyle.copyWith(color: Colors.white),)
                        ],
                      )
                    ],
                  )


                ],

              ),
            ),

          )

        ],
      ),
    );
  }
}
