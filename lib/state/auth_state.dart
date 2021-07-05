import 'package:flutter/material.dart';
import 'package:rankii/config/dependency_injector.dart';
import 'package:rankii/services/auth/auth_service.dart';

class AuthState extends ChangeNotifier {
  bool _isAuthenticated = false;
  AuthState() {
    refreshToken();
  }

  bool get isAuthenticated => _isAuthenticated;

  void refreshToken() async {
    try {
      await getIt<AuthService>().googleAuth(isRefreshToken: true);
      _isAuthenticated = true;
      print('User has been authenticated and authorized for Rankii Service');
    } finally {
      notifyListeners();
    }
  }

  void signInWithGoogle() async {
    try {
      await getIt<AuthService>().googleAuth();
      _isAuthenticated = true;
    } finally {
      notifyListeners();
    }
  }
}
