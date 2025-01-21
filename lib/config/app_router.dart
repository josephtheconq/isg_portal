import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/home_screen.dart';
import '../screens/kazalar_screen.dart';
import '../screens/egitimler_screen.dart';
import '../screens/acil_durum_protokol_screen.dart';
import '../screens/personel_evrak_takip_screen.dart';
import '../screens/nwg_pet.dart';
import '../screens/adecco_pet.dart';
import '../screens/kpi_screen.dart';
import '../widgets/custom_drawer.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  // Disable page transitions for smoother navigation
  routerNeglect: true,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          body: Row(
            children: [
              const CustomDrawer(),
              Expanded(
                child: child,
              ),
            ],
          ),
        );
      },
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const HomeScreen(),
          ),
        ),
        GoRoute(
          path: '/kpi',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const KPIScreen(),
          ),
        ),
        GoRoute(
          path: '/kazalar',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const KazalarScreen(),
          ),
        ),
        GoRoute(
          path: '/egitimler',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const EgitimlerScreen(),
          ),
        ),
        GoRoute(
          path: '/acil-durum-protokol',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const AcilDurumProtokolScreen(),
          ),
        ),
        GoRoute(
          path: '/personel-evrak-takip',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const PersonelEvrakTakipScreen(),
          ),
        ),
        GoRoute(
          path: '/nwg-pet',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const NWGPersonelEvrakTakipScreen(),
          ),
        ),
        GoRoute(
          path: '/adecco-pet',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const AdeccoPersonelEvrakTakipScreen(),
          ),
        ),
      ],
    ),
  ],
); 
