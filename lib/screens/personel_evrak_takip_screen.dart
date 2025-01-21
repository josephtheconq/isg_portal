import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PersonelEvrakTakipScreen extends ConsumerWidget {
  const PersonelEvrakTakipScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: const Color(0xFF212332),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Personel Evrak Takip',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Firmalar',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                _buildCompanyButton(
                  context,
                  'NWG',
                  Icons.workspace_premium,
                  () => context.push('/nwg-pet'),
                ),
                const SizedBox(width: 8),
                _buildCompanyButton(
                  context,
                  'ADECCO',
                  Icons.workspace_premium,
                  () => context.push('/adecco-pet'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCompanyButton(
    BuildContext context,
    String company,
    IconData icon,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF2A2D3E),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.amber,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              company,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
} 