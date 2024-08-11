import 'package:flutter/material.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/models/main_card_model.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/responsive.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/widgets/custom_card.dart';

class CustomCardGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  CustomCardGridView(
      {super.key, this.childAspectRatio = 1, this.crossAxisCount = 4});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: myCards.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
        mainAxisSpacing: 12.0,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) =>
          CustomCard(mainCardModel: myCards[index]),
    );
  }
}
