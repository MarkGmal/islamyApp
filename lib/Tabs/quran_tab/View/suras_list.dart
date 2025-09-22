import 'package:flutter/material.dart';
import 'package:session8_islame/Commen/app_const.dart';

class SurasList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Most Recently',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) => ListTile(
              contentPadding: EdgeInsets.zero,

              leading: Stack(
                alignment: Alignment(0, 0),
                children: [
                  Icon(Icons.brightness_5, size: 45, color: Colors.white),
                  Text(
                    (index + 1).toString(),
                    style: TextStyle(
                      fontSize: (index + 1) > 99
                          ? 8
                          : (index * 10) > 9
                          ? 14
                          : 18,
                      fontFamily: AppConsts.fontFamily,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              title: Text(
                'Al-Fatiha',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                '7 Verses',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              trailing: Text(
                'الفاتحه',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            separatorBuilder: (BuildContext context, int index) {
              return Divider(indent: 65, endIndent: 65, color: Colors.white);
            },
          ),
        ],
      ),
    );
  }
}
