import 'package:flutter/material.dart';

class MisafirAtamaScreen extends StatelessWidget {
  const MisafirAtamaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Misafir Eğitim Atama',
            style: TextStyle(
              color: Color(0xFFF9F9FA),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          // Action Buttons as Cards
          Row(
            children: [
              _buildActionCard(
                icon: Icons.add,
                iconColor: Colors.blue,
                title: 'Yeni Kayıt Oluştur',
                subtitle: 'Son İşlemler: 25/01/2025',
                onTap: () => _showCreateRecordDialog(context),
              ),
              const SizedBox(width: 16),
              _buildActionCard(
                icon: Icons.delete_outline,
                iconColor: Colors.red,
                title: 'Kayıt Sil',
                subtitle: 'Son İşlemler: 25/01/2025',
                onTap: () {},
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 20),
          // Search Section
          const Text(
            'Eğitim Kayıtları',
            style: TextStyle(
              color: Color(0xFFF9F9FA),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 150,
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFF1D1B20),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                style: const TextStyle(
                  color: Color(0xFFF9F9FA),
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  hintText: 'Arama',
                  hintStyle: TextStyle(
                    color: const Color(0xFFF9F9FA).withOpacity(0.5),
                    fontSize: 14,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: const Color(0xFFF9F9FA).withOpacity(0.5),
                    size: 20,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Table
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
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Lokasyon',
                          style: TextStyle(
                            color: Color(0xFFF9F9FA),
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Eğitim İsmi',
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
                          'Personel Ad-Soyad',
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
                          'Cep No',
                          style: TextStyle(
                            color: Color(0xFFF9F9FA),
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 100, child: Text(
                        'Detayları Görüntüle',
                        style: TextStyle(
                          color: Color(0xFFF9F9FA),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      )),
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
                          location: 'Borusan Lojistik Ana Merkez A blok',
                          trainingName: 'İş Sağlığı ve Güvenliği Eğitimi',
                          personName: 'Murat Çelik',
                          phoneNumber: '+90 507 627 7764',
                        ),
                        _buildTableRow(
                          location: 'Borusan Lojistik B Blok',
                          trainingName: 'Yüksekte Çalışma Eğitimi',
                          personName: 'Ahmet Yılmaz',
                          phoneNumber: '+90 532 555 4433',
                        ),
                        _buildTableRow(
                          location: 'Borusan Lojistik C Blok',
                          trainingName: 'İlk Yardım Eğitimi',
                          personName: 'Ayşe Kaya',
                          phoneNumber: '+90 505 666 7788',
                        ),
                        _buildTableRow(
                          location: 'Borusan Lojistik D Blok',
                          trainingName: 'Yangın Güvenliği Eğitimi',
                          personName: 'Mehmet Demir',
                          phoneNumber: '+90 533 444 5566',
                        ),
                        _buildTableRow(
                          location: 'Borusan Lojistik E Blok',
                          trainingName: 'Kimyasal Madde Eğitimi',
                          personName: 'Zeynep Yıldız',
                          phoneNumber: '+90 542 333 2211',
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

  Widget _buildActionCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return SizedBox(
      width: 280,
      height: 100,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: BoxDecoration(
              color: const Color(0xFF2A2D3E),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: iconColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        icon,
                        color: iconColor,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              color: Color(0xFFF9F9FA),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            subtitle,
                            style: const TextStyle(
                              color: Color(0xFFF9F9FA),
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTableRow({
    required String location,
    required String trainingName,
    required String personName,
    required String phoneNumber,
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
          Expanded(
            flex: 3,
            child: Text(
              location,
              style: const TextStyle(
                color: Color(0xFFF9F9FA),
                fontSize: 12,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              trainingName,
              style: const TextStyle(
                color: Color(0xFFF9F9FA),
                fontSize: 12,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              personName,
              style: const TextStyle(
                color: Color(0xFFF9F9FA),
                fontSize: 12,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              phoneNumber,
              style: const TextStyle(
                color: Color(0xFFF9F9FA),
                fontSize: 12,
              ),
            ),
          ),
          Container(
            width: 100,
            padding: const EdgeInsets.only(right: 24),
            child: IconButton(
              icon: const Icon(
                Icons.visibility_outlined,
                color: Colors.blue,
                size: 20,
              ),
              onPressed: () {},
              padding: const EdgeInsets.all(8),
              constraints: const BoxConstraints(),
              alignment: Alignment.centerLeft,
            ),
          ),
        ],
      ),
    );
  }

  void _showCreateRecordDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: const Color(0xFF2A2D3E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: 400,
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Misafir Eğitim Atama',
                  style: TextStyle(
                    color: Color(0xFFF9F9FA),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 24),
                _buildFormField('Lokasyon', 'Eğitimin Yapılacağı Lokasyonu Giriniz'),
                const SizedBox(height: 16),
                _buildFormField('Eğitim İsmi', 'Eğitimin Yapılacağı Lokasyonu Giriniz'),
                const SizedBox(height: 16),
                _buildFormField('Personel Ad Soyad', 'Eğitimin Yapılacağı Lokasyonu Giriniz'),
                const SizedBox(height: 16),
                _buildFormField('Cep Telefonu No.', 'Eğitimin Yapılacağı Lokasyonu Giriniz'),
                const SizedBox(height: 16),
                _buildFormField('E-Posta Adresi', 'Eğitimin Yapılacağı Lokasyonu Giriniz'),
                const SizedBox(height: 24),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Gönder',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildFormField(String label, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFFF9F9FA),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 40,
          decoration: BoxDecoration(
            color: const Color(0xFF2A2D3E),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xFFF9F9FA),
              width: 1,
            ),
          ),
          child: Center(
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              style: const TextStyle(
                color: Color(0xFFF9F9FA),
                fontSize: 14,
              ),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(
                  color: const Color(0xFFF9F9FA).withOpacity(0.3),
                  fontSize: 14,
                ),
                border: InputBorder.none,
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
} 