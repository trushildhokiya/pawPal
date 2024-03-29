import 'package:go_router/go_router.dart';
import 'package:pawpal/screens/home_skeleton.dart';
import 'package:pawpal/screens/login.dart';
import 'package:pawpal/screens/post.dart';
import 'package:pawpal/screens/profile.dart';
import 'package:pawpal/screens/register.dart';
import 'package:pawpal/screens/settings.dart';
import 'package:pawpal/screens/splash.dart';
import 'package:pawpal/screens/start.dart';

class MyRouter {
  final GoRouter _router = GoRouter(initialLocation: '/splash', routes: [
    GoRoute(
        name: "splash",
        path: '/splash',
        builder: (context, state) => SplashScreen()),
    GoRoute(
        name: "start",
        path: '/start',
        builder: (context, state) => StartPage()),
    GoRoute(
        name: "register",
        path: '/auth/register',
        builder: (context, state) => RegisterPage()),
    GoRoute(
        name: "login",
        path: '/auth/login',
        builder: (context, state) => LoginPage()),
    GoRoute(
        name: "home",
        path: '/home',
        builder: (context, state) => HomeSkeletonPage()),
    GoRoute(
        name: "profile",
        path: '/profile',
        builder: (context, state) => ProfilePage()),
    GoRoute(
      name: "settings",
      path: "/settings",
      builder: (context, state) => SettingsPage(),
    ),
    GoRoute(
      name: "post",
      path: "/post",
      builder: (context, state) => PostPage(),
    )
  ]);

  GoRouter getRouter() => _router;
}
