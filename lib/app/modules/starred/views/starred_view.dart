import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/starred_controller.dart';

class StarredView extends GetView<StarredController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('StarredView'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Text(
          'StarredView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
