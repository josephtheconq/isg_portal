import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212332),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFF212332),
              const Color(0xFF212332).withOpacity(0.8),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section with gradient text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [Color(0xFF4A88FF), Color(0xFF7C68EE)],
                        ).createShader(bounds),
                        child: const Text(
                          'ISG Portal Dashboard',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'İş Sağlığı ve Güvenliği Yönetim Sistemi',
                        style: TextStyle(
                          color: Color(0xFFF9F9FA),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  _buildDateTimeWidget(),
                ],
              ),
              const SizedBox(height: 30),

              // Quick Stats Cards with hover effect
              MouseRegion(
                child: Row(
                  children: [
                    Expanded(
                      child: _buildQuickStatCard(
                        'Toplam Personel',
                        '256',
                        Icons.people,
                        [const Color(0xFF4A88FF), const Color(0xFF7C68EE)],
                        () => context.push('/personel-evrak-takip'),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: _buildQuickStatCard(
                        'Aktif Eğitimler',
                        '5',
                        Icons.school,
                        [const Color(0xFF2CD9C5), const Color(0xFF1DC7D9)],
                        () => context.push('/egitimler'),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: _buildQuickStatCard(
                        'Açık Kazalar',
                        '2',
                        Icons.warning_amber,
                        [const Color(0xFFFFB547), const Color(0xFFFF8F00)],
                        () => context.push('/kazalar'),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: _buildQuickStatCard(
                        'Ekipman Sayısı',
                        '48',
                        Icons.build,
                        [const Color(0xFFFF6B8A), const Color(0xFFFF5252)],
                        () => context.push('/toolbox'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Main Content Area
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Section - 70% width
                  Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        _buildRecentActivities(),
                        const SizedBox(height: 20),
                        _buildTrainingProgress(),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  // Right Section - 30% width
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        _buildQuickActions(context),
                        const SizedBox(height: 20),
                        _buildSafetyStats(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDateTimeWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF2A2D3E),
            const Color(0xFF2A2D3E).withOpacity(0.8),
          ],
        ),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(
            Icons.calendar_today,
            color: Color(0xFFF9F9FA),
            size: 16,
          ),
          const SizedBox(width: 8),
          Text(
            DateTime.now().toString().substring(0, 10),
            style: const TextStyle(
              color: Color(0xFFF9F9FA),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickStatCard(
    String title,
    String value,
    IconData icon,
    List<Color> gradientColors,
    VoidCallback onTap,
  ) {
    return MouseRegion(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFF2A2D3E),
                  const Color(0xFF2A2D3E).withOpacity(0.8),
                ],
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            gradientColors[0].withOpacity(0.2),
                            gradientColors[1].withOpacity(0.2),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        icon,
                        color: gradientColors[0],
                        size: 24,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: gradientColors[0].withOpacity(0.5),
                      size: 16,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  value,
                  style: TextStyle(
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: gradientColors,
                      ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  title,
                  style: TextStyle(
                    color: const Color(0xFFF9F9FA).withOpacity(0.7),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRecentActivities() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF2A2D3E),
            const Color(0xFF2A2D3E).withOpacity(0.8),
          ],
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Color(0xFF4A88FF), Color(0xFF7C68EE)],
            ).createShader(bounds),
            child: const Text(
              'Son Aktiviteler',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _buildActivityItem(
            Icons.school,
            'Temel ISG Eğitimi tamamlandı',
            '2 saat önce',
            [const Color(0xFF2CD9C5), const Color(0xFF1DC7D9)],
          ),
          _buildActivityItem(
            Icons.warning,
            'Yeni kaza raporu oluşturuldu',
            '5 saat önce',
            [const Color(0xFFFFB547), const Color(0xFFFF8F00)],
          ),
          _buildActivityItem(
            Icons.build,
            'Yeni ekipman kaydı eklendi',
            '1 gün önce',
            [const Color(0xFF4A88FF), const Color(0xFF7C68EE)],
          ),
        ],
      ),
    );
  }

  Widget _buildActivityItem(
    IconData icon,
    String title,
    String time,
    List<Color> gradientColors,
  ) {
    return MouseRegion(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    gradientColors[0].withOpacity(0.2),
                    gradientColors[1].withOpacity(0.2),
                  ],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: gradientColors[0],
                size: 16,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      foreground: Paint()
                        ..shader = LinearGradient(
                          colors: [
                            const Color(0xFFF9F9FA),
                            const Color(0xFFF9F9FA).withOpacity(0.8),
                          ],
                        ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    time,
                    style: TextStyle(
                      color: const Color(0xFFF9F9FA).withOpacity(0.5),
                      fontSize: 12,
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

  Widget _buildTrainingProgress() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF2A2D3E),
            const Color(0xFF2A2D3E).withOpacity(0.8),
          ],
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Color(0xFF4A88FF), Color(0xFF7C68EE)],
            ).createShader(bounds),
            child: const Text(
              'Eğitim İstatistikleri',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bar Chart - Left side
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Aylık Eğitim Tamamlama Oranları',
                      style: TextStyle(
                        color: Color(0xFFF9F9FA),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: BarChart(
                          BarChartData(
                            alignment: BarChartAlignment.center,
                            maxY: 100,
                            minY: 0,
                            groupsSpace: 25,
                            barTouchData: BarTouchData(
                              enabled: true,
                              touchTooltipData: BarTouchTooltipData(
                                getTooltipItem: (group, groupIndex, rod, rodIndex) {
                                  return BarTooltipItem(
                                    '${rod.toY.round()}%',
                                    const TextStyle(
                                      color: Color(0xFFF9F9FA),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  );
                                },
                              ),
                            ),
                            titlesData: FlTitlesData(
                              show: true,
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 30,
                                  getTitlesWidget: (value, meta) {
                                    const titles = ['Ocak', 'Şubat', 'Mart', 'Nisan', 'Mayıs', 'Haziran'];
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        titles[value.toInt()],
                                        style: TextStyle(
                                          foreground: Paint()
                                            ..shader = const LinearGradient(
                                              colors: [Color(0xFF4A88FF), Color(0xFF7C68EE)],
                                            ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                                          fontSize: 10,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 35,
                                  interval: 20,
                                  getTitlesWidget: (value, meta) {
                                    return Text(
                                      '${value.toInt()}%',
                                      style: TextStyle(
                                        foreground: Paint()
                                          ..shader = const LinearGradient(
                                            colors: [Color(0xFF4A88FF), Color(0xFF7C68EE)],
                                          ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                                        fontSize: 10,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                            ),
                            borderData: FlBorderData(show: false),
                            gridData: FlGridData(
                              show: true,
                              drawVerticalLine: false,
                              horizontalInterval: 20,
                              getDrawingHorizontalLine: (value) {
                                return FlLine(
                                  color: const Color(0xFF4A88FF).withOpacity(0.1),
                                  strokeWidth: 1,
                                );
                              },
                            ),
                            barGroups: [
                              _generateBarGroup(0, 85, [const Color(0xFF4A88FF), const Color(0xFF7C68EE)]),
                              _generateBarGroup(1, 75, [const Color(0xFF2CD9C5), const Color(0xFF1DC7D9)]),
                              _generateBarGroup(2, 90, [const Color(0xFFFFB547), const Color(0xFFFF8F00)]),
                              _generateBarGroup(3, 60, [const Color(0xFFFF6B8A), const Color(0xFFFF5252)]),
                              _generateBarGroup(4, 95, [const Color(0xFF4A88FF), const Color(0xFF7C68EE)]),
                              _generateBarGroup(5, 80, [const Color(0xFF2CD9C5), const Color(0xFF1DC7D9)]),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              // Right side charts
              Expanded(
                child: Column(
                  children: [
                    // Pie Chart
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Eğitim Dağılımı',
                          style: TextStyle(
                            color: Color(0xFFF9F9FA),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 200,
                          child: PieChart(
                            PieChartData(
                              sectionsSpace: 0,
                              centerSpaceRadius: 40,
                              sections: [
                                PieChartSectionData(
                                  value: 35,
                                  color: const Color(0xFF4A88FF),
                                  title: 'ISG',
                                  radius: 50,
                                  titleStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF9F9FA),
                                  ),
                                ),
                                PieChartSectionData(
                                  value: 30,
                                  color: const Color(0xFF2CD9C5),
                                  title: 'Teknik',
                                  radius: 50,
                                  titleStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF9F9FA),
                                  ),
                                ),
                                PieChartSectionData(
                                  value: 20,
                                  color: const Color(0xFFFFB547),
                                  title: 'İlk Yrd',
                                  radius: 50,
                                  titleStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF9F9FA),
                                  ),
                                ),
                                PieChartSectionData(
                                  value: 15,
                                  color: const Color(0xFFFF6B8A),
                                  title: 'Diğer',
                                  radius: 50,
                                  titleStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFFF9F9FA),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Line Chart
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Katılım Trendi',
                          style: TextStyle(
                            color: Color(0xFFF9F9FA),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 200,
                          child: LineChart(
                            LineChartData(
                              gridData: FlGridData(
                                show: true,
                                drawVerticalLine: false,
                                horizontalInterval: 20,
                                getDrawingHorizontalLine: (value) {
                                  return FlLine(
                                    color: const Color(0xFF4A88FF).withOpacity(0.1),
                                    strokeWidth: 1,
                                  );
                                },
                              ),
                              titlesData: FlTitlesData(
                                show: true,
                                rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                leftTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 35,
                                    interval: 20,
                                    getTitlesWidget: (value, meta) {
                                      return Text(
                                        '${value.toInt()}',
                                        style: const TextStyle(
                                          color: Color(0xFFF9F9FA),
                                          fontSize: 10,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(
                                    showTitles: true,
                                    reservedSize: 30,
                                    interval: 1,
                                    getTitlesWidget: (value, meta) {
                                      const titles = ['P', 'S', 'Ç', 'P', 'C', 'C', 'P'];
                                      return Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          titles[value.toInt() % titles.length],
                                          style: const TextStyle(
                                            color: Color(0xFFF9F9FA),
                                            fontSize: 10,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              borderData: FlBorderData(show: false),
                              minX: 0,
                              maxX: 6,
                              minY: 0,
                              maxY: 100,
                              lineBarsData: [
                                LineChartBarData(
                                  spots: const [
                                    FlSpot(0, 45),
                                    FlSpot(1, 60),
                                    FlSpot(2, 80),
                                    FlSpot(3, 75),
                                    FlSpot(4, 85),
                                    FlSpot(5, 70),
                                    FlSpot(6, 90),
                                  ],
                                  isCurved: true,
                                  gradient: const LinearGradient(
                                    colors: [Color(0xFF4A88FF), Color(0xFF7C68EE)],
                                  ),
                                  barWidth: 2,
                                  isStrokeCapRound: true,
                                  dotData: FlDotData(show: false),
                                  belowBarData: BarAreaData(
                                    show: true,
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color(0xFF4A88FF).withOpacity(0.2),
                                        const Color(0xFF7C68EE).withOpacity(0.0),
                                      ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  BarChartGroupData _generateBarGroup(int x, double value, List<Color> gradientColors) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: value,
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
          width: 12,
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

  Widget _buildQuickActions(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF2A2D3E),
            const Color(0xFF2A2D3E).withOpacity(0.8),
          ],
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Color(0xFF4A88FF), Color(0xFF7C68EE)],
            ).createShader(bounds),
            child: const Text(
              'Hızlı Erişim',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _buildQuickActionButton(
            'Acil Durum Protokolü',
            Icons.emergency,
            [const Color(0xFFFF6B8A), const Color(0xFFFF5252)],
            () => context.push('/acil-durum-protokol'),
          ),
          const SizedBox(height: 10),
          _buildQuickActionButton(
            'Yeni Kaza Raporu',
            Icons.report_problem,
            [const Color(0xFFFFB547), const Color(0xFFFF8F00)],
            () => context.push('/kazalar/yeni'),
          ),
          const SizedBox(height: 10),
          _buildQuickActionButton(
            'Eğitim Planla',
            Icons.calendar_today,
            [const Color(0xFF2CD9C5), const Color(0xFF1DC7D9)],
            () => context.push('/egitimler/yeni'),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActionButton(
    String title,
    IconData icon,
    List<Color> gradientColors,
    VoidCallback onTap,
  ) {
    return MouseRegion(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  gradientColors[0].withOpacity(0.1),
                  gradientColors[1].withOpacity(0.1),
                ],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: gradientColors[0],
                  size: 20,
                ),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: TextStyle(
                    foreground: Paint()
                      ..shader = LinearGradient(
                        colors: gradientColors,
                      ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSafetyStats() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF2A2D3E),
            const Color(0xFF2A2D3E).withOpacity(0.8),
          ],
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [Color(0xFF4A88FF), Color(0xFF7C68EE)],
            ).createShader(bounds),
            child: const Text(
              'Güvenlik İstatistikleri',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _buildSafetyStatItem(
            'Kazasız Gün Sayısı',
            '45',
            Icons.verified,
            [const Color(0xFF2CD9C5), const Color(0xFF1DC7D9)],
          ),
          _buildSafetyStatItem(
            'Açık Risk Bildirimi',
            '3',
            Icons.warning,
            [const Color(0xFFFFB547), const Color(0xFFFF8F00)],
          ),
          _buildSafetyStatItem(
            'Aylık Eğitim Saati',
            '24',
            Icons.access_time,
            [const Color(0xFF4A88FF), const Color(0xFF7C68EE)],
          ),
        ],
      ),
    );
  }

  Widget _buildSafetyStatItem(
    String title,
    String value,
    IconData icon,
    List<Color> gradientColors,
  ) {
    return MouseRegion(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    gradientColors[0].withOpacity(0.2),
                    gradientColors[1].withOpacity(0.2),
                  ],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: gradientColors[0],
                size: 16,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: const Color(0xFFF9F9FA).withOpacity(0.7),
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    value,
                    style: TextStyle(
                      foreground: Paint()
                        ..shader = LinearGradient(
                          colors: gradientColors,
                        ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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
} 