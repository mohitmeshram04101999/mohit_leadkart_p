import 'package:flutter/material.dart';
import 'package:leadkart/helper/dimention.dart';
import 'package:leadkart/helper/helper.dart';

class DemoAdWidget extends StatelessWidget {
  final String dateRange;
  final String adLabel;
  final String mainText;
  final Color mainTextColor;
  final List<String> platformIcons;
  final String imagePath;
  final int reach;
  final int leads;
  final int spent;
  final int clicks;
  final VoidCallback onViewReportsTap;

  DemoAdWidget({
    required this.dateRange,
    required this.adLabel,
    required this.mainText,
    required this.mainTextColor,
    required this.platformIcons,
    required this.imagePath,
    required this.reach,
    required this.leads,
    required this.spent,
    required this.clicks,
    required this.onViewReportsTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: SC.fromWidth(2)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 0.2,
            blurRadius: 5,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: SC.fromWidth(10), top: SC.fromWidth(10)),
                child: Text(
                  dateRange,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: SC.fromWidth(14.5)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: SC.fromWidth(8)),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(233, 233, 233, 1),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(SC.fromWidth(12)),
                    bottomLeft: Radius.circular(SC.fromWidth(15)),
                  ),
                ),
                height: SC.fromWidth(28),
                width: SC.fromWidth(70),
                child: Center(
                  child: Text(
                    adLabel,
                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w600, fontSize: SC.fromWidth(33)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: SC.fromWidth(4)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SC.fromWidth(30)),
            child: Row(
              children: [
                Text(
                  mainText,
                  style: TextStyle(color: mainTextColor, fontWeight: FontWeight.w600, fontSize: SC.fromWidth(16)),
                ),
                SizedBox(width: SC.fromWidth(11.5)),
                Row(
                  children: platformIcons.map((icon) {
                    return Padding(
                      padding: EdgeInsets.only(right: SC.fromWidth(13)),
                      child: Container(
                        width: SC.fromWidth(18),
                        height: SC.fromWidth(18),
                        child: Image.asset(icon),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          SizedBox(height: SC.fromWidth(12)),
          Padding(
            padding: EdgeInsets.only(
              left: SC.fromWidth(25),
              right: SC.fromWidth(34),
              bottom: SC.fromWidth(25),
            ),
            child: Row(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  width: SC.fromWidth(124),
                  height: SC.fromWidth(124),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(SC.fromWidth(10))),
                  child: Image.asset(imagePath),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildInfoRow('Reach', reach.toString()),
                    _buildInfoRow('Leads', leads.toString()),
                    _buildInfoRow('Spent', spent.toString()),
                    _buildInfoRow('Clicks', clicks.toString()),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: SC.fromWidth(12)),
            child: Column(
              children: [
                InkWell(
                  onTap: onViewReportsTap,
                  child: Text(
                    'View Reports',
                    style: TextStyle(
                      color: Color.fromRGBO(36, 238, 221, 1),
                      fontSize: SC.fromWidth(15),
                    ),
                  ),
                ),
                Container(
                  height: SC.fromWidth(1),
                  width: SC.fromWidth(85),
                  child: Divider(thickness: 1, color: MyHelper.appConstent.primeryColor),
                ),
              ],
            ),
          ),
          SizedBox(height: SC.fromWidth(20)),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: SC.fromWidth(8)),
      child: Row(
        children: [
          SizedBox(width: SC.fromWidth(17)),
          Text(
            value,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600, fontSize: SC.fromWidth(16)),
          ),
          SizedBox(width: SC.fromWidth(10)),
          Text(
            label,
            style: TextStyle(color: Colors.grey, fontSize: SC.fromWidth(15)),
          ),
        ],
      ),
    );
  }
}
