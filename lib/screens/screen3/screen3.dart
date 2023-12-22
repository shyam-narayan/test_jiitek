import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_jiitek/screens/screen3/checkbox.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: const Text('店舗プロフィール編集'),
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 15, color: Colors.black),
        shape: Border(
          bottom: BorderSide(
            color: Colors.grey.shade300, // Border color
            width: 1.0, 
          ),
        ),
        leading: IconButton(
          icon: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[300],
              child: Icon(CupertinoIcons.back, size: 20, color: Colors.grey[700],),
          ), 
          onPressed: () {
              Get.back();
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.bell, size: 24)
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text('店舗名 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2),)
                      ],
                    ),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Mer キッチン',
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: const BorderSide(color: Colors.grey))
                        )
                      ),
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('代表担当者名 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2),)
                      ],
                    ),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '林田　絵梨花',
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: const BorderSide(color: Colors.grey))
                        )
                      ),
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('店舗電話番号 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2),)
                      ],
                    ),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '123 - 4567 8910',
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: const BorderSide(color: Colors.grey))
                        )
                      ),
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('店舗住所 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2),)
                      ],
                    ),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '大分県豊後高田市払田791-13',
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: const BorderSide(color: Colors.grey))
                        )
                      ),
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                      child: Image.asset('assets/map.png',width: double.maxFinite, fit: BoxFit.cover)
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('店舗外観 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2)),
                        Text('（最大3枚まで）', style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                    Row(
                      children: [
                        _buildImageWithCloseButton('assets/pic1.png'),
                        const SizedBox(width: 10),
                        _buildImageWithCloseButton('assets/pic1.png'),
                        const SizedBox(width: 10),
                        _buildImageWithCloseButton('assets/dummyimage.png'),
                      ],
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('店舗内観 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2)),
                        Text('（1枚〜3枚ずつ追加してください）', style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                    Row(
                      children: [
                        _buildImageWithCloseButton('assets/pic2.png'),
                        const SizedBox(width: 10),
                        _buildImageWithCloseButton('assets/pic2.png'),
                        const SizedBox(width: 10),
                        _buildImageWithCloseButton('assets/pic2.png'),
                      ],
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('店舗住所 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2)),
                        Text('（最大3枚まで）', style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                    Row(
                      children: [
                        _buildImageWithCloseButton('assets/pic3.png'),
                        const SizedBox(width: 10),
                        _buildImageWithCloseButton('assets/pic4.png'),
                        const SizedBox(width: 10),
                        _buildImageWithCloseButton('assets/pic5.png'),
                      ],
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('料理写真 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2)),
                        Text('（1枚〜3枚ずつ追加してください）', style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                    Row(
                      children: [
                        _buildImageWithCloseButton('assets/pic6.png'),
                        const SizedBox(width: 10),
                        _buildImageWithCloseButton('assets/pic7.png'),
                        const SizedBox(width: 10),
                        _buildImageWithCloseButton('assets/pic8.png'),
                      ],
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('営業時間 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2),)
                      ],
                    ),
                    Row(
                      children: [
                        _buildTimeDropdown(),
                        const Text('   ~   ', style: TextStyle(fontSize: 20)),
                        _buildTimeDropdown(),
                      ],
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('ランチ時間 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2),)
                      ],
                    ),
                    Row(
                      children: [
                        _buildTimeDropdown(),
                        const Text('   ~   ', style: TextStyle(fontSize: 20)),
                        _buildTimeDropdown(),
                      ],
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('定休日 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2),)
                      ],
                    ),
                    Row(
                      children: [
                        CustomCheckbox('月', CheckboxController()),
                        CustomCheckbox('火', CheckboxController()),
                        CustomCheckbox('水', CheckboxController()),
                        CustomCheckbox('木', CheckboxController()),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        CustomCheckbox('金', CheckboxController()),
                        CustomCheckbox('土', CheckboxController()),
                        CustomCheckbox('日', CheckboxController()),
                        CustomCheckbox('祝', CheckboxController()),
                      ],
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('料理カテゴリー '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2),)
                      ],
                    ),
                    Row(
                      children: [
                        _buildFoodDropdown(),
                      ],
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('予算 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2),)
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 45,
                          width: 125,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '¥ 1,000',
                              contentPadding: const EdgeInsets.all(10),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: const BorderSide(color: Colors.grey))
                            )
                          ),
                        ),
                        const Text('   ~   ', style: TextStyle(fontSize: 20)),
                        SizedBox(
                          height: 45,
                          width: 125,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '¥ 2,000',
                              contentPadding: const EdgeInsets.all(10),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: const BorderSide(color: Colors.grey))
                            )
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('キャッチコピー '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2),)
                      ],
                    ),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '美味しい！リーズナブルなオムライスランチ！',
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: const BorderSide(color: Colors.grey))
                        )
                      ),
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('座席数 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2),)
                      ],
                    ),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '40席',
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: const BorderSide(color: Colors.grey))
                        )
                      ),
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('喫煙席 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2),)
                      ],
                    ),
                    Row(
                      children: [
                        CustomCheckbox('有', CheckboxController()),
                        CustomCheckbox('無', CheckboxController()),
                      ],
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('駐車場 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2),)
                      ],
                    ),
                    Row(
                      children: [
                        CustomCheckbox('有', CheckboxController()),
                        CustomCheckbox('無', CheckboxController()),
                      ],
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('来店プレゼント '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2),)
                      ],
                    ),
                    Row(
                      children: [
                        CustomCheckbox('有（最大３枚まで）', CheckboxController()),
                        CustomCheckbox('無', CheckboxController()),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        _buildImageWithCloseButton('assets/pic9.png'),
                        const SizedBox(width: 10),
                        _buildImageWithCloseButton('assets/pic10.png'),
                        const SizedBox(width: 10),
                        _buildImageWithCloseButton('assets/pic11.png'),
                      ],
                    ),
                    const SizedBox(height: 20),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    const Row(
                      children: [
                        Text('来店プレゼント名 '),
                        Text('*', style: TextStyle(color: Colors.red, height: 2),)
                      ],
                    ),
                    SizedBox(
                      height: 45,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'いちごクリームアイスクリーム, ジュース',
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: const BorderSide(color: Colors.grey))
                        )
                      ),
                    ),
                    const SizedBox(height: 40),
                          //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                    Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.deepOrange[300]),
                      child: TextButton(                   
                        onPressed: () {},
                        child: const Text("編集を保存", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18))),
                    )
                  ],
                ),
              ),
            )
          ),
        ],
      )
    );
  }


  // Function to create an image with a close button
  Widget _buildImageWithCloseButton(String imagePath) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
          child: Image.asset(imagePath, height: 90, width: 90, fit: BoxFit.cover)
        ),
        Positioned(
          top: 0,
          right: 0,
          child: IconButton(
            icon: Icon(Icons.close, color: Colors.grey[200]),
            onPressed: () {
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTimeDropdown() {
    // List of time values
    List<String> timeValues = [
      '12:00', '01:00', '02:00', '03:00', '04:00', '05:00',
      '06:00', '07:00', '08:00', '09:00', '10:00', '11:00'
    ];

    String selectedTime = timeValues[0];

    return SizedBox(
      height: 45,
      width: 125,
      child: DropdownButtonFormField<String>(
        value: selectedTime,
        onChanged: (value) {
          selectedTime = value!;
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.grey),
          ),
        ),
        items: timeValues.map((time) {
          return DropdownMenuItem<String>(
            value: time,
            child: Text(time),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildFoodDropdown() {
    // List of time values
    List<String> cookingCategories = [
      '料理カテゴリー選択', '料理カテゴリー選択2', '料理カテゴリー選択3', '料理カテゴリー選択4', '料理カテゴリー選択5',
    ];

  String selectedOption = cookingCategories[0];

    return SizedBox(
      height: 45,
      width: 200,
      child: DropdownButtonFormField<String>(
        value: selectedOption,
        onChanged: (value) {
          selectedOption = value!;
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.grey),
          ),
        ),
        items: cookingCategories.map((time) {
          return DropdownMenuItem<String>(
            value: time,
            child: Text(time),
          );
        }).toList(),
      ),
    );
  }
}
