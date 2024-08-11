import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/responsive.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/widgets/custom_card_grid_view.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/widgets/details_card.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/widgets/graph_map_grid_view.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/widgets/header.dart';

class MainScreen extends StatelessWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const MainScreen({super.key,required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Responsive.isMobile(context) ? 15 : 10),
          child: Column(
            children: [
              SizedBox(
                height: Responsive.isMobile(context) ? 5 : 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: HeaderWidget(scaffoldKey: scaffoldKey),
              ),
              SizedBox(
                height: 20,
              ),
              Responsive(
                  mobile: CustomCardGridView(
                    crossAxisCount: MediaQuery.of(context).size.width < 650 ? 2 : 4,
                    childAspectRatio: MediaQuery.of(context).size.width < 650 ? 1.3 : 1.1,
                  ),
                  tablet:CustomCardGridView(
                    crossAxisCount: MediaQuery.of(context).size.width < 800 ? 2 : 4,
                    childAspectRatio: MediaQuery.of(context).size.width < 800 ? 1.5 : 1.2,
                  ),
                  desktop: CustomCardGridView(
                    childAspectRatio: MediaQuery.of(context).size.width < 1400 ? 1.3 : 1.5,
                  ),),
              SizedBox(
                height: 20,
              ),
              Responsive(
                mobile: GraphMapGridView(
                  crossAxisCount: MediaQuery.of(context).size.width < 650 ? 1 : 2,
                  childAspectRatio: MediaQuery.of(context).size.width < 650 ? 1.2 : 1,
                ),
                tablet:GraphMapGridView(
                  crossAxisCount: 2,
                  childAspectRatio: MediaQuery.of(context).size.width < 800 ? 1.05 : 1.27,
                ),
                desktop: GraphMapGridView(
                  childAspectRatio: MediaQuery.of(context).size.width < 1400 ? 1.35 : 1.7,
                ),),
              SizedBox(
                height: 20,
              ),
              DetailsCard()
            ],
          ),
        ),
      ),
    );
  }
}
