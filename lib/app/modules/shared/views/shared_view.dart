import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/shared_controller.dart';

class SharedView extends GetView<SharedController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('SharedView'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Text(
          'SharedView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
