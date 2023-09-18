import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
   final Map<String,dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 1
          )
        ],
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),

      ),
      margin:  EdgeInsets.only(right: AppLayout.getHeight(17),top: AppLayout.getHeight(7)),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              color: Styles.primaryColor,
              image:  DecorationImage(

                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}")
              )
            ),
          ),
           Gap(AppLayout.getHeight(10)),
          Text("${hotel['place']}",style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),
           Gap(AppLayout.getHeight(5)),
          Text("${hotel['destination']}",style: Styles.headLineStyle3.copyWith(color: Colors.white),),
           Gap(AppLayout.getHeight(10)),
          Text("\$${hotel['price']}/night",style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),),

        ],
      ) ,
    );
  }
}
