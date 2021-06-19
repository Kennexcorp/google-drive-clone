import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: Text("Google Drive Clone"),
          ),
          Divider(height: 5.0, color: Colors.white, ),
          ListTile(
            title: Text("Recent"),leading: Icon(Icons.access_time),
          ),
          ListTile(
            title: Text("Offline"),leading: Icon(Icons.offline_pin_outlined),
          ),
          ListTile(
            title: Text("Trash"),leading: Icon(Icons.delete_rounded),
          ),
          ListTile(
            title: Text("Notifications"),leading: Icon(Icons.notification_important_outlined),
          ),
          ListTile(
            title: Text("Backups"),leading: Icon(Icons.backup_outlined),
          ),
          ListTile(
            title: Text("Settings"),leading: Icon(Icons.settings),
          ),
          ListTile(
            title: Text("Help & feedback"),leading: Icon(Icons.help_outline_sharp),
          ),
          ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.cloud_queue_sharp),
                    SizedBox(width: 26.0,),
                    Text("Storage"),
                  ],
                ),
                SizedBox(height: 15.0,),
                LinearProgressIndicator(value: 1.0,),
                SizedBox(height: 5.0,),
                Text('2.3GB of 15GB used'),
                SizedBox(height: 10.0,),
                ElevatedButton(onPressed: () {}, child: Text('Buy storage'))
              ],
            ),
            // leading: Icon(Icons.cloud_queue_sharp),
          ),

        ],
      ),
    );
  }
}
