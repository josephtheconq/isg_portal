import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: MediaQuery.of(context).size.height,
      child: Container(
        color: const Color(0xFF1D1B20),
        child: SingleChildScrollView(
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
                        Icons.security_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'İSG Portalı',
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
                title: 'Anasayfa',
                onTap: () => context.go('/'),
              ),
              _buildMenuItem(
                icon: Icons.location_on_outlined,
                title: 'Lokasyon',
                onTap: () => context.go('/lokasyon'),
              ),
              _buildExpandableMenuItem(
                icon: Icons.school,
                title: 'Eğitimler',
                children: [
                  _buildSubMenuItem(
                    title: 'Tüm Eğitimler',
                    onTap: () => context.go('/egitimler'),
                  ),
                  _buildSubMenuItem(
                    title: 'Eğitim Takvimi',
                    onTap: () => context.go('/egitimler/takvim'),
                  ),
                  _buildSubMenuItem(
                    title: 'Sertifikalar',
                    onTap: () => context.go('/egitimler/sertifikalar'),
                  ),
                  _buildSubMenuItem(
                    title: 'SDS Eğitimler',
                    onTap: () => context.go('/egitimler/sds'),
                  ),
                  _buildSubMenuItem(
                    title: 'Misafir Atama',
                    onTap: () => context.go('/kpi/misafir-atama'),
                  ),
                  _buildSubMenuItem(
                    title: 'Toolbox',
                    onTap: () => context.go('/kpi/toolbox'),
                  ),
                ],
              ),
              _buildExpandableMenuItem(
                icon: Icons.description_outlined,
                title: 'Personel Evrak Takip',
                children: [
                  _buildExpandableSubMenuItem(
                    title: 'ADECCO',
                    children: [
                      _buildSubMenuItem(
                        title: 'Personel Listesi',
                        onTap: () => context.go('/personel-evrak-takip/adecco'),
                      ),
                    ],
                  ),
                  _buildExpandableSubMenuItem(
                    title: 'NWG',
                    children: [
                      _buildSubMenuItem(
                        title: 'Personel Listesi',
                        onTap: () => context.go('/personel-evrak-takip/nwg'),
                      ),
                    ],
                  ),
                ],
              ),
              _buildExpandableMenuItem(
                icon: Icons.analytics_outlined,
                title: 'KPI',
                children: [
                  _buildSubMenuItem(
                    title: 'KPI Genel',
                    onTap: () => context.go('/kpi/genel'),
                  ),
                  _buildSubMenuItem(
                    title: 'Kazalar',
                    onTap: () => context.go('/kazalar'),
                  ),
                  _buildSubMenuItem(
                    title: '2025 İş Kazaları',
                    onTap: () => context.go('/kpi/is-kazalari-2025'),
                  ),
                  _buildSubMenuItem(
                    title: 'Tedarikçi Kazaları',
                    onTap: () => context.go('/kpi/tedarikci-kazalari'),
                  ),
                  _buildSubMenuItem(
                    title: 'Ramak Kala',
                    onTap: () => context.go('/kpi/ramak-kala'),
                  ),
                  _buildSubMenuItem(
                    title: 'BOSS',
                    onTap: () => context.go('/kpi/boss'),
                  ),
                  _buildSubMenuItem(
                    title: 'Eğitim',
                    onTap: () => context.go('/egitimler'),
                  ),
                  _buildSubMenuItem(
                    title: 'Uyarı',
                    onTap: () => context.go('/kpi/uyari'),
                  ),
                  _buildSubMenuItem(
                    title: 'Sağlık',
                    onTap: () => context.go('/kpi/saglik'),
                  ),
                ],
              ),
              _buildExpandableMenuItem(
                icon: Icons.emergency_outlined,
                title: 'Acil Durum Ekipleri ve Çalışan Temsilcisi',
                children: [
                  _buildSubMenuItem(
                    title: 'Acil Durum Protokolü',
                    onTap: () => context.go('/acil-durum-protokol'),
                  ),
                  _buildSubMenuItem(
                    title: 'Çalışan Temsilcisi',
                    onTap: () => context.go('/kpi/rules'),
                  ),
                ],
              ),
              _buildMenuItem(
                icon: Icons.description_outlined,
                title: 'Tedarikçi Doküman',
                onTap: () => context.go('/kpi/tedarikci-dokuman'),
              ),
            ],
          ),
        ),
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

  Widget _buildExpandableMenuItem({
    required IconData icon,
    required String title,
    required List<Widget> children,
  }) {
    return Theme(
      data: ThemeData(
        dividerColor: Colors.transparent,
        colorScheme: const ColorScheme.dark(),
      ),
      child: ExpansionTile(
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
        iconColor: const Color(0xFFF9F9FA).withOpacity(0.5),
        collapsedIconColor: const Color(0xFFF9F9FA).withOpacity(0.5),
        children: children,
      ),
    );
  }

  Widget _buildExpandableSubMenuItem({
    required String title,
    required List<Widget> children,
  }) {
    return Theme(
      data: ThemeData(
        dividerColor: Colors.transparent,
        colorScheme: const ColorScheme.dark(),
      ),
      child: ExpansionTile(
        title: Text(
          title,
          style: TextStyle(
            color: const Color(0xFFF9F9FA).withOpacity(0.5),
            fontSize: 13,
          ),
        ),
        iconColor: const Color(0xFFF9F9FA).withOpacity(0.5),
        collapsedIconColor: const Color(0xFFF9F9FA).withOpacity(0.5),
        tilePadding: const EdgeInsets.only(left: 56, right: 16),
        children: children,
      ),
    );
  }

  Widget _buildSubMenuItem({
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 56, right: 16),
      title: Text(
        title,
        style: TextStyle(
          color: const Color(0xFFF9F9FA).withOpacity(0.5),
          fontSize: 13,
        ),
      ),
      onTap: onTap,
      hoverColor: const Color(0xFF2A2D3E).withOpacity(0.2),
    );
  }
}