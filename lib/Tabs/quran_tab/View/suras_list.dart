import 'package:flutter/material.dart';
import 'package:session8_islame/Commen/app_const.dart';

import '../../../Moudels/sura_model.dart';
import '../sura_details.dart';

class SurasList extends StatelessWidget {
  const SurasList({super.key, required this.searchText});

  final String searchText;
  @override
  Widget build(BuildContext context) {
    List<SuraModel> suras = SuraModel.getSurasList
        .where(
          (element) =>
              element.arName.contains(searchText) ||
              element.enName.toLowerCase().contains(searchText.toLowerCase()),
        )
        .toList();
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
            itemCount: suras.length,
            itemBuilder: (context, index) {
              SuraModel curranSura = suras[index];
              return ListTile(
                onTap: () => Navigator.of(
                  context,
                ).pushNamed(SuraDetails.routeName, arguments: curranSura),
                contentPadding: EdgeInsets.zero,

                leading: Stack(
                  alignment: Alignment(0, 0),
                  children: [
                    Icon(Icons.brightness_5, size: 45, color: Colors.white),
                    Text(
                      curranSura.index.toString(),
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
                  curranSura.enName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  '${curranSura.versesCount} Verses',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                trailing: Text(
                  curranSura.arName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(indent: 65, endIndent: 65, color: Colors.white);
            },
          ),
        ],
      ),
    );
  }
}
