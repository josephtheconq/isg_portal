import 'package:flutter/material.dart';

class TedarikciDokumanScreen extends StatelessWidget {
  const TedarikciDokumanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Tedarikçi Dökuman',
            style: TextStyle(
              color: Color(0xFFF9F9FA),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          // Tedarikçi Seç Dropdown
          const Text(
            'Tedarikçi Seç',
            style: TextStyle(
              color: Color(0xFFF9F9FA),
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: 150,
            height: 35,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: const Color(0xFF2A2D3E),
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: 'Firma1',
                items: const [
                  DropdownMenuItem(
                    value: 'Firma1',
                    child: Text(
                      'Firma1',
                      style: TextStyle(color: Color(0xFFF9F9FA), fontSize: 13),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Firma2',
                    child: Text(
                      'Firma2',
                      style: TextStyle(color: Color(0xFFF9F9FA), fontSize: 13),
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Firma3',
                    child: Text(
                      'Firma3',
                      style: TextStyle(color: Color(0xFFF9F9FA), fontSize: 13),
                    ),
                  ),
                ],
                onChanged: (value) {},
                dropdownColor: const Color(0xFF2A2D3E),
                icon: const Icon(Icons.arrow_drop_down, color: Color(0xFFF9F9FA), size: 20),
                isExpanded: true,
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Info container and buttons in the same row
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Info container
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tedarikçi Dökuman Bilgileri',
                    style: TextStyle(
                      color: Color(0xFFF9F9FA),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: 400,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2A2D3E),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Lokasyon:',
                                style: TextStyle(
                                  color: Color(0xFFF9F9FA),
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'EPC Depo',
                                style: TextStyle(
                                  color: Color(0xFFF9F9FA),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              const Text(
                                'Personel:',
                                style: TextStyle(
                                  color: Color(0xFFF9F9FA),
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Fıstık Ceviz',
                                style: TextStyle(
                                  color: Color(0xFFF9F9FA),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              const Text(
                                'Açıklama:',
                                style: TextStyle(
                                  color: Color(0xFFF9F9FA),
                                  fontSize: 13,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text(
                                'Lorem Ipsum Dolor Sit Amet',
                                style: TextStyle(
                                  color: Color(0xFFF9F9FA),
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Expanded(
                child: SizedBox(),
              ),
              // Action Buttons
              Padding(
                padding: const EdgeInsets.only(right: 530),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _buildActionButton(
                      icon: Icons.add,
                      label: 'Döküman Ekle',
                      color: Colors.blue,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16),
                    _buildActionButton(
                      icon: Icons.delete_outline,
                      label: 'Seçili Dökümanı Sil',
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Table
          Expanded(
            child: SizedBox(
              width: 1100,
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
                            'Döküman Adı',
                            style: TextStyle(
                              color: Color(0xFFF9F9FA),
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Döküman Geçerlilik Tipi',
                            style: TextStyle(
                              color: Color(0xFFF9F9FA),
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Döküman Geçerlilik Süresi',
                            style: TextStyle(
                              color: Color(0xFFF9F9FA),
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Text(
                            'Detayları Görüntüle',
                            style: TextStyle(
                              color: Color(0xFFF9F9FA),
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            ),
                          ),
                        ),
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
                            documentName: 'Borusan İSG Taahhütnamesi',
                            validityType: 'Süreli',
                            validityPeriod: '1 Yıl',
                          ),
                          _buildTableRow(
                            documentName: 'SGK Giriş Bildirgesi',
                            validityType: 'Süresiz',
                            validityPeriod: '6 Ay',
                          ),
                          _buildTableRow(
                            documentName: 'Sağlık Raporu',
                            validityType: 'Süreli',
                            validityPeriod: '1 Yıl',
                          ),
                          _buildTableRow(
                            documentName: 'Ehliyet',
                            validityType: 'Süresiz',
                            validityPeriod: '6 Ay',
                          ),
                          _buildTableRow(
                            documentName: 'İSG Sertifikaları',
                            validityType: 'Süreli',
                            validityPeriod: '1 Yıl',
                          ),
                          _buildTableRow(
                            documentName: 'KKD Zimmet Tutanağı',
                            validityType: 'Süresiz',
                            validityPeriod: '6 Ay',
                          ),
                          _buildTableRow(
                            documentName: 'PSİKOTEKNİK',
                            validityType: 'Süresiz',
                            validityPeriod: '6 Ay',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(String label, String value) {
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFFF9F9FA),
            fontSize: 13,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          value,
          style: const TextStyle(
            color: Color(0xFFF9F9FA),
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: color),
          ),
          child: Row(
            children: [
              Icon(icon, color: color, size: 18),
              const SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  color: color,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTableRow({
    required String documentName,
    required String validityType,
    required String validityPeriod,
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
              documentName,
              style: const TextStyle(
                color: Color(0xFFF9F9FA),
                fontSize: 11,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              validityType,
              style: const TextStyle(
                color: Color(0xFFF9F9FA),
                fontSize: 11,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              validityPeriod,
              style: const TextStyle(
                color: Color(0xFFF9F9FA),
                fontSize: 11,
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
                size: 18,
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
} 