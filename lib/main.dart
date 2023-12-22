import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_jiitek/screens/screen1/screen1.dart';
import 'screens/screen2/screen2.dart';
import 'screens/screen3/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Test Screens'),
        titleTextStyle: GoogleFonts.poppins(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFFFAAA14)),
                      child: TextButton(                   
                        onPressed: () {
                          Get.to(Screen1());
                        },
                        child: Text("Screen 1", style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18))),
                    ),
            const SizedBox(height: 20),
            Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFFA8B1FF)),
                      child: TextButton(                   
                        onPressed: () {
                          Get.to(Screen2());
                        },
                        child: Text("Screen 2", style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18))),
                    ),
            const SizedBox(height: 20),
            Container(
                      width: double.maxFinite,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.deepOrange[300]),
                      child: TextButton(                   
                        onPressed: () {
                          Get.to(const Screen3());
                        },
                        child: Text("Screen 3", style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18))),
                    ),
            const SizedBox(height: 40),
            Text('This app screens are developed by Shyam N as part of skill assessment test from company JIITAK Inc.', 
              style: GoogleFonts.poppins(color: Colors.black, fontSize: 12),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
