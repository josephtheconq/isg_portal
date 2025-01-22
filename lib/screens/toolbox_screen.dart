import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/tool.dart';

class ToolboxScreen extends StatelessWidget {
  const ToolboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212332),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'ISG Personel Takip',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            // Header Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left side
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Makine ve Aletler',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        _buildInfoCard(
                          'Toplam Makine',
                          '${tools.length}',
                          Icons.build_circle_outlined,
                        ),
                        const SizedBox(width: 24),
                        _buildInfoCard(
                          'Son Güncelleme',
                          '12.03.2024',
                          Icons.update,
                        ),
                      ],
                    ),
                  ],
                ),
                // Right side
                Padding(
                  padding: const EdgeInsets.only(right: 48.0),
                  child: InkWell(
                    onTap: () {
                      // Show safety regulations dialog
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF373D52),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.info_outline, color: Colors.orange, size: 20),
                          const SizedBox(width: 8),
                          Text(
                            'Makine Güvenlik\nTalimatları ve\nYönetmelikler',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 12,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Tools Grid
            LayoutBuilder(
              builder: (context, constraints) {
                final cardWidth = constraints.maxWidth > 1400
                    ? (constraints.maxWidth - 80) / 5
                    : constraints.maxWidth > 1100
                        ? (constraints.maxWidth - 64) / 4
                        : constraints.maxWidth > 800
                            ? (constraints.maxWidth - 48) / 3
                            : constraints.maxWidth > 600
                                ? (constraints.maxWidth - 32) / 2
                                : constraints.maxWidth;

                return Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: tools
                      .map((tool) => SizedBox(
                            width: cardWidth,
                            child: ToolCard(tool: tool),
                          ))
                      .toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, String value, IconData icon) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 16,
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ToolCard extends StatelessWidget {
  final Tool tool;

  const ToolCard({
    super.key,
    required this.tool,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: const Color(0xFF2A2D3E),
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {
          context.push('/kpi/toolbox/${tool.id}', extra: tool);
        },
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with icon and name
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      _getIconForTool(tool.name),
                      size: 24,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      tool.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Quick info
              _buildInfoItem(
                Icons.security,
                'Güvenlik Ekipmanları',
                'Gözlük, Eldiven, Maske',
                Colors.green,
              ),
              const SizedBox(height: 12),
              _buildInfoItem(
                Icons.warning_amber,
                'Risk Seviyesi',
                'Orta',
                Colors.orange,
              ),
              const SizedBox(height: 16),
              // View details button
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.visibility_outlined,
                      size: 16,
                      color: Colors.orange.shade300,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Detayları Görüntüle',
                      style: TextStyle(
                        color: Colors.orange.shade300,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String title, String value, Color color) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
          color: color.withOpacity(0.7),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  IconData _getIconForTool(String toolName) {
    switch (toolName.toLowerCase()) {
      case 'taş makinesi':
        return Icons.construction;
      case 'kaynak makinesi':
        return Icons.local_fire_department;
      case 'forklift':
        return Icons.precision_manufacturing;
      case 'matkap':
        return Icons.build;
      case 'kompresör':
        return Icons.air;
      case 'torna tezgahı':
        return Icons.settings_applications;
      case 'vinç':
        return Icons.engineering;
      case 'cnc freze':
        return Icons.precision_manufacturing_outlined;
      default:
        return Icons.build_circle;
    }
  }
} 