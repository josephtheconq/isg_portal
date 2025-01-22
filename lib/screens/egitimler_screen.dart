import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class EgitimlerScreen extends StatelessWidget {
  const EgitimlerScreen({super.key});

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
                  'ISG Eğitim Takip',
                  style: TextStyle(
                    color: Color(0xFFF9F9FA),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Eğitim Raporları',
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
                          title: 'Temel ISG Eğitimleri',
                          icon: Icons.school,
                          iconColor: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _buildCard(
                          title: 'Yüksekte Çalışma',
                          icon: Icons.height,
                          iconColor: Colors.orange,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _buildCard(
                          title: 'İlk Yardım',
                          icon: Icons.medical_services,
                          iconColor: Colors.red,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: _buildCard(
                          title: 'Yangın Eğitimi',
                          icon: Icons.local_fire_department,
                          iconColor: Colors.deepOrange,
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
                      'Son Eğitimler',
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
                            SizedBox(width: 44), // Width for icon
                            Expanded(
                              flex: 3,
                              child: Text(
                                'Eğitim Türü',
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
                                'Katılımcı Sayısı',
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
                                'Eğitmen',
                                style: TextStyle(
                                  color: Color(0xFFF9F9FA),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(width: 40),
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
                                icon: Icons.school,
                                iconColor: Colors.green,
                                type: 'Temel ISG Eğitimi',
                                date: '25-01-2025',
                                participants: '25',
                                trainer: 'Ahmet Yılmaz',
                              ),
                              _buildTableRow(
                                icon: Icons.height,
                                iconColor: Colors.orange,
                                type: 'Yüksekte Çalışma',
                                date: '24-01-2025',
                                participants: '15',
                                trainer: 'Mehmet Demir',
                              ),
                              _buildTableRow(
                                icon: Icons.medical_services,
                                iconColor: Colors.red,
                                type: 'İlk Yardım',
                                date: '23-01-2025',
                                participants: '20',
                                trainer: 'Ayşe Kaya',
                              ),
                              _buildTableRow(
                                icon: Icons.local_fire_department,
                                iconColor: Colors.deepOrange,
                                type: 'Yangın Eğitimi',
                                date: '22-01-2025',
                                participants: '30',
                                trainer: 'Ali Yıldız',
                              ),
                              _buildTableRow(
                                icon: Icons.school,
                                iconColor: Colors.green,
                                type: 'Temel ISG Eğitimi',
                                date: '20-01-2025',
                                participants: '18',
                                trainer: 'Fatma Şahin',
                              ),
                              _buildTableRow(
                                icon: Icons.construction,
                                iconColor: Colors.blue,
                                type: 'İş Makinası Kullanımı',
                                date: '19-01-2025',
                                participants: '12',
                                trainer: 'Osman Kılıç',
                              ),
                              _buildTableRow(
                                icon: Icons.science,
                                iconColor: Colors.purple,
                                type: 'Kimyasal Madde Eğitimi',
                                date: '18-01-2025',
                                participants: '22',
                                trainer: 'Zeynep Yıldırım',
                              ),
                              _buildTableRow(
                                icon: Icons.electrical_services,
                                iconColor: Colors.yellow,
                                type: 'Elektrik Güvenliği',
                                date: '17-01-2025',
                                participants: '16',
                                trainer: 'Can Öztürk',
                              ),
                              _buildTableRow(
                                icon: Icons.health_and_safety,
                                iconColor: Colors.teal,
                                type: 'Kişisel Koruyucu Donanım',
                                date: '16-01-2025',
                                participants: '28',
                                trainer: 'Selin Arslan',
                              ),
                              _buildTableRow(
                                icon: Icons.psychology,
                                iconColor: Colors.pink,
                                type: 'Ergonomi Eğitimi',
                                date: '15-01-2025',
                                participants: '24',
                                trainer: 'Burak Demir',
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
          // Right side (Charts)
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  const SizedBox(height: 85),
                  // Doughnut Chart Container
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
                          'Eğitim Katılım Oranları',
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
                                        value: 40,
                                        color: Colors.green,
                                        title: '40%',
                                        radius: 50,
                                        titleStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFF9F9FA),
                                        ),
                                      ),
                                      PieChartSectionData(
                                        value: 25,
                                        color: Colors.orange,
                                        title: '25%',
                                        radius: 50,
                                        titleStyle: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFF9F9FA),
                                        ),
                                      ),
                                      PieChartSectionData(
                                        value: 20,
                                        color: Colors.red,
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
                                        color: Colors.deepOrange,
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
                                  _buildLegendItem('Temel ISG', Colors.green),
                                  const SizedBox(height: 8),
                                  _buildLegendItem('Yüksekte', Colors.orange),
                                  const SizedBox(height: 8),
                                  _buildLegendItem('İlk Yardım', Colors.red),
                                  const SizedBox(height: 8),
                                  _buildLegendItem('Yangın', Colors.deepOrange),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Progress Chart Container
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
                          'Eğitim Tamamlama Oranı',
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
                              '85%',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              ' Tamamlandı',
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
                              maxY: 100,
                              barTouchData: BarTouchData(enabled: false),
                              titlesData: FlTitlesData(show: false),
                              borderData: FlBorderData(show: false),
                              gridData: FlGridData(show: false),
                              barGroups: [
                                _generateBarGroup(0, 85),
                                _generateBarGroup(1, 75),
                                _generateBarGroup(2, 90),
                                _generateBarGroup(3, 60),
                                _generateBarGroup(4, 95),
                                _generateBarGroup(5, 80),
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
          toY: value,
          color: Colors.green,
          width: 8,
          borderRadius: BorderRadius.circular(2),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 100,
            color: const Color(0xFF2A2D3E),
          ),
        ),
      ],
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
            'Son Eğitim: 25/01/2025',
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
    required String participants,
    required String trainer,
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
              participants,
              style: const TextStyle(
                color: Color(0xFFF9F9FA),
                fontSize: 12,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(
              trainer,
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