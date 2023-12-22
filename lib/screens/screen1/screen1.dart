import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen1Controller extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxSet<int> favoriteItems = <int>{}.obs;

  List<String> days = ["木", "金", "土", "日", "月", "火", "水"];
  List<String> date = ["26", "27", "28", "29", "30", "31", "1"];

  void setSelectedIndex(int index) {
    selectedIndex.value = index;
    update();
  }

  void toggleFavorite(int index) {
    if (favoriteItems.contains(index)) {
      favoriteItems.remove(index);
    } else {
      favoriteItems.add(index);
    }
    update();
  }

  bool isFavorite(int index) {
    return favoriteItems.contains(index);
  }
}

class Screen1 extends StatelessWidget {
  final Screen1Controller controller = Get.put(Screen1Controller());

  Screen1({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

      List<String> displayimage = [
      'assets/image1.png',
      'assets/image2.png',
      'assets/image3.png',
      'assets/image4.png',
      'assets/image5.png',
      'assets/image6.png',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        bottom: Tab(
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Color(0xFFFAAA14), Color(0xFFFFD78D)],
              ),
            ),
            child: const Center(
              child: Text(
                '2022年 5月 26日(木)',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.grey.shade300),
          child: const TextField(
            cursorColor: Color(0xFFFAAA14),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                border: InputBorder.none,
                hintText: '北海道, 札幌市',
                hintStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Image.asset('assets/Filter_icon.png')),
          IconButton(onPressed: () {}, icon: Image.asset('assets/Heart_icon.png')),
          const SizedBox(width: 15)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        shape: const CircleBorder(side: BorderSide.none),
        child: Image.asset('assets/location.png'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 80,
                    child: Obx(
                      () {
                        int selectedIndex = controller.selectedIndex.value;
                        return ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          itemCount: controller.days.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                controller.setSelectedIndex(index);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: selectedIndex == index
                                      ? const Color(0xFFFAAA14)
                                      : Colors.white,
                                ),
                                width: 55,
                                height: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(controller.days[index],
                                        style: TextStyle(
                                            color: selectedIndex == index ? Colors.white : Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold)),
                                    const SizedBox(height: 10),
                                    Text(
                                      controller.date[index],
                                      style: TextStyle(
                                        color: selectedIndex == index ? Colors.white : Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    child: ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      itemCount: 6,
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          child: Stack(
                            children: [
                              Positioned(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    color: Colors.white,
                                    surfaceTintColor: Colors.white,
                                    elevation: 2,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(displayimage[index],
                                            height: 180, width: double.maxFinite, fit: BoxFit.cover),
                                        const SizedBox(height: 10),
                                        Container(
                                          padding: const EdgeInsets.all(20),
                                          width: double.maxFinite,
                                          child: Column(
                                            children: [
                                              const SizedBox(
                                                width: double.maxFinite,
                                                child: Text(
                                                  '介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.normal, fontSize: 17,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 15),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(8),
                                                      color: const Color.fromARGB(255, 255, 235, 197),
                                                    ),
                                                    child: const Padding(
                                                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                                      child: Text('介護付き有料老人ホーム', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.orange)),
                                                    ),
                                                  ),
                                                  const Text('¥ 6,000', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
                                                ],
                                              ),
                                              Row(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      const SizedBox(height: 25),
                                                      const SizedBox(
                                                        child: Text('5月 31日（水）08 : 00 ~ 17 : 00', style: TextStyle(fontSize: 12))),
                                                      const SizedBox(height: 10),
                                                      const Text('北海道札幌市東雲町3丁目916番地17号', style: TextStyle(fontSize: 12)),
                                                      const SizedBox(height: 10),
                                                      const Text('交通費 300円', style: TextStyle(fontSize: 12)),
                                                      const SizedBox(height: 10),
                                                      Text('住宅型有料老人ホームひまわり倶楽部', style: TextStyle(fontSize: 12, color: Colors.grey[400])),
                                                    ],
                                                  ),
                                                  GetBuilder<Screen1Controller>(
                                                    builder: (controller) {
                                                      return GestureDetector(
                                                        onTap: () {
                                                          controller.toggleFavorite(index);
                                                        },
                                                        child: Icon(
                                                          Icons.favorite_border_rounded,
                                                          color: controller.isFavorite(index)
                                                              ? Colors.red
                                                              : Colors.grey[400],
                                                          size: 30,
                                                        ),
                                                      );
                                                    },
                                                  ),
                                  
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                top: 160,
                                child: Container(
                                  height: 25, width: 80,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.redAccent),
                                  alignment: Alignment.center,
                                  child: const Text('本日まで', style: TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.bold))
                                )
                              )
                            ]
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
