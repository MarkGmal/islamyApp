import 'package:flutter/material.dart';
import 'package:session8_islame/Commen/app_color.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Commen/app_const.dart';
import '../../../Moudels/sura_model.dart';

class MostRecently extends StatefulWidget {
  @override
  State<MostRecently> createState() => _MostRecentlyState();
}

class _MostRecentlyState extends State<MostRecently> {
  List<SuraModel> mostRecent = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadMostRicent();
  }

  @override
  void didUpdateWidget(covariant MostRecently oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    loadMostRicent();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Most Recently',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 20),
            itemBuilder: (context, index) {
              SuraModel sura = mostRecent[index];
              return SizedBox(
                width: 280,
              child: Card(
                color: AppColors.goldColor,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 7,
                    top: 7,
                    bottom: 7,
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 200,
                              child: Text(
                                  sura.enName,
                                  style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: AppColors.blackColor,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                  sura.arName,
                                  style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: AppColors.blackColor,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                  "${sura.versesCount}Verses",
                                  style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: AppColors.blackColor,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        bottom: 0,
                        child: Image.asset(AppConsts.mostRecently),
                      ),
                    ],
                  ),
                ),
              ),
              );
            },
            itemCount: mostRecent.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  loadMostRicent() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    List<String> data = pref.getStringList(AppConsts.mostRecentKey) ?? [];
    List<SuraModel> suras = data
        .map((e) => SuraModel.getSurasList[int.parse(e) - 1])
        .toList();
    setState(() {
      mostRecent = suras.reversed.toList();
    });
  }
}
