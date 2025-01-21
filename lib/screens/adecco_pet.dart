import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AdeccoPersonelEvrakTakipScreen extends ConsumerStatefulWidget {
  const AdeccoPersonelEvrakTakipScreen({super.key});

  @override
  ConsumerState<AdeccoPersonelEvrakTakipScreen> createState() => _AdeccoPersonelEvrakTakipScreenState();
}

class _AdeccoPersonelEvrakTakipScreenState extends ConsumerState<AdeccoPersonelEvrakTakipScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212332),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header section
                const Text(
                  'Personel Evrak Takip',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'ADECCO',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 34),
                Row(
                  children: [
                    const Text(
                      'Toplam Kayıtlı Personel',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      '105',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Training status section
                const Text(
                  'Eğitim Durumu',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),
                // Progress cards in a grid
                SizedBox(
                  height: 140,
                  child: Row(
                    children: [
                      Expanded(child: _buildProgressCard('Genel Konular', 0.63, const Color(0xFFFF4081))),
                      const SizedBox(width: 12),
                      Expanded(child: _buildProgressCard('Sağlık Konuları', 0.87, const Color(0xFF4CAF50))),
                      const SizedBox(width: 12),
                      Expanded(child: _buildProgressCard('Teknik Konular', 0.33, const Color(0xFFFF9800))),
                      const SizedBox(width: 12),
                      Expanded(child: _buildProgressCard('Saha Kuralları', 0.87, const Color(0xFF2196F3))),
                      const SizedBox(width: 12),
                      Expanded(child: _buildProgressCard('Atık Yönetimi', 1.0, const Color(0xFF9C27B0))),
                      const SizedBox(width: 12),
                      Expanded(child: _buildProgressCard('Kazaların Duyurulması', 0.63, const Color(0xFFE91E63))),
                      const SizedBox(width: 12),
                      Expanded(child: _buildProgressCard('Çevre Yönetimi', 0.87, const Color(0xFF03A9F4))),
                      const SizedBox(width: 12),
                      Expanded(child: _buildProgressCard('Tatbikatlar', 0.33, const Color(0xFFFF5722))),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                // Search section
                Row(
                  children: [
                    const Text(
                      'Personel Arama',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      height: 32,
                      decoration: BoxDecoration(
                        color: const Color(0xFF373D52),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      constraints: const BoxConstraints(maxWidth: 200),
                      child: TextField(
                        controller: searchController,
                        style: const TextStyle(color: Colors.white, fontSize: 13),
                        decoration: const InputDecoration(
                          hintText: 'Arama',
                          hintStyle: TextStyle(color: Colors.white54, fontSize: 13),
                          prefixIcon: Icon(Icons.search, size: 18, color: Colors.white54),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Personnel table
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 7,
                          child: Container(
                            height: 600,
                            decoration: BoxDecoration(
                              color: const Color(0xFF2A2D3E),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                dividerColor: Colors.white12,
                                dataTableTheme: DataTableThemeData(
                                  headingTextStyle: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  dataTextStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              child: ScrollConfiguration(
                                behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: SingleChildScrollView(
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                        minWidth: MediaQuery.of(context).size.width * 0.6,
                                        minHeight: 600,
                                      ),
                                      child: IntrinsicHeight(
                                        child: DataTable(
                                          border: TableBorder(
                                            horizontalInside: BorderSide(color: Colors.white.withOpacity(0.1)),
                                          ),
                                          columnSpacing: 16,
                                          headingRowHeight: 40,
                                          dataRowHeight: 40,
                                          horizontalMargin: 12,
                                          columns: const [
                                            DataColumn(label: Text('Sicil No')),
                                            DataColumn(label: Text('İsim-Soyisim')),
                                            DataColumn(label: Text('T.C Kimlik')),
                                            DataColumn(label: Text('Cinsiyet')),
                                            DataColumn(label: Text('Görev')),
                                            DataColumn(label: Text('Cep Telefonu No')),
                                            DataColumn(label: Text('Sigorta')),
                                            DataColumn(label: Text('Eğitim')),
                                            DataColumn(label: Text('Çalışabilir')),
                                            DataColumn(label: Text('Görüntüle')),
                                          ],
                                          rows: [
                                            DataRow(cells: [
                                              const DataCell(Text('125468')),
                                              const DataCell(Text('İbrahim Emin Lüleci')),
                                              const DataCell(Text('12345678912')),
                                              const DataCell(Text('Erkek')),
                                              const DataCell(Text('Depo Elemanı')),
                                              const DataCell(Text('+90 507 627 7784')),
                                              DataCell(Icon(Icons.check_circle, color: Colors.green[400], size: 20)),
                                              DataCell(Icon(Icons.star, color: Colors.orange[400], size: 20)),
                                              DataCell(Icon(Icons.check_circle, color: Colors.green[400], size: 20)),
                                              const DataCell(Icon(Icons.visibility_outlined, color: Colors.blue, size: 20)),
                                            ]),
                                            DataRow(cells: [
                                              const DataCell(Text('125469')),
                                              const DataCell(Text('Ahmet Yılmaz')),
                                              const DataCell(Text('12345678913')),
                                              const DataCell(Text('Erkek')),
                                              const DataCell(Text('Güvenlik')),
                                              const DataCell(Text('+90 532 555 4433')),
                                              DataCell(Icon(Icons.check_circle, color: Colors.green[400], size: 20)),
                                              DataCell(Icon(Icons.star_border, color: Colors.orange[400], size: 20)),
                                              DataCell(Icon(Icons.check_circle, color: Colors.green[400], size: 20)),
                                              const DataCell(Icon(Icons.visibility_outlined, color: Colors.blue, size: 20)),
                                            ]),
                                            DataRow(cells: [
                                              const DataCell(Text('125470')),
                                              const DataCell(Text('Ayşe Demir')),
                                              const DataCell(Text('12345678914')),
                                              const DataCell(Text('Kadın')),
                                              const DataCell(Text('Muhasebe')),
                                              const DataCell(Text('+90 535 666 7788')),
                                              DataCell(Icon(Icons.check_circle, color: Colors.green[400], size: 20)),
                                              DataCell(Icon(Icons.star, color: Colors.orange[400], size: 20)),
                                              DataCell(Icon(Icons.check_circle, color: Colors.green[400], size: 20)),
                                              const DataCell(Icon(Icons.visibility_outlined, color: Colors.blue, size: 20)),
                                            ]),
                                            DataRow(cells: [
                                              const DataCell(Text('125471')),
                                              const DataCell(Text('Mehmet Kaya')),
                                              const DataCell(Text('12345678915')),
                                              const DataCell(Text('Erkek')),
                                              const DataCell(Text('Teknisyen')),
                                              const DataCell(Text('+90 542 777 9900')),
                                              DataCell(Icon(Icons.check_circle, color: Colors.green[400], size: 20)),
                                              DataCell(Icon(Icons.star, color: Colors.orange[400], size: 20)),
                                              DataCell(Icon(Icons.warning_amber, color: Colors.orange[400], size: 20)),
                                              const DataCell(Icon(Icons.visibility_outlined, color: Colors.blue, size: 20)),
                                            ]),
                                            DataRow(cells: [
                                              const DataCell(Text('125472')),
                                              const DataCell(Text('Zeynep Şahin')),
                                              const DataCell(Text('12345678916')),
                                              const DataCell(Text('Kadın')),
                                              const DataCell(Text('İK Uzmanı')),
                                              const DataCell(Text('+90 533 888 1122')),
                                              DataCell(Icon(Icons.warning_amber, color: Colors.orange[400], size: 20)),
                                              DataCell(Icon(Icons.star, color: Colors.orange[400], size: 20)),
                                              DataCell(Icon(Icons.check_circle, color: Colors.green[400], size: 20)),
                                              const DataCell(Icon(Icons.visibility_outlined, color: Colors.blue, size: 20)),
                                            ]),
                                            DataRow(cells: [
                                              const DataCell(Text('125473')),
                                              const DataCell(Text('Can Yıldız')),
                                              const DataCell(Text('12345678917')),
                                              const DataCell(Text('Erkek')),
                                              const DataCell(Text('Forklift Operatörü')),
                                              const DataCell(Text('+90 533 999 4455')),
                                              DataCell(Icon(Icons.check_circle, color: Colors.green[400], size: 20)),
                                              DataCell(Icon(Icons.star, color: Colors.orange[400], size: 20)),
                                              DataCell(Icon(Icons.check_circle, color: Colors.green[400], size: 20)),
                                              const DataCell(Icon(Icons.visibility_outlined, color: Colors.blue, size: 20)),
                                            ]),
                                            DataRow(cells: [
                                              const DataCell(Text('125474')),
                                              const DataCell(Text('Elif Arslan')),
                                              const DataCell(Text('12345678918')),
                                              const DataCell(Text('Kadın')),
                                              const DataCell(Text('Kalite Kontrol')),
                                              const DataCell(Text('+90 542 111 2233')),
                                              DataCell(Icon(Icons.check_circle, color: Colors.green[400], size: 20)),
                                              DataCell(Icon(Icons.star_border, color: Colors.orange[400], size: 20)),
                                              DataCell(Icon(Icons.warning_amber, color: Colors.orange[400], size: 20)),
                                              const DataCell(Icon(Icons.visibility_outlined, color: Colors.blue, size: 20)),
                                            ]),
                                            DataRow(cells: [
                                              const DataCell(Text('125475')),
                                              const DataCell(Text('Burak Öztürk')),
                                              const DataCell(Text('12345678919')),
                                              const DataCell(Text('Erkek')),
                                              const DataCell(Text('Elektrik Teknisyeni')),
                                              const DataCell(Text('+90 535 777 8899')),
                                              DataCell(Icon(Icons.warning_amber, color: Colors.orange[400], size: 20)),
                                              DataCell(Icon(Icons.star, color: Colors.orange[400], size: 20)),
                                              DataCell(Icon(Icons.check_circle, color: Colors.green[400], size: 20)),
                                              const DataCell(Icon(Icons.visibility_outlined, color: Colors.blue, size: 20)),
                                            ]),
                                            DataRow(cells: [
                                              const DataCell(Text('125476')),
                                              const DataCell(Text('Selin Aydın')),
                                              const DataCell(Text('12345678920')),
                                              const DataCell(Text('Kadın')),
                                              const DataCell(Text('İş Güvenliği Uzmanı')),
                                              const DataCell(Text('+90 533 444 5566')),
                                              DataCell(Icon(Icons.check_circle, color: Colors.green[400], size: 20)),
                                              DataCell(Icon(Icons.star, color: Colors.orange[400], size: 20)),
                                              DataCell(Icon(Icons.check_circle, color: Colors.green[400], size: 20)),
                                              const DataCell(Icon(Icons.visibility_outlined, color: Colors.blue, size: 20)),
                                            ]),
                                            DataRow(cells: [
                                              const DataCell(Text('125477')),
                                              const DataCell(Text('Murat Kara')),
                                              const DataCell(Text('12345678921')),
                                              const DataCell(Text('Erkek')),
                                              const DataCell(Text('Bakım Teknisyeni')),
                                              const DataCell(Text('+90 542 333 7788')),
                                              DataCell(Icon(Icons.check_circle, color: Colors.green[400], size: 20)),
                                              DataCell(Icon(Icons.star_border, color: Colors.orange[400], size: 20)),
                                              DataCell(Icon(Icons.warning_amber, color: Colors.orange[400], size: 20)),
                                              const DataCell(Icon(Icons.visibility_outlined, color: Colors.blue, size: 20)),
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Personnel Details Card
                        Expanded(
                          flex: 3,
                          child: Container(
                            height: 600,
                            decoration: BoxDecoration(
                              color: const Color(0xFF2A2D3E),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Personel Bilgileri',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  // Profile Image and Name
                                  Row(
                                    children: [
                                      Container(
                                        width: 48,
                                        height: 48,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey[800],
                                        ),
                                        child: const Icon(
                                          Icons.person_outline,
                                          size: 24,
                                          color: Colors.white54,
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'İ. Emin Lüleci',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'Depo Elemanı',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white70,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),
                                  // Training Progress Bar
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Eğitim Durumu',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            '%78',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.green[400],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 8),
                                      Container(
                                        height: 4,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(2),
                                          child: LinearProgressIndicator(
                                            value: 0.78,
                                            backgroundColor: Colors.white12,
                                            valueColor: AlwaysStoppedAnimation<Color>(Colors.green[400]!),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 16),
                                  // Training Status Grid
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          _buildTrainingRow('Genel Konular', 'Kazaların Duyurulması', true, true),
                                          _buildTrainingRow('Sağlık Konuları', 'Çevre Yönetimi', true, true),
                                          _buildTrainingRow('Teknik Konular', 'Yangın Tatbikatı', true, true),
                                          _buildTrainingRow('Saha Kuralları', 'Doğal Afet Tatbikatı', false, false),
                                          _buildTrainingRow('Atık Yönetimi', '', false, false),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  // Date Information
                                  _buildDateRow('Sağlık Raporu Tarihi:', '27-01-2025', true),
                                  const SizedBox(height: 4),
                                  _buildDateRow('Geçici Görev Tarihi:', '27-01-2025', true),
                                  const SizedBox(height: 16),
                                  // Action Button
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFF4CAF50),
                                        minimumSize: const Size(double.infinity, 36),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(4),
                                        ),
                                      ),
                                      child: const Text(
                                        'Çalışabilir',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrainingRow(String leftText, String rightText, bool leftCompleted, bool rightCompleted) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Expanded(
            child: _buildTrainingItem(leftText, leftCompleted),
          ),
          const SizedBox(width: 16),
          if (rightText.isNotEmpty)
            Expanded(
              child: _buildTrainingItem(rightText, rightCompleted),
            ),
        ],
      ),
    );
  }

  Widget _buildTrainingItem(String text, bool completed) {
    return Row(
      children: [
        Icon(
          completed ? Icons.star : Icons.star_border,
          size: 16,
          color: completed ? Colors.white : Colors.white38,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: completed ? Colors.white : Colors.white38,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateRow(String label, String date, bool isValid) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Text(
              date,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 4),
            Icon(
              Icons.check_circle,
              size: 16,
              color: Colors.green[400],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProgressCard(String title, double progress, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2A2D3E),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 65,
              width: 65,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 65,
                    width: 65,
                    child: CircularProgressIndicator(
                      value: progress,
                      strokeWidth: 6,
                      backgroundColor: Colors.white12,
                      valueColor: AlwaysStoppedAnimation<Color>(color),
                    ),
                  ),
                  Text(
                    '${(progress * 100).toInt()}%',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
            Text(
              '4 saat',
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 