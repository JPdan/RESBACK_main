import 'package:flutter/material.dart';
import 'get_started.dart';
import 'dashboardpage.dart';

class AuthWrapper extends StatefulWidget {
  @override
  _AuthWrapperState createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  bool _isLoggedIn = false;
  String? _userEmail;

  void _handleLogin(String email) {
    setState(() {
      _isLoggedIn = true;
      _userEmail = email;
    });
  }

  void _handleLogout() {
    setState(() {
      _isLoggedIn = false;
      _userEmail = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoggedIn
        ? DashboardPage(userEmail: _userEmail, onLogout: _handleLogout)
        : GetStartedPage(onLogin: _handleLogin);
  }
}
