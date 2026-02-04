

import 'package:biometric_app/screen/details.dart';
import 'package:biometric_app/screen/homepage.dart';
import 'package:biometric_app/screen/splash.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
    initialLocation: '/splash',

    routes: [
      GoRoute(path: '/splash', builder: (context,state)=> SplashScreen()),
      GoRoute(path: '/home', builder: (context,state)=> Homepage()),
      GoRoute(path: '/details', builder: (context,state)=> DetailsPage()),
    ]);