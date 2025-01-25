import 'package:flutter/material.dart';
import '../widgets/rules_card.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({super.key});

  void _showRulesDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          constraints: const BoxConstraints(maxWidth: 500),
          decoration: BoxDecoration(
            color: const Color(0xFF2A2D3E),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF2697FF).withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.workspace_premium,
                          color: Color(0xFF2697FF),
                          size: 20,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          title,
                          style: const TextStyle(
                            color: Color(0xFF2697FF),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white, size: 20),
                      onPressed: () => Navigator.of(context).pop(),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.6,
                ),
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    child: Text(
                      content,
                      style: const TextStyle(
                        color: Color(0xFFF9F9FA),
                        fontSize: 13,
                        height: 1.6,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E2C),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'İSG Personel Takip',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            // Çalışan Temsilcisi Section
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 280,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2A2D3E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFA113).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.group,
                              color: Color(0xFFFFA113),
                              size: 16,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Çalışan Temsilcisi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Baş Temsilci',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Mehmet Soğukoğlu',
                        style: TextStyle(
                          color: Color(0xFFF9F9FA),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Temsilciler',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Ömer Dur',
                        style: TextStyle(
                          color: Color(0xFFF9F9FA),
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Yasin Kayar',
                        style: TextStyle(
                          color: Color(0xFFF9F9FA),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                Container(
                  width: 280,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF2A2D3E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFA113).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.business,
                              color: Color(0xFFFFA113),
                              size: 16,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'İşveren Vekili',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Tuncay Doğanay',
                        style: TextStyle(
                          color: Color(0xFFF9F9FA),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Çalışan Temsilcisi Kurallar Section
            const Text(
              'Çalışan Temsilcisi Kurallar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Wrap(
              spacing: 24,
              runSpacing: 24,
              children: [
                SizedBox(
                  width: 300,
                  child: RulesCard(
                    title: 'Çalışan Temsilcisi Adayların Belirlenmesi',
                    subtitle: 'Detaylı bilgi için tıklayınız.',
                    icon: Icons.group_add,
                    onTap: () => _showRulesDialog(
                      context,
                      'Çalışan Temsilcisi Adayların Belirlenmesi',
                      '(1) Çalışan temsilcisinin, işyerinde yetkili sendika bulunmaması halinde çalışanlar arasından seçimle belirlenmesi esastır.\n\n'
                      '(2) Çalışan temsilcisinin seçimle belirlenmesi durumunda çalışan temsilcisi aday başvurularının yapılması için yedi günden az olmamak üzere süre tanınarak işveren tarafından işyerinde ilân edilir.\n\n'
                      '(3) İşyerinde çalışanların aday olabilmeleri için 6 ncı maddedeki kriterleri sağlamaları esastır. Bu kriterleri taşımaları halinde aday olmaları engellenemez.\n\n'
                      '(4) Seçimlerin yapılmasına ilişkin iş ve işlemler için gerekli şartlar sağlanır ve yeterli sayıda personel işveren tarafından görevlendirilir.\n\n'
                      '(5) Aday sayısı işyerinde zorunlu çalışan temsilcisi sayısının üç katından fazla olamaz. Fazla olması halinde çalışan temsilcisi adayları; öğrenim durumu, işyerindeki deneyim süresi ve yaş kriterleri esas alınarak ikinci fıkrada belirtilen sürenin bitiminden itibaren en fazla üç gün içinde işveren tarafından ilân edilir.',
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: RulesCard(
                    title: 'Çalışan Temsilcisinin Nitelikleri',
                    subtitle: 'Detaylı bilgi için tıklayınız.',
                    icon: Icons.verified_user,
                    onTap: () => _showRulesDialog(
                      context,
                      'Çalışan Temsilcisinin Nitelikleri',
                      'Detaylı bilgi burada görüntülenecek.',
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: RulesCard(
                    title: 'Çalışan Temsilcisinin Sayısının Belirlenmesi',
                    subtitle: 'Detaylı bilgi için tıklayınız.',
                    icon: Icons.people,
                    onTap: () => _showRulesDialog(
                      context,
                      'Çalışan Temsilcisinin Sayısının Belirlenmesi',
                      'İşyerinde yetkili sendika bulunmaması halinde;\n\n'
                      '2-50 çalışanı olan işyerlerinde 1,\n'
                      '51-100 çalışanı olan işyerlerinde 2,\n'
                      '101-500 çalışanı olan işyerlerinde 3,\n'
                      '501-1000 çalışanı olan işyerlerinde 4,\n'
                      '1001-2000 çalışanı olan işyerlerinde 5,\n'
                      '2001 ve üzeri çalışanı olan işyerlerinde 6,\n\n'
                      'çalışan temsilcisi görevlendirilir.',
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: RulesCard(
                    title: 'Çalışan Temsilcisinin Eğitimi',
                    subtitle: 'Detaylı bilgi için tıklayınız.',
                    icon: Icons.school,
                    onTap: () => _showRulesDialog(
                      context,
                      'Çalışan Temsilcisinin Eğitimi',
                      'Detaylı bilgi burada görüntülenecek.',
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: RulesCard(
                    title: 'Çalışan Temsilcisinin Görevleri',
                    subtitle: 'Detaylı bilgi için tıklayınız.',
                    icon: Icons.assignment,
                    onTap: () => _showRulesDialog(
                      context,
                      'Çalışan Temsilcisinin Görevleri',
                      'Detaylı bilgi burada görüntülenecek.',
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: RulesCard(
                    title: 'Çalışan Temsilcisinin Seçilme ve Atanma Koşulları',
                    subtitle: 'Detaylı bilgi için tıklayınız.',
                    icon: Icons.how_to_vote,
                    onTap: () => _showRulesDialog(
                      context,
                      'Çalışan Temsilcisinin Seçilme ve Atanma Koşulları',
                      'Detaylı bilgi burada görüntülenecek.',
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: RulesCard(
                    title: 'Çalışan Temsilcisinin Yetki ve Yükümlülüğü',
                    subtitle: 'Detaylı bilgi için tıklayınız.',
                    icon: Icons.gavel,
                    onTap: () => _showRulesDialog(
                      context,
                      'Çalışan Temsilcisinin Yetki ve Yükümlülüğü',
                      'Detaylı bilgi burada görüntülenecek.',
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: RulesCard(
                    title: 'Kayıt',
                    subtitle: 'Detaylı bilgi için tıklayınız.',
                    icon: Icons.edit_document,
                    onTap: () => _showRulesDialog(
                      context,
                      'Kayıt',
                      'Detaylı bilgi burada görüntülenecek.',
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: RulesCard(
                    title: 'Mevcut Seçim ve Atamaların Geçerliliği',
                    subtitle: 'Detaylı bilgi için tıklayınız.',
                    icon: Icons.verified,
                    onTap: () => _showRulesDialog(
                      context,
                      'Mevcut Seçim ve Atamaların Geçerliliği',
                      'Detaylı bilgi burada görüntülenecek.',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
