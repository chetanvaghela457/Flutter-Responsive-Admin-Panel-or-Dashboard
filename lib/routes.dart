

import 'package:flutter/cupertino.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/routes/app_routes.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/screens/dashboard_screen.dart';

final Map<String,WidgetBuilder> routes = {
  AppRoutes.mainScreen:(context) => DashboardScreen(),
};