import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: const Color(0xFF1D1B20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          // Logo
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2697FF),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'İSG portal',
                  style: TextStyle(
                    color: Color(0xFFF9F9FA),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Menu Items
          _buildMenuItem(
            icon: Icons.dashboard_outlined,
            title: 'Dashboard',
            onTap: () => context.go('/'),
          ),
          _buildMenuItem(
            icon: Icons.analytics_outlined,
            title: 'KPI',
            onTap: () => context.go('/kpi'),
          ),
          _buildMenuItem(
            icon: Icons.warning_amber_outlined,
            title: 'Kazalar',
            onTap: () => context.go('/kazalar'),
          ),
          _buildMenuItem(
            icon: Icons.school,
            title: 'Eğitimler',
            onTap: () => context.go('/egitimler'),
          ),
          _buildMenuItem(
            icon: Icons.emergency_outlined,
            title: 'Acil Durum Protokolü',
            onTap: () => context.go('/acil-durum-protokol'),
          ),
          _buildMenuItem(
            icon: Icons.description_outlined,
            title: 'Personel Evrak Takip',
            onTap: () => context.go('/personel-evrak-takip'),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        leading: Icon(
          icon,
          color: const Color(0xFFF9F9FA).withOpacity(0.5),
          size: 20,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: const Color(0xFFF9F9FA).withOpacity(0.5),
            fontSize: 14,
          ),
        ),
        onTap: onTap,
        hoverColor: const Color(0xFF2A2D3E).withOpacity(0.2),
      ),
    );
  }
} 