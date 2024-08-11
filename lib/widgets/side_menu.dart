import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/models/menu_model.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/utils/constants.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/widgets/gradient_icon.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  SideMenu({super.key,required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 200,
      decoration: BoxDecoration(
          border: Border(
            right: BorderSide(color: Color(0xFF202529), width: 1),
          ),
          color: AppConstants.clrBoxBackground),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      GradientIcon(icon: Icons.circle, size: 50),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Vernon",
                            style: TextStyle(
                                color: AppConstants.clrBigText, fontSize: 20),
                          ),
                          Text(
                            "Management",
                            style: TextStyle(
                                color: AppConstants.clrBigText, fontSize: 10),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  for (var i = 0; i < menu.length; i++)
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 13,vertical: 7),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            selected = i;
                          });
                          widget.scaffoldKey.currentState!.closeDrawer();
                        },
                        child: Row(
                          children: [
                            selected == i
                                ? GradientIcon(icon: menu[i].icon, size: 20)
                                : Icon(
                                    menu[i].icon,
                                    size: 20,
                                    color: AppConstants.clrSmallText,
                                  ),
                            SizedBox(width: 10,),
                            Text(
                              menu[i].title,
                              style: selected == i
                                  ? TextStyle(
                                      fontSize: 14,
                                      foreground: Paint()
                                        ..shader = LinearGradient(colors: [
                                          AppConstants.clrGradient1,
                                          AppConstants.clrGradient2,
                                        ]).createShader(Rect.fromLTWH(0, 0, 200, 70)))
                                  : TextStyle(
                                      fontSize: 14,
                                      color: AppConstants.clrSmallText,
                                      fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                    )
                ],
              ),
            ),
            for (var i = 0; i < bottomMenu.length; i++)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 13,vertical: 7),
                child: Row(
                  children: [
                    selected == i
                        ? GradientIcon(icon: bottomMenu[i].icon, size: 20)
                        : Icon(
                      bottomMenu[i].icon,
                      size: 20,
                      color: AppConstants.clrSmallText,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      bottomMenu[i].title,
                      style: selected == i
                          ? TextStyle(
                          fontSize: 14,
                          foreground: Paint()
                            ..shader = LinearGradient(colors: [
                              AppConstants.clrGradient1,
                              AppConstants.clrGradient2,
                            ]).createShader(Rect.fromLTWH(0, 0, 200, 70)))
                          : TextStyle(
                          fontSize: 14,
                          color: AppConstants.clrSmallText,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
