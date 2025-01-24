import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/kpi_table.dart';

// Provider for managing collapse states of tables
final tableCollapseStatesProvider = StateProvider<Map<String, bool>>((ref) => {
  'Çalışma Saatleri': false,
  'Majör Kaza': false,
  'Minör Kaza': false,
  'Kayıp Gün': false,
  'Kaza Sıklık': false,
  'Kaza Ağırlık': false,
});

class KPIScreen extends ConsumerWidget {
  const KPIScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collapseStates = ref.watch(tableCollapseStatesProvider);

    return Scaffold(
      backgroundColor: const Color(0xFF212332),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  'KPI - Anahtar Performans Göstergesi 2025',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 48),
              _buildTableSection('Çalışma Saatleri', context, ref),
              const SizedBox(height: 48),
              _buildTableSection('Majör Kaza', context, ref),
              const SizedBox(height: 48),
              _buildTableSection('Minör Kaza', context, ref),
              const SizedBox(height: 48),
              _buildTableSection('Kayıp Gün', context, ref),
              const SizedBox(height: 48),
              _buildTableSection('Kaza Sıklık', context, ref),
              const SizedBox(height: 48),
              _buildTableSection('Kaza Ağırlık', context, ref),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTableSection(String title, BuildContext context, WidgetRef ref) {
    final collapseStates = ref.watch(tableCollapseStatesProvider);
    final isCollapsed = collapseStates[title] ?? false;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 8),
              IconButton(
                icon: Icon(
                  isCollapsed ? Icons.expand_more : Icons.expand_less,
                  color: Colors.white70,
                ),
                onPressed: () {
                  ref.read(tableCollapseStatesProvider.notifier).state = {
                    ...collapseStates,
                    title: !isCollapsed,
                  };
                },
              ),
            ],
          ),
          const SizedBox(height: 16),
          KPITable(
            isCollapsed: isCollapsed,
            onToggleCollapse: () {
              ref.read(tableCollapseStatesProvider.notifier).state = {
                ...collapseStates,
                title: !isCollapsed,
              };
            },
          ),
        ],
      ),
    );
  }
}   