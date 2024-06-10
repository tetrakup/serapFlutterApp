import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../core/cache.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final CacheSystem cacheSystem = CacheSystem();
  String? splashMessage;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      // Splash konfigürasyonunu yükle
      Map<String, dynamic> splashConfig = await cacheSystem.getSplashConfig();
      setState(() {
        splashMessage = splashConfig['message']; // JSON'dan bir mesaj oku
      });

      // Bir süre bekleyip ana ekrana yönlendirme
      await Future.delayed(Duration(seconds: 3)); // 3 saniye bekle
      if (mounted) {
        context.go('/homepage'); // GoRouter ile ana ekrana yönlendir
      }
    } catch (e) {
      print('Error loading splash config: $e');
      // Hata durumunda yönlendirme
      if (mounted) {
        context.go('/error');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.webp'), // Logoyu göster
            if (splashMessage != null)
              Text(
                splashMessage!,
                style: TextStyle(fontSize: 24),
              ),
          ],
        ),
      ),
    );
  }
}