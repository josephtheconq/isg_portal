import 'package:flutter/material.dart';
import '../models/tool.dart';

class ToolDetailScreen extends StatelessWidget {
  final Tool tool;

  const ToolDetailScreen({
    super.key,
    required this.tool,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212332),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2A2D3E),
        elevation: 0,
        title: Text(
          tool.name,
          style: const TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section with Icon
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF2A2D3E),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      _getIconForTool(tool.name),
                      size: 48,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    tool.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  // Quick Info Cards
                  Row(
                    children: [
                      Expanded(
                        child: _buildQuickInfoCard(
                          'Güvenlik Seviyesi',
                          'Yüksek Risk',
                          Icons.warning_amber_rounded,
                          Colors.red,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _buildQuickInfoCard(
                          'Eğitim Gerekli',
                          'Zorunlu',
                          Icons.school,
                          Colors.blue,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _buildQuickInfoCard(
                          'Bakım Durumu',
                          'Güncel',
                          Icons.check_circle,
                          Colors.green,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Content Sections
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Usage Instructions Section
                  _buildSection(
                    title: 'Kullanım Talimatları',
                    icon: Icons.list_alt,
                    content: tool.description,
                    color: Colors.blue,
                  ),
                  const SizedBox(height: 24),
                  // Safety Warnings Section
                  _buildSection(
                    title: 'Güvenlik Uyarıları',
                    icon: Icons.warning_rounded,
                    content: tool.cautionNotes,
                    color: Colors.red,
                    backgroundColor: Colors.red.withOpacity(0.1),
                  ),
                  const SizedBox(height: 24),
                  // Video Tutorial Section
                  _buildSection(
                    title: 'Video Eğitimi',
                    icon: Icons.play_circle_outline,
                    content: '',
                    color: Colors.orange,
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        margin: const EdgeInsets.only(top: 16),
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.play_circle_outline,
                            size: 64,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickInfoCard(String title, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: color.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              color: Colors.white.withOpacity(0.7),
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required IconData icon,
    required String content,
    required Color color,
    Color? backgroundColor,
    Widget? child,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: backgroundColor ?? const Color(0xFF2A2D3E),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: color.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color, size: 24),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          if (content.isNotEmpty) ...[
            const SizedBox(height: 16),
            Text(
              content,
              style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 14,
                height: 1.6,
              ),
            ),
          ],
          if (child != null) child,
        ],
      ),
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