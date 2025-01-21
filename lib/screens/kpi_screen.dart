import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class KPIScreen extends ConsumerWidget {
  const KPIScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E2029),
      body: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(48.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'KPI - Anahtar Performans Göstergesi 2025',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 48),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: GridView.count(
                            crossAxisCount: 3,
                            mainAxisSpacing: 24,
                            crossAxisSpacing: 24,
                            childAspectRatio: 1.6,
                            children: const [
                              _KPICard(title: 'Çalışma Saatleri'),
                              _KPICard(title: 'Major Kaza'),
                              _KPICard(title: 'Kayıp Gün'),
                              _KPICard(title: 'Minör Kaza'),
                              _KPICard(title: 'Kaza Sıklık'),
                              _KPICard(title: 'Kaza Ağırlık'),
                            ],
                          ),
                        ),
                        const SizedBox(height: 32),
                        const Text(
                          'KPI detayları',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          children: [
                            _DetailButton(
                              icon: Icons.person,
                              label: 'İş Kazaları',
                              onTap: () {},
                            ),
                            _DetailButton(
                              icon: Icons.warning,
                              label: 'Ramak Kala',
                              onTap: () {},
                            ),
                            _DetailButton(
                              icon: Icons.school,
                              label: 'Eğitim',
                              onTap: () {},
                            ),
                            _DetailButton(
                              icon: Icons.engineering,
                              label: 'Tedarikçi Kazaları',
                              onTap: () {},
                            ),
                            _DetailButton(
                              icon: Icons.business,
                              label: 'BOSS',
                              onTap: () {},
                            ),
                            _DetailButton(
                              icon: Icons.notifications,
                              label: 'Uyarı',
                              onTap: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _DetailButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF2A2D3E),
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: Colors.orange,
                size: 20,
              ),
              const SizedBox(width: 12),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _KPICard extends StatelessWidget {
  final String title;

  const _KPICard({
    required this.title,
  });

  String _getGraphImage() {
    switch (title) {
      case 'Çalışma Saatleri':
        return 'assets/images/graph.png';
      case 'Major Kaza':
        return 'assets/images/graph_2.png';
      case 'Kayıp Gün':
        return 'assets/images/graph_3.png';
      case 'Minör Kaza':
        return 'assets/images/graph_2.png';
      case 'Kaza Sıklık':
        return 'assets/images/graph_4.png';
      case 'Kaza Ağırlık':
        return 'assets/images/graph.png';
      default:
        return 'assets/images/graph.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 8, top: 16, bottom: 32),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2D3E),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Image.asset(
                _getGraphImage(),
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
} 