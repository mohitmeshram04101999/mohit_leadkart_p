import 'package:flutter/material.dart';
import 'package:leadkart/helper/dimention.dart';

class CustomContainerWidget extends StatelessWidget {
  final bool isRecommendation;
  final String duration;
  final double price; // Ensure this is a double
  final int index;
  final int selectedValue;
  final ValueChanged<int?> onChanged;
  final int leads;
  final int reach;
  final List<String> platforms;
  final int aiImages;

  CustomContainerWidget({
    required this.isRecommendation,
    required this.duration,
    required this.price,
    required this.index,
    required this.selectedValue,
    required this.onChanged,
    required this.leads,
    required this.reach,
    required this.platforms,
    required this.aiImages,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: SC.fromWidth(2), vertical: SC.fromWidth(5)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 0.8,
            blurRadius: 7,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isRecommendation)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Color.fromRGBO(199, 255, 222, 0.8),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(SC.fromWidth(18)),
                  topLeft: Radius.circular(SC.fromWidth(8)),
                ),
              ),
              height: SC.fromWidth(28),
              width: SC.fromWidth(120),
              child: Center(
                child: Text(
                  'Recommendation',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: SC.fromWidth(30),
                  ),
                ),
              ),
            ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SC.fromWidth(10)),
            child: Row(
              children: [
                Text(
                  'Duration : $duration',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                    fontSize: SC.fromWidth(13),
                  ),
                ),
                SizedBox(width: SC.fromWidth(10)),
                Text(
                  '₹ $price',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                    fontSize: SC.fromWidth(21),
                  ),
                ),
                Expanded(child: Container()),
                Radio(
                  value: index,
                  groupValue: selectedValue,
                  onChanged: onChanged,
                ),
              ],
            ),
          ),
          SizedBox(height: SC.fromWidth(8)),
          Padding(
            padding: EdgeInsets.only(
              left: SC.fromWidth(14),
              right: SC.fromWidth(14),
              bottom: SC.fromWidth(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildInfoColumn('Lead', leads.toString()),
                _buildInfoColumn('Reach', reach.toString()),
                _buildPlatformIconsColumn('Platform', platforms),
                _buildInfoColumn('AI Images', aiImages.toString()),
              ],
            ),
          ),
          SizedBox(height: SC.fromWidth(5)),
        ],
      ),
    );
  }

  Widget _buildInfoColumn(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black54,
            fontSize: SC.fromWidth(23),
          ),
        ),
        SizedBox(height: SC.fromWidth(5)),
        Text(
          value,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: SC.fromWidth(23),
          ),
        ),
      ],
    );
  }

  Widget _buildPlatformIconsColumn(String label, List<String> icons) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.black54,
            fontSize: SC.fromWidth(23),
          ),
        ),
        SizedBox(height: SC.fromWidth(5)),
        Row(
          children: icons.map((icon) {
            return Padding(
              padding: EdgeInsets.only(right: SC.fromWidth(13)),
              child: Container(
                width: SC.fromWidth(22),
                height: SC.fromWidth(22),
                child: Image.asset(icon),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
