import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen2Controller extends GetxController {
  RxInt currentIndex = 0.obs;

  List<String> dates = [
    "2021 / 11 / 18",
    "2021 / 11 / 17",
    "2021 / 11 / 16",
    "2021 / 11 / 13",
    "2021 / 11 / 12",
    "2021 / 11 / 11",
    "2021 / 11 / 10"
  ];

  void toggleSlider(int index) {
    currentIndex.value = index;
    update();
  }
}

class Screen2 extends StatelessWidget {
  final Screen2Controller controller = Get.put(Screen2Controller());

  Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: const Color(0xFFA8B1FF),
        title: const Text('スタンプカード詳細'),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: IconButton(
            icon: const CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xFF949EFF),
              child: Icon(CupertinoIcons.back, color: Colors.white, size: 20),
            ), onPressed: () { 
              Get.back();
             },
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.minus_circle, color: Colors.white, size: 24)
          )
        ],
      ),
      backgroundColor: const Color(0xFFA8B1FF),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
                height: 60,
                padding: const EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Mer キッチン', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Text('現在の獲得数 ', style: TextStyle(color: Colors.white, fontSize: 14)),
                        Text('30', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold)),
                        Text(' 個', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                )),
            Expanded(
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .8,
                    width: double.infinity,
                    child: Card(
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      margin: EdgeInsets.zero,
                      shape:
                          const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(22), topRight: Radius.circular(22))),
                      child: Obx(() {
                        int currentIndex = controller.currentIndex.value;

                        return Column(
                          children: [
                            const SizedBox(height: 20),
                            CarouselSlider.builder(
                              itemCount: 2,
                              itemBuilder: (context, index, realIndex) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    elevation: 3,
                                    color: Colors.white,
                                    surfaceTintColor: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Center(
                                        child: 
                                        // GridView.builder(
                                        //   physics: const NeverScrollableScrollPhysics(),
                                        //   itemCount: 15,
                                        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
                                        //   itemBuilder: (context, index) {
                                        //     return Image.asset('assets/star_check.png');
                                        //   },                         
                                        // )
                                        // Grid view has scroll properties so bottom boundary size issues exists depending on screen sizes
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Image.asset('assets/star_check.png'),
                                                Image.asset('assets/star_check.png'),
                                                Image.asset('assets/star_check.png'),
                                                Image.asset('assets/star_check.png'),
                                                Image.asset('assets/star_check.png'),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Image.asset('assets/star_check.png'),
                                                Image.asset('assets/star_check.png'),
                                                Image.asset('assets/star_check.png'),
                                                Image.asset('assets/star_check.png'),
                                                Image.asset('assets/star_check.png'),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Image.asset('assets/star_check.png'),
                                                Image.asset('assets/star_check.png'),
                                                Image.asset('assets/star_check.png'),
                                                Image.asset('assets/star_check.png'),
                                                Image.asset('assets/star_check.png'),
                                              ],
                                            ),
                                          ],
                                        )
                                      ),
                                    ),
                                  ),
                                );
                              },
                              options: CarouselOptions(
                                autoPlay: false,
                                enableInfiniteScroll: false,
                                pageSnapping: true,
                                viewportFraction: 0.9,
                                onPageChanged: (index, reason) {
                                  controller.toggleSlider(index);
                                },
                              ),
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Text('${currentIndex + 1} / 2枚目', textAlign: TextAlign.right),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: const Text(
                                'スタンプ獲得履歴',
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Expanded(
                              child: GetBuilder<Screen2Controller>(
                                init: Screen2Controller(),
                                builder: (controller) => ListView.separated(
                                  physics: const ClampingScrollPhysics(),
                                  padding: const EdgeInsets.symmetric(vertical: 10),
                                  itemCount: controller.dates.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                        width: double.maxFinite,
                                        height: 70,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              controller.dates[index],
                                              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.grey),
                                            ),
                                            const Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text('スタンプを獲得しました。', style: TextStyle(fontSize: 14)),
                                                Text('1 個', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                              ],
                                            )
                                          ],
                                        ));
                                  },
                                  separatorBuilder: (context, index) {
                                    return const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 20),
                                      child: Divider(),
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
