import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:session8_islame/Commen/app_color.dart';
import 'package:session8_islame/Commen/app_const.dart';

import '../../Main Wigets/main_bg.dart';
import '../../Moudels/hadeeth_model.dart';

class HadeethTab extends StatefulWidget {
  const HadeethTab({super.key});

  @override
  State<HadeethTab> createState() => _HadeethTabState();
}

class _HadeethTabState extends State<HadeethTab> {
  PageController controller = PageController(
    viewportFraction: 0.8,
    initialPage: 0,
  );
  int currantPage = 0;
  List<HadeethModel> data = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      if ((controller.page ?? 0).toInt() != currantPage) {
        setState(() {
          currantPage = (controller.page ?? 0).toInt();
        });
      }
    });
    loadAhadeeth2();
  }

  @override
  Widget build(BuildContext context) {
    return MainBg(
      bgImage: AppConsts.hadethTabBg,
      child: Expanded(
        child: PageView.builder(
          controller: controller,
          itemCount: data.length,
          itemBuilder: (context, index) {
            HadeethModel Hadeeth = data[index];
            return Padding(
              padding: EdgeInsets.symmetric(
                vertical: index != currantPage ? 20 : 0,
              ),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
                padding: EdgeInsets.only(top: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: AppColors.goldColor,
                ),
                child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  children: [
                    Image.asset(AppConsts.hadethPgae_bg, fit: BoxFit.fill),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),

                        Text(
                          Hadeeth.title,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppConsts.fontFamily,
                            color: AppColors.blackColor,
                          ),
                        ),
                        SizedBox(height: 10),

                        Expanded(
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20.0,
                            ),

                            child: Text(
                              Hadeeth.content,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: AppConsts.fontFamily,
                                color: AppColors.blackColor,
                              ),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                        SizedBox(height: 90),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  loadAhadeeth2() async {
    List<HadeethModel> ahadeethList = [];
    for (var i = 1; i < 51; i++) {
      String result = await rootBundle.loadString('assets/Hadeeth/h$i.txt'); //
      String title = result.split('\n').first;
      String content = result.substring(title.length);
      HadeethModel hadeethModel = HadeethModel(
        content: content,
        title: title,
        index: i,
      );
      ahadeethList.add(hadeethModel);
    }
    setState(() {
      data = ahadeethList;
    });
  }
}
