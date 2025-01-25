import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/home_screen.dart';
import '../screens/kazalar_screen.dart';
import '../screens/egitimler_screen.dart';
import '../screens/acil_durum_protokol_screen.dart';
import '../screens/personel_evrak_takip_screen.dart';
import '../screens/adecco_personel_screen.dart';
import '../screens/kpi_screen.dart';
import '../screens/toolbox_screen.dart';
import '../screens/tool_detail_screen.dart';
import '../screens/nwg_pet.dart';
import '../screens/misafir_atama_screen.dart';
import '../models/tool.dart';
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
          path: '/personel-evrak-takip/adecco',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const AdeccoPersonelEvrakTakipScreen(),
          ),
        ),
        GoRoute(
          path: '/personel-evrak-takip/nwg',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const NWGPersonelEvrakTakipScreen(),
          ),
        ),
        // KPI Routes
        GoRoute(
          path: '/kpi/genel',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const KPIScreen(),
          ),
        ),
        GoRoute(
          path: '/kpi/misafir-atama',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const MisafirAtamaScreen(),
          ),
        ),
        GoRoute(
          path: '/kpi/toolbox',
          pageBuilder: (context, state) => NoTransitionPage(
            child: const ToolboxScreen(),
          ),
          routes: [
            GoRoute(
              path: ':toolId',
              pageBuilder: (context, state) {
                final tool = state.extra as Tool;
                return NoTransitionPage(
                  child: ToolDetailScreen(tool: tool),
                );
              },
            ),
          ],
        ),
      ],
    ),
  ],
); 