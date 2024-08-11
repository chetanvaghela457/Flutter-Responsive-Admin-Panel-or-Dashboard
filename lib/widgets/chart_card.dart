import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/models/bottom_card_model.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/responsive.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/utils/constants.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/widgets/chart.dart';

class ChartCard extends StatelessWidget {
  final BottomCardModel bottomCardModel;

  ChartCard({super.key, required this.bottomCardModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(!Responsive.isMobile(context) ? 15 : 10),
      decoration: BoxDecoration(
          color: AppConstants.clrBoxBackground,
          boxShadow: [BoxShadow(color: Color(0xff333333), spreadRadius: 1)],
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
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
              bottomCardModel.iconData,
              color: AppConstants.clrWhite,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            bottomCardModel.title!,
            maxLines: 1,
            style: TextStyle(
                color: AppConstants.clrBigText,
                fontSize: Responsive.isMobile(context) ? 11 : 12,
                overflow: TextOverflow.ellipsis),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      for (var i = 0;
                          i < bottomCardModel.graphData!.length;
                          i++)
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: bottomCardModel.graphData![i].color),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    bottomCardModel.graphData![i].title,
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: AppConstants.clrBigText),
                                  ),
                                  Text(
                                    bottomCardModel.graphData![i].subTitle,
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: AppConstants.clrSmallText),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                    ],
                  )),
              Expanded(
                  flex: 4,
                  child: bottomCardModel.type == 0
                      ? Chart()
                      : Image.asset("${AppConstants.rootImage}map.png",
                  fit: BoxFit.fill,
                  width: 500,))
            ],
          )
        ],
      ),
    );
  }
}
