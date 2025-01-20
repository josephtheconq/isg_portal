import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class KazalarScreen extends StatelessWidget {
  const KazalarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left side (Cards and Table)
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'ISG Personel Takip',
                  style: TextStyle(
                    color: Color(0xFFF9F9FA),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Kaza Raporları',
                  style: TextStyle(
                    color: Color(0xFFF9F9FA),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
                // Cards Row
                SizedBox(
                  height: 120,
                  child: Row(
                    children: [
                      Expanded(
                        child: _buildCard(
                          title: 'Personel Kazaları',
                          icon: Icons.person,
                          iconColor: Colors.blue,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _buildCard(
                          title: 'Tedarikçi Kazaları',
                          icon: Icons.business,
                          iconColor: Colors.orange,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _buildCard(
                          title: 'Ramak Kala',
                          icon: Icons.warning,
                          iconColor: Colors.lightBlue,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _buildCard(
                          title: 'BOSS',
                          icon: Icons.assignment,
                          iconColor: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Search bar and title
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Son Raporlar',
                      style: TextStyle(
                        color: Color(0xFFF9F9FA),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFF2A2D3E),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        style: const TextStyle(color: Color(0xFFF9F9FA)),
                        decoration: InputDecoration(
                          hintText: 'Ara..',
                          hintStyle: const TextStyle(
                            color: Color(0xFF6E6E6E),
                            fontSize: 14,
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xFF6E6E6E),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // Table Container
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2A2D3E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Table Header
                        const Row(
                          children: [
                            SizedBox(width: 16),
                            SizedBox(width: 44), // Width for icon (8+28+8)
                            Expanded(
                              flex: 3,
                              child: Text(
                                'Rapor Türü',
                                style: TextStyle(
                                  color: Color(0xFFF9F9FA),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Tarih',
                                style: TextStyle(
                                  color: Color(0xFFF9F9FA),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                'Kazazede T.C.',
                                style: TextStyle(
                                  color: Color(0xFFF9F9FA),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                'Olayın Kısa Tanımı',
                                style: TextStyle(
                                  color: Color(0xFFF9F9FA),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(width: 40), // For more options button
                          ],
                        ),
                        const SizedBox(height: 8),
                        Expanded(
                          child: ListView(
                            children: [
                              Container(
                                height: 1,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Color(0xFF3C3F4F),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                              _buildTableRow(
                                icon: Icons.person,
                                iconColor: Colors.blue,
                                type: 'Personel Kazaları',
                                date: '21-01-2025',
                                tc: '12312312312',
                                description: 'Personel merdivenden düş...',
                              ),
                              _buildTableRow(
                                icon: Icons.business,
                                iconColor: Colors.orange,
                                type: 'Tedarikçi Kazaları',
                                date: '21-01-2025',
                                tc: '12312312312',
                                description: 'Personel merdivenden düş...',
                              ),
                              _buildTableRow(
                                icon: Icons.assignment,
                                iconColor: Colors.blue,
                                type: 'BOSS',
                                date: '21-01-2025',
                                tc: '12312312312',
                                description: 'Personel merdivenden düş...',
                              ),
                              _buildTableRow(
                                icon: Icons.warning,
                                iconColor: Colors.lightBlue,
                                type: 'Ramak Kala',
                                date: '21-01-2025',
                                tc: '12312312312',
                                description: 'Personel merdivenden düş...',
                              ),
                              _buildTableRow(
                                icon: Icons.person,
                                iconColor: Colors.blue,
                                type: 'Personel Kazaları',
                                date: '20-01-2025',
                                tc: '98765432109',
                                description: 'İş makinesi operasyon sırasında...',
                              ),
                              _buildTableRow(
                                icon: Icons.business,
                                iconColor: Colors.orange,
                                type: 'Tedarikçi Kazaları',
                                date: '19-01-2025',
                                tc: '45678912345',
                                description: 'Malzeme taşıma esnasında kay...',
                              ),
                              _buildTableRow(
                                icon: Icons.warning,
                                iconColor: Colors.lightBlue,
                                type: 'Ramak Kala',
                                date: '19-01-2025',
                                tc: '78912345678',
                                description: 'Vinç operasyonu sırasında...',
                              ),
                              _buildTableRow(
                                icon: Icons.assignment,
                                iconColor: Colors.blue,
                                type: 'BOSS',
                                date: '18-01-2025',
                                tc: '32165498732',
                                description: 'Elektrik paneli kontrol sıra...',
                              ),
                              _buildTableRow(
                                icon: Icons.person,
                                iconColor: Colors.blue,
                                type: 'Personel Kazaları',
                                date: '18-01-2025',
                                tc: '14725836914',
                                description: 'Kaynak işlemi sırasında yan...',
                              ),
                              _buildTableRow(
                                icon: Icons.warning,
                                iconColor: Colors.lightBlue,
                                type: 'Ramak Kala',
                                date: '17-01-2025',
                                tc: '95175385264',
                                description: 'Forklift manevra alanında te...',
                              ),
                              _buildTableRow(
                                icon: Icons.business,
                                iconColor: Colors.orange,
                                type: 'Tedarikçi Kazaları',
                                date: '17-01-2025',
                                tc: '75395145625',
                                description: 'Yüksekte çalışma esnasında...',
                              ),
                              _buildTableRow(
                                icon: Icons.assignment,
                                iconColor: Colors.blue,
                                type: 'BOSS',
                                date: '16-01-2025',
                                tc: '85296374185',
                                description: 'Kimyasal madde dökülmesi so...',
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
          ),
          // Right side (Chart)
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  const SizedBox(height: 85),
                  // Pie Chart Container (now first)
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2A2D3E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Kaza Dağılımı',
                          style: TextStyle(
                            color: Color(0xFFF9F9FA),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 190,
                          child: Row(
                            children: [
                              Expanded(
                                child: PieChart(
                                  PieChartData(
                                    sectionsSpace: 0,
                                    centerSpaceRadius: 40,
                                    sections: [
                                      PieChartSectionData(
                                        value: 35,
                                        color: const Color(0xFF2697FF),
                                        title: '35%',
                                        radius: 50,
                                        titleStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFF9F9FA),
                                        ),
                                      ),
                                      PieChartSectionData(
                                        value: 30,
                                        color: const Color(0xFFFFA113),
                                        title: '30%',
                                        radius: 50,
                                        titleStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFF9F9FA),
                                        ),
                                      ),
                                      PieChartSectionData(
                                        value: 20,
                                        color: const Color(0xFF26E7A6),
                                        title: '20%',
                                        radius: 50,
                                        titleStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFF9F9FA),
                                        ),
                                      ),
                                      PieChartSectionData(
                                        value: 15,
                                        color: const Color(0xFFEE2727),
                                        title: '15%',
                                        radius: 50,
                                        titleStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFF9F9FA),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildLegendItem('Personel', const Color(0xFF2697FF)),
                                  const SizedBox(height: 8),
                                  _buildLegendItem('Tedarikçi', const Color(0xFFFFA113)),
                                  const SizedBox(height: 8),
                                  _buildLegendItem('Ramak Kala', const Color(0xFF26E7A6)),
                                  const SizedBox(height: 8),
                                  _buildLegendItem('BOSS', const Color(0xFFEE2727)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Bar Chart Container (now second)
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2A2D3E),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Son Raporlar',
                          style: TextStyle(
                            color: Color(0xFFF9F9FA),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '537',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' +25% of target',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 206,
                          child: BarChart(
                            BarChartData(
                              alignment: BarChartAlignment.spaceAround,
                              maxY: 20,
                              barTouchData: BarTouchData(enabled: false),
                              titlesData: FlTitlesData(show: false),
                              borderData: FlBorderData(show: false),
                              gridData: FlGridData(show: false),
                              barGroups: [
                                _generateBarGroup(0, 12),
                                _generateBarGroup(1, 14),
                                _generateBarGroup(2, 8),
                                _generateBarGroup(3, 16),
                                _generateBarGroup(4, 10),
                                _generateBarGroup(5, 18),
                              ],
                            ),
                          ),
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

  BarChartGroupData _generateBarGroup(int x, double value) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: value * 0.4,
          color: const Color(0xFF2697FF),
          width: 8,
          borderRadius: BorderRadius.circular(2),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 20,
            color: const Color(0xFF2A2D3E),
          ),
        ),
        BarChartRodData(
          toY: value * 0.7,
          color: const Color(0xFFFFA113),
          width: 8,
          borderRadius: BorderRadius.circular(2),
        ),
        BarChartRodData(
          toY: value,
          color: const Color(0xFF26E7A6),
          width: 8,
          borderRadius: BorderRadius.circular(2),
        ),
      ],
      barsSpace: 4,
    );
  }

  Widget _buildCard({
    required String title,
    required IconData icon,
    required Color iconColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2D3E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: iconColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 18,
                ),
              ),
              const Icon(
                Icons.more_vert,
                color: Color(0xFFF9F9FA),
                size: 16,
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFFF9F9FA),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'Son Rapor: 21/01/2025',
            style: TextStyle(
              color: Color(0xFFF9F9FA),
              fontSize: 10,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableRow({
    required IconData icon,
    required Color iconColor,
    required String type,
    required String date,
    required String tc,
    required String description,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFF3C3F4F),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: iconColor,
              size: 16,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 3,
            child: Text(
              type,
              style: const TextStyle(
                color: Color(0xFFF9F9FA),
                fontSize: 12,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              date,
              style: const TextStyle(
                color: Color(0xFFF9F9FA),
                fontSize: 12,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              tc,
              style: const TextStyle(
                color: Color(0xFFF9F9FA),
                fontSize: 12,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(
              description,
              style: const TextStyle(
                color: Color(0xFFF9F9FA),
                fontSize: 12,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Color(0xFFF9F9FA),
              size: 16,
            ),
            onPressed: () {},
            padding: const EdgeInsets.all(8),
            constraints: const BoxConstraints(),
          ),
        ],
      ),
    );
  }

  Widget _buildLegendItem(String title, Color color) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFFF9F9FA),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
} 