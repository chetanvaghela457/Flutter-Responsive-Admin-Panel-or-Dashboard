import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/models/detail_card_model.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/responsive.dart';
import 'package:flutter_responsive_admin_panel_or_dashboard/utils/constants.dart';

class DetailsCard extends StatelessWidget {
  DetailsCard({super.key});

  final ScrollController controller = ScrollController();
  final ScrollController controller2 = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller2,
      scrollDirection: Axis.horizontal,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(minWidth: MediaQuery.of(context).size.width),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          controller: controller,
          child: bottomData(context),
        ),
      ),
    );
  }

  Widget bottomData(BuildContext context) {
    return Container(
      width: 1000,
      decoration: BoxDecoration(
          color: AppConstants.clrBoxBackground,
          boxShadow: [BoxShadow(color: Color(0xff333333), spreadRadius: 1)],
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: AppConstants.clrBoxBackground,
                boxShadow: [
                  BoxShadow(color: Color(0xff333333), spreadRadius: 1)
                ],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            padding: EdgeInsets.all(!Responsive.isMobile(context) ? 20 : 10),
            child: Row(
              children: [
                buildHeaderCell(Icons.numbers,"Numbers",1),
                buildHeaderCell(Icons.people,"Persons",1),
                buildHeaderCell(Icons.email,"Email",2),
                buildHeaderCell(Icons.map_rounded,"Country",1),
                buildHeaderCell(Icons.info_outline,"Status",1),
                buildHeaderCell(Icons.book,"Job Title",1),
              ],
            ),
          ),
          ...detailsList.map((detail) => _buildDetailRow(detail))
        ],
      ),
    );
  }

  Widget _buildDetailRow(DetailCardModel detail) {
    return Container(
      color: Color(0xFF131D1F),
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          buildDetailsCell(detail.number, 1),
          buildDetailsCellWithImage(detail.personImage,detail.personName, 1),
          buildDetailsCell(detail.email, 2),
          buildDetailsCellWithImage(detail.countryImage,detail.countryName, 1),
          buildDetailsCell(detail.status, 1),
          buildDetailsCell(detail.jobTitle, 1),
        ],
      ),
    );
  }

  Widget buildDetailsCell(String text, int flex) {
    return Expanded(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(color: AppConstants.clrBigText, fontSize: 13),
        )
      ],
    ));
  }

  Widget buildDetailsCellWithImage(String imagePath, String text, int flex) {
    return Expanded(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        imagePath.endsWith('.svg')
            ? SvgPicture.asset(
                imagePath,
                width: 20,
              )
            : Image.asset(
                imagePath,
                width: 20,
              ),
        SizedBox(width: 5,),
        Text(
          text,
          style: TextStyle(color: AppConstants.clrBigText, fontSize: 13),
        )
      ],
    ));
  }

  Widget buildHeaderCell(IconData imagePath, String text, int flex) {
    return Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(imagePath,color: AppConstants.clrSmallText,size: 15,),
            SizedBox(width: 5,),
            Text(
              text,
              style: TextStyle(color: AppConstants.clrBigText, fontSize: 13),
            )
          ],
        ));
  }
}
