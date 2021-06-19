import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/files_controller.dart';

class FilesView extends GetView<FilesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('FilesView'),
      //   centerTitle: true,
      // ),
      body: Center(
        child: Text(
          'FilesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
