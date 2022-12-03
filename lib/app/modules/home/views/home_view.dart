import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../widget/widget.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Halaman Dashboard',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
