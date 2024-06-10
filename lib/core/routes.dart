/*import 'package:go_router/go_router.dart';
import 'package:vizeproje/screens/book_api_screen.dart';
import 'package:vizeproje/screens/client/profile.dart';
import 'package:vizeproje/screens/core/loader.dart';
import 'package:vizeproje/screens/onboarding_screen.dart';
import 'package:vizeproje/screens/kayit.dart';

import '../screens/about.dart';
import '../screens/core/error.dart';
import '../screens/giris.dart';
import '../screens/homepage.dart';
import '../screens/core/settings.dart';
import '../screens/payment/payment.dart';
import '../screens/product/cart.dart';
import '../screens/product/favorites.dart';
import '../screens/product/products.dart';
import '../screens/static/ip.dart';


final routes = GoRouter(
  errorBuilder: (context, state) => const ErrorScreen(),
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoaderScreen(),
    ),
    GoRoute(
      path: '/ip',
      builder: (context, state) => const IPScreen(),
    ),
    GoRoute(
      path: '/payment',
      builder: (context, state) => const PaymentScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: "/products",
      builder: (context, state) => const ProductsScreen(),
    ),
    GoRoute(
      path: "/favorites",
      builder: (context, state) => const FavoritesScreen(),
    ),
    GoRoute(
      path: "/cart",
      builder: (context, state) => const CartScreen(),
    ),
    GoRoute(
      path: '/homepage',
      builder: (context, state) => const homepage(),
    ),
    GoRoute(
      path: '/giris',
      builder: (context, state) => const giris(),
    ),
    GoRoute(
      path: '/kayit',
      builder: (context, state) => const KayitScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => ProfileScreen(),
    ),
    GoRoute(
      path: '/silincek',
      builder: (context, state) => const BookApiScreen(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
  ],
);
*/

//deneme
/*
import 'package:go_router/go_router.dart';
import 'package:vizeproje/screens/book_api_screen.dart';
import 'package:vizeproje/screens/client/profile.dart';
import 'package:vizeproje/screens/core/loader.dart';
import 'package:vizeproje/screens/onboarding_screen.dart';
import 'package:vizeproje/screens/kayit.dart';

import '../screens/about.dart';
import '../screens/core/error.dart';
import '../screens/giris.dart';
import '../screens/homepage.dart';
import '../screens/core/settings.dart';
import '../screens/payment/payment.dart';
import '../screens/product/cart.dart';
import '../screens/product/favorites.dart';
import '../screens/product/products.dart';
import '../screens/splash/splash_screen.dart';
import '../screens/static/ip.dart';

final routes = GoRouter(
  initialLocation: '/', // Splash ekranını başlangıç olarak ayarlayın
  errorBuilder: (context, state) => const ErrorScreen(),
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashScreen(), // SplashScreen'i başlangıç ekranı olarak ayarlayın
    ),
    GoRoute(
      path: '/homepage',
      builder: (context, state) => const homepage(),
    ),
    GoRoute(
      path: '/ip',
      builder: (context, state) => const IPScreen(),
    ),
    GoRoute(
      path: '/payment',
      builder: (context, state) => const PaymentScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: "/products",
      builder: (context, state) => const ProductsScreen(),
    ),
    GoRoute(
      path: "/favorites",
      builder: (context, state) => const FavoritesScreen(),
    ),
    GoRoute(
      path: "/cart",
      builder: (context, state) => const CartScreen(),
    ),
    GoRoute(
      path: '/giris',
      builder: (context, state) => const giris(),
    ),
    GoRoute(
      path: '/kayit',
      builder: (context, state) => const KayitScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => ProfileScreen(),
    ),
    GoRoute(
      path: '/silincek',
      builder: (context, state) => const BookApiScreen(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
  ],
);*/
import 'package:go_router/go_router.dart';
import 'package:vizeproje/screens/book_api_screen.dart';
import 'package:vizeproje/screens/client/profile.dart';
import 'package:vizeproje/screens/core/loader.dart';
import 'package:vizeproje/screens/onboarding_screen.dart';
import 'package:vizeproje/screens/kayit.dart';

import '../screens/about.dart';
import '../screens/core/error.dart';
import '../screens/giris.dart';
import '../screens/homepage.dart';
import '../screens/core/settings.dart';
import '../screens/payment/payment.dart';
import '../screens/product/cart.dart';
import '../screens/product/favorites.dart';
import '../screens/product/products.dart';
import '../screens/splash/splash_screen.dart';
import '../screens/static/ip.dart';

final routes = GoRouter(
  initialLocation: '/', // Splash ekranını başlangıç olarak ayarlayın
  errorBuilder: (context, state) => const ErrorScreen(),
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashScreen(), // SplashScreen'i başlangıç ekranı olarak ayarlayın
    ),
    GoRoute(
      path: '/homepage',
      builder: (context, state) => const homepage(),
    ),
    GoRoute(
      path: '/ip',
      builder: (context, state) => const IPScreen(),
    ),
    GoRoute(
      path: '/payment',
      builder: (context, state) => const PaymentScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: "/products",
      builder: (context, state) => const ProductsScreen(),
    ),
    GoRoute(
      path: "/favorites",
      builder: (context, state) => const FavoritesScreen(),
    ),
    GoRoute(
      path: "/cart",
      builder: (context, state) => const CartScreen(),
    ),
    GoRoute(
      path: '/giris',
      builder: (context, state) => const giris(),
    ),
    GoRoute(
      path: '/kayit',
      builder: (context, state) => const KayitScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => ProfileScreen(),
    ),
    GoRoute(
      path: '/silincek',
      builder: (context, state) => const BookApiScreen(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
  ],
);
