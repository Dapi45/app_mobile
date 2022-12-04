import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../widget/navbot.dart';
import '../../home/controllers/home_controller.dart';

int currentPage = 0;

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PonselMart', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 202, 202, 202),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Announcement',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        child: Center(
                      child: SizedBox(
                        height: 120,
                        child: ListView.builder(
                            itemExtent: 280,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Container(
                                  margin: EdgeInsets.all(10),
                                  color: Colors.yellow[600],
                                ),
                            itemCount: 10),
                      ),
                    )),
                    SizedBox(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.yellow[600],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Newspaper',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Container(
                        padding: const EdgeInsets.all(220),
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 129, 129, 129),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
