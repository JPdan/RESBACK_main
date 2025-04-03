import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String content;

  NotificationCard({
    required this.color,
    required this.icon,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(content, maxLines: 2, overflow: TextOverflow.ellipsis),
      ),
    );
  }
}
