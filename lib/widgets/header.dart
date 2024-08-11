import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/responsive.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/utils/constants.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/widgets/circular_icon.dart';

class HeaderWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  HeaderWidget({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (!Responsive.isDesktop(context))
            InkWell(
                onTap: () => scaffoldKey.currentState!.openDrawer(),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(
                    Icons.menu,
                    color: AppConstants.clrSmallText,
                    size: 25,
                  ),
                )),
          if (!Responsive.isMobile(context))
            Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: AppConstants.clrBoxBackground,
                          boxShadow: [
                            BoxShadow(color: Color(0xFF333333), spreadRadius: 1)
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                            filled: false,
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                    color: AppConstants.clrBoxBackground)),
                            contentPadding: EdgeInsets.symmetric(vertical: 5),
                            hintText: "Search Anything",
                            hintStyle: TextStyle(
                                color: AppConstants.clrSmallText, fontSize: 14),
                            prefixIcon: Icon(
                              Icons.search,
                              color: AppConstants.clrSmallText,
                              size: 20,
                            )),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CircularIcon(
                              iconData: Icons.notifications_active_sharp),
                          SizedBox(
                            width: 10,
                          ),
                          CircularIcon(iconData: Icons.message),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.asset(
                              "${AppConstants.rootImage}avatar.png",
                              width: 32,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chetan Vaghela",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: AppConstants.clrWhite,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Flutter Developer",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppConstants.clrSmallText,
                                ),
                              )
                            ],
                          )
                        ],
                      ))
                ],
              ),
            ),

          if(Responsive.isMobile(context))
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularIcon(iconData: Icons.search, ),
                SizedBox(width: 10,),
                CircularIcon(iconData: Icons.notifications_active_sharp, ),
                SizedBox(width: 10,),
                CircularIcon(iconData: Icons.message, ),
                SizedBox(width: 10,),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset("${AppConstants.rootImage}avatar.png",width: 32,),
                )
              ],
            )
        ],
      ),
    );
  }
}
