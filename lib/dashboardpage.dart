import 'package:flutter/material.dart';
import 'notificationcard.dart';
import 'explorecard.dart';

class DashboardPage extends StatelessWidget {
  final String? userEmail;
  final VoidCallback onLogout;

  const DashboardPage({required this.onLogout, this.userEmail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout, color: Colors.black),
            onPressed: onLogout,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (userEmail != null) Text('Welcome, $userEmail'),
            Text(
              'Notifications',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            NotificationCard(
              color: Colors.red[100]!,
              icon: Icons.warning,
              title: 'Alert Notification',
              content: 'Notification content. Example text...',
            ),
            NotificationCard(
              color: Colors.blue[100]!,
              icon: Icons.info,
              title: 'Informative Notification',
              content: 'Notification content. Example text...',
            ),
            SizedBox(height: 16),
            Text(
              'Explore',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  ExploreCard(color: Colors.amber, title: 'Read Articles'),
                  ExploreCard(
                    color: Colors.green,
                    title: 'Watch Informative Videos',
                  ),
                  ExploreCard(
                    color: Colors.purple,
                    title: 'Chat with a legal expert',
                  ),
                  ExploreCard(
                    color: Colors.blue,
                    title: 'View Emergency Contacts',
                  ),
                  ExploreCard(color: Colors.orange, title: 'Lorem Ipsum'),
                  ExploreCard(color: Colors.black54, title: 'More Info'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard, color: Colors.green),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
