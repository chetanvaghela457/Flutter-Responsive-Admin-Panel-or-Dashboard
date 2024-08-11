import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/responsive.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/screens/main_screen.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/utils/constants.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/widgets/side_menu.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SideMenu(scaffoldKey: _scaffoldKey,),
      backgroundColor: AppConstants.clrBackground,
      body: SafeArea(
        child: Row(
          children: [
            if(Responsive.isDesktop(context))
            Expanded(
                flex: 2,
                child: SideMenu(scaffoldKey: _scaffoldKey,)),
            Expanded(
                flex: 10,
                child: MainScreen(scaffoldKey: _scaffoldKey,))
          ],
        ),
      ),
    );
  }
}
