import 'package:flutter/material.dart';

/*In Flutter, the Notification class is the base class for all notifications that can be dispatched using
 the NotificationListener widget. It represents a message or event that can be propagated through
  the widget tree to notify listeners and trigger specific actions. 
  it has scroll notification,focus notification and value notification etc*/

class Mynotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('NotificationListener Example'),
        ),
        body: NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            if (notification is ScrollStartNotification) {
              print('Scroll Start');
            } else if (notification is ScrollUpdateNotification) {
              print('Scroll Update');
            } else if (notification is ScrollEndNotification) {
              print('Scroll End');
            }
            return true; // Returning true indicates that the notification has been handled
          },
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) => ListTile(
              title: Text('Item $index'),
            ),
          ),
        ),
      ),
    );
  }
}
