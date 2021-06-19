import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_drive_clone/app/modules/files/views/files_view.dart';
import 'package:google_drive_clone/app/modules/home/views/home_view.dart';
import 'package:google_drive_clone/app/modules/navigation/views/drawer_view.dart';
import 'package:google_drive_clone/app/modules/shared/views/shared_view.dart';
import 'package:google_drive_clone/app/modules/starred/views/starred_view.dart';

import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  final List<Widget> _pages = [HomeView(), StarredView(), SharedView(), FilesView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search in Drive', style: TextStyle(color: Colors.white38),),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.person_pin),
          )
        ],
      ),
      
      body: SafeArea(
          child: GetBuilder<NavigationController>(
              init: controller, builder: (_) => _pages[controller.tabIndex])),
      bottomNavigationBar: GetBuilder<NavigationController>(
          init: controller,
          builder: (_) => BottomNavigationBar(
                unselectedItemColor: Colors.white38,
                selectedItemColor: Colors.blueAccent,
                onTap: controller.changeTabIndex,
                currentIndex: controller.tabIndex,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.black12,
                elevation: 1,
                items: _navigationItems(),
              )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) {
            return _operationsOptions();
          });
        },
        child: Icon(Icons.add, color: Colors.blueAccent,), backgroundColor: Colors.black12, elevation: 0,
      ),
      drawer: DrawerWidget(),
    );
  }

  List<BottomNavigationBarItem> _navigationItems() {
    return [
      _bottomNavigationBarItem(icon: Icons.home_outlined, label: 'Home'),
      _bottomNavigationBarItem(icon: Icons.star_border, label: 'Starred'),
      _bottomNavigationBarItem(icon: Icons.people_alt, label: 'Shared'),
      _bottomNavigationBarItem(icon: Icons.folder, label: "Files")
    ];
  }

  _bottomNavigationBarItem({IconData icon, String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }

  Widget _operationsOptions() {
    return Wrap(
      children: [
        ListTile(
          leading: Icon(Icons.share),
          title: Text('Share'),
        )
      ],
    );
  }
}
