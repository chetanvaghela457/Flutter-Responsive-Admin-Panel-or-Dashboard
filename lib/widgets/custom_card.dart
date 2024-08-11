import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/models/main_card_model.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/responsive.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/utils/constants.dart';

class CustomCard extends StatelessWidget {
  final MainCardModel mainCardModel;

  CustomCard({super.key, required this.mainCardModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(!Responsive.isMobile(context) ? 15 : 10),
      decoration: BoxDecoration(
          color: AppConstants.clrBoxBackground,
          boxShadow: [BoxShadow(color: Color(0xff333333), spreadRadius: 1)],
      borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  stops: [0.1, 0.9],
                  colors: [
                    AppConstants.clrGradient1,
                    AppConstants.clrGradient2,
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Icon(
              mainCardModel.iconData,
              color: AppConstants.clrWhite,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            mainCardModel.title!,
            maxLines: 1,
            style: TextStyle(
                color: AppConstants.clrBigText,
                fontSize: Responsive.isMobile(context) ? 13 : 16),
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                mainCardModel.count.toString(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: AppConstants.clrBigText,
                    fontSize: Responsive.isMobile(context) ? 22 : 27),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                mainCardModel.subTitle!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: AppConstants.clrSmallText,
                    fontSize: Responsive.isMobile(context) ? 13 : 16),
              )
            ],
          ),
          Text(
            mainCardModel.percentage!,
            style: TextStyle(
              color: mainCardModel.color,
            ),
          )
        ],
      ),
    );
  }
}
