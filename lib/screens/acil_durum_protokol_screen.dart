import 'package:flutter/material.dart';
import '../widgets/emergency_team_card.dart';

class AcilDurumProtokolScreen extends StatelessWidget {
  const AcilDurumProtokolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final teams = [
      {
        'name': 'SÖNDÜRME EKİBİ',
        'lead': 'Yusuf Buğra Çelebi',
        'members': [
          'Fadıl Pala',
          'Nehir Ulusoy',
          'Yusuf Buğra Çelebi',
          'İ.Emin Lüleci',
          'Fadıl Pala',
          'Nehir Ulusoy',
        ],
        'duties': '''Yangın Söndürme Ekibinin Görevleri:

• Herhangi bir yangın ve kurtarma olayında paniğe kapılmamalı ve kendisi ile başka bir kişiyi tehlikeye atmadan söndürme ve kurtarma çalışmalarını yapmalıdır.

• Sorumlu bulunduğu alan ve bölümlerde çıkacak yangına derhal müdahale etmeli, yangını söndürmeli ve yayılmasına mani olmalıdır.

Yangın Müdahale Prosedürü:
1. Yangın yerine en yakın yangın söndürücüyü alın
2. Rüzgarı arkanıza alın
3. Cihazın mührünü koparın
4. Cihazın pimini çekin
5. Cihazın hortumundan çıkan kimyasal maddeyi alevin ön ve alt kısmına doğru tutun
6. Alevin önünü orta kısmına doğru söndürerek ilerleyin

Önemli Uyarılar:
• Elektrikli cihaz, kablo, pano, jeneratör vb. elektrik yangınlarında kesinlikle su kullanılmamalı, kuru toz tipi yangın söndürücü kullanılmalıdır.

• Yangın esnasında ve sonrasında yangın ve kurtarma ekip şefinin vereceği emirler yerine getirilmelidir.

Eğitim ve Kontrol Sorumlulukları:
• İşyerinde periyodik olarak düzenlenen yangın eğitimlerine ve tatbikatlarına katılmalıdır.
• İşyerindeki mevcut yangın söndürücüleri sürekli kontrol etmelidir.''',
      },
      {
        'name': 'KURTARMA EKİBİ',
        'lead': 'Yusuf Buğra Çelebi',
        'members': [
          'Fadıl Pala',
          'Nehir Ulusoy',
          'Yusuf Buğra Çelebi',
          'İ.Emin Lüleci',
          'Fadıl Pala',
          'Nehir Ulusoy',
        ],
        'duties': '''Yangın Söndürme Ekibinin Görevleri:

• Herhangi bir yangın ve kurtarma olayında paniğe kapılmamalı ve kendisi ile başka bir kişiyi tehlikeye atmadan söndürme ve kurtarma çalışmalarını yapmalıdır.

• Sorumlu bulunduğu alan ve bölümlerde çıkacak yangına derhal müdahale etmeli, yangını söndürmeli ve yayılmasına mani olmalıdır.

Yangın Müdahale Prosedürü:
1. Yangın yerine en yakın yangın söndürücüyü alın
2. Rüzgarı arkanıza alın
3. Cihazın mührünü koparın
4. Cihazın pimini çekin
5. Cihazın hortumundan çıkan kimyasal maddeyi alevin ön ve alt kısmına doğru tutun
6. Alevin önünü orta kısmına doğru söndürerek ilerleyin

Önemli Uyarılar:
• Elektrikli cihaz, kablo, pano, jeneratör vb. elektrik yangınlarında kesinlikle su kullanılmamalı, kuru toz tipi yangın söndürücü kullanılmalıdır.

• Yangın esnasında ve sonrasında yangın ve kurtarma ekip şefinin vereceği emirler yerine getirilmelidir.

Eğitim ve Kontrol Sorumlulukları:
• İşyerinde periyodik olarak düzenlenen yangın eğitimlerine ve tatbikatlarına katılmalıdır.
• İşyerindeki mevcut yangın söndürücüleri sürekli kontrol etmelidir.''',
      },
      {
        'name': 'KORUMA EKİBİ',
        'lead': 'Yusuf Buğra Çelebi',
        'members': [
          'Fadıl Pala',
          'Nehir Ulusoy',
          'Yusuf Buğra Çelebi',
          'İ.Emin Lüleci',
          'Fadıl Pala',
          'Nehir Ulusoy',
        ],
        'duties': '''Yangın Söndürme Ekibinin Görevleri:

• Herhangi bir yangın ve kurtarma olayında paniğe kapılmamalı ve kendisi ile başka bir kişiyi tehlikeye atmadan söndürme ve kurtarma çalışmalarını yapmalıdır.

• Sorumlu bulunduğu alan ve bölümlerde çıkacak yangına derhal müdahale etmeli, yangını söndürmeli ve yayılmasına mani olmalıdır.

Yangın Müdahale Prosedürü:
1. Yangın yerine en yakın yangın söndürücüyü alın
2. Rüzgarı arkanıza alın
3. Cihazın mührünü koparın
4. Cihazın pimini çekin
5. Cihazın hortumundan çıkan kimyasal maddeyi alevin ön ve alt kısmına doğru tutun
6. Alevin önünü orta kısmına doğru söndürerek ilerleyin

Önemli Uyarılar:
• Elektrikli cihaz, kablo, pano, jeneratör vb. elektrik yangınlarında kesinlikle su kullanılmamalı, kuru toz tipi yangın söndürücü kullanılmalıdır.

• Yangın esnasında ve sonrasında yangın ve kurtarma ekip şefinin vereceği emirler yerine getirilmelidir.

Eğitim ve Kontrol Sorumlulukları:
• İşyerinde periyodik olarak düzenlenen yangın eğitimlerine ve tatbikatlarına katılmalıdır.
• İşyerindeki mevcut yangın söndürücüleri sürekli kontrol etmelidir.''',
      },
      {
        'name': 'İLK YARDIM EKİBİ',
        'lead': 'Yusuf Buğra Çelebi',
        'members': [
          'Fadıl Pala',
          'Nehir Ulusoy',
          'Yusuf Buğra Çelebi',
          'İ.Emin Lüleci',
          'Fadıl Pala',
          'Nehir Ulusoy',
        ],
        'duties': '''Yangın Söndürme Ekibinin Görevleri:

• Herhangi bir yangın ve kurtarma olayında paniğe kapılmamalı ve kendisi ile başka bir kişiyi tehlikeye atmadan söndürme ve kurtarma çalışmalarını yapmalıdır.

• Sorumlu bulunduğu alan ve bölümlerde çıkacak yangına derhal müdahale etmeli, yangını söndürmeli ve yayılmasına mani olmalıdır.

Yangın Müdahale Prosedürü:
1. Yangın yerine en yakın yangın söndürücüyü alın
2. Rüzgarı arkanıza alın
3. Cihazın mührünü koparın
4. Cihazın pimini çekin
5. Cihazın hortumundan çıkan kimyasal maddeyi alevin ön ve alt kısmına doğru tutun
6. Alevin önünü orta kısmına doğru söndürerek ilerleyin

Önemli Uyarılar:
• Elektrikli cihaz, kablo, pano, jeneratör vb. elektrik yangınlarında kesinlikle su kullanılmamalı, kuru toz tipi yangın söndürücü kullanılmalıdır.

• Yangın esnasında ve sonrasında yangın ve kurtarma ekip şefinin vereceği emirler yerine getirilmelidir.

Eğitim ve Kontrol Sorumlulukları:
• İşyerinde periyodik olarak düzenlenen yangın eğitimlerine ve tatbikatlarına katılmalıdır.
• İşyerindeki mevcut yangın söndürücüleri sürekli kontrol etmelidir.''',
      },
      {
        'name': 'DÖKÜNTÜ MÜDAHALE EKİBİ',
        'lead': 'Yusuf Buğra Çelebi',
        'members': [
          'Fadıl Pala',
          'Nehir Ulusoy',
          'Yusuf Buğra Çelebi',
          'İ.Emin Lüleci',
          'Fadıl Pala',
          'Nehir Ulusoy',
        ],
        'duties': '''Yangın Söndürme Ekibinin Görevleri:

• Herhangi bir yangın ve kurtarma olayında paniğe kapılmamalı ve kendisi ile başka bir kişiyi tehlikeye atmadan söndürme ve kurtarma çalışmalarını yapmalıdır.

• Sorumlu bulunduğu alan ve bölümlerde çıkacak yangına derhal müdahale etmeli, yangını söndürmeli ve yayılmasına mani olmalıdır.

Yangın Müdahale Prosedürü:
1. Yangın yerine en yakın yangın söndürücüyü alın
2. Rüzgarı arkanıza alın
3. Cihazın mührünü koparın
4. Cihazın pimini çekin
5. Cihazın hortumundan çıkan kimyasal maddeyi alevin ön ve alt kısmına doğru tutun
6. Alevin önünü orta kısmına doğru söndürerek ilerleyin

Önemli Uyarılar:
• Elektrikli cihaz, kablo, pano, jeneratör vb. elektrik yangınlarında kesinlikle su kullanılmamalı, kuru toz tipi yangın söndürücü kullanılmalıdır.

• Yangın esnasında ve sonrasında yangın ve kurtarma ekip şefinin vereceği emirler yerine getirilmelidir.

Eğitim ve Kontrol Sorumlulukları:
• İşyerinde periyodik olarak düzenlenen yangın eğitimlerine ve tatbikatlarına katılmalıdır.
• İşyerindeki mevcut yangın söndürücüleri sürekli kontrol etmelidir.''',
      },
      {
        'name': 'HABERLEŞME EKİBİ',
        'lead': 'Yusuf Buğra Çelebi',
        'members': [
          'Fadıl Pala',
          'Nehir Ulusoy',
          'Yusuf Buğra Çelebi',
          'İ.Emin Lüleci',
          'Fadıl Pala',
          'Nehir Ulusoy',
        ],
        'duties': '''Yangın Söndürme Ekibinin Görevleri:

• Herhangi bir yangın ve kurtarma olayında paniğe kapılmamalı ve kendisi ile başka bir kişiyi tehlikeye atmadan söndürme ve kurtarma çalışmalarını yapmalıdır.

• Sorumlu bulunduğu alan ve bölümlerde çıkacak yangına derhal müdahale etmeli, yangını söndürmeli ve yayılmasına mani olmalıdır.

Yangın Müdahale Prosedürü:
1. Yangın yerine en yakın yangın söndürücüyü alın
2. Rüzgarı arkanıza alın
3. Cihazın mührünü koparın
4. Cihazın pimini çekin
5. Cihazın hortumundan çıkan kimyasal maddeyi alevin ön ve alt kısmına doğru tutun
6. Alevin önünü orta kısmına doğru söndürerek ilerleyin

Önemli Uyarılar:
• Elektrikli cihaz, kablo, pano, jeneratör vb. elektrik yangınlarında kesinlikle su kullanılmamalı, kuru toz tipi yangın söndürücü kullanılmalıdır.

• Yangın esnasında ve sonrasında yangın ve kurtarma ekip şefinin vereceği emirler yerine getirilmelidir.

Eğitim ve Kontrol Sorumlulukları:
• İşyerinde periyodik olarak düzenlenen yangın eğitimlerine ve tatbikatlarına katılmalıdır.
• İşyerindeki mevcut yangın söndürücüleri sürekli kontrol etmelidir.''',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF212332),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'ISG Personel Takip',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            // Header Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Left side
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Acil Durum Ekipleri',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        _buildTeamLeadInfo(
                          'Acil Durum Sorumlusu',
                          'Yusuf Buğra Çelebi',
                        ),
                        const SizedBox(width: 24),
                        _buildTeamLeadInfo(
                          'Acil Durum Lideri',
                          'İ.Emin Lüleci',
                        ),
                      ],
                    ),
                  ],
                ),
                // Right side
                Padding(
                  padding: const EdgeInsets.only(right: 48.0),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          backgroundColor: const Color(0xFF212332),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            constraints: BoxConstraints(
                              maxHeight: MediaQuery.of(context).size.height * 0.8,
                            ),
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      'İşyerlerinde Acil Durumlar Hakkında Yönetmelik',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.close, color: Colors.white),
                                      onPressed: () => Navigator.of(context).pop(),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(24),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF1E1E2C),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          _buildLawSection(
                                            '1',
                                            'İşveren; işyerlerinde aşağıda yer alan acil durum ekiplerini oluşturur:',
                                            [
                                              'a) Söndürme ekibi.',
                                              'b) Kurtarma ekibi.',
                                              'c) Koruma ekibi.',
                                              'ç) İlk yardım ekibi',
                                            ],
                                          ),
                                          const SizedBox(height: 24),
                                          _buildLawSection(
                                            '3',
                                            'İşveren, birinci fıkrada yer alan ekiplerden söndürme, kurtarma ve koruma ekiplerinin her biri için işyerlerinin tehlike sınıfına göre;',
                                            [
                                              'a) Çok tehlikeli sınıfta yer alan işyerlerinde her 30 çalışana kadar,',
                                              'b) Tehlikeli sınıfta yer alan işyerlerinde her 40 çalışana kadar,',
                                              'c) Az tehlikeli sınıfta yer alan işyerlerinde her 50 çalışana kadar',
                                            ],
                                            'uygun donanıma sahip ve özel eğitimli en az birer çalışanı destek elemanı olarak görevlendirir. Görevlendirme yapılırken (a) bendinde 30 ve katları, (b) bendinde 40 ve katları ve (c) bendinde 50 ve katları dahil edilir. Ekiplerin görevlendirilmesine ilişkin örnek tablo Ek-3\'te yer almaktadır.',
                                          ),
                                          const SizedBox(height: 24),
                                          _buildLawSection(
                                            '4',
                                            '10\'dan az çalışanı olan işyerlerinde; acil durumlara ilişkin ulusal ve yerel kurum ve kuruluşlarla irtibatı sağlamak ve birinci fıkrada yer alan ekiplerden söndürme, kurtarma ve koruma ekiplerinin tamamı için uygun donanıma sahip ve özel eğitimli en az bir çalışanın destek elemanı olarak görevlendirilmesi yeterlidir.',
                                          ),
                                          const SizedBox(height: 24),
                                          _buildLawSection(
                                            '5',
                                            'İşveren, ilk yardım konusunda 29/7/2015 tarihli ve 29429 sayılı Resmi Gazete\'de yayımlanan İlkyardım Yönetmeliği esaslarına göre destek elemanı görevlendirir.',
                                          ),
                                          const SizedBox(height: 24),
                                          _buildLawSection(
                                            '6',
                                            'Her konu için birden fazla çalışanın görevlendirilmesi gereken işyerlerinde bu çalışanlar konularına göre ekipler halinde koordineli olarak görev yapar. Her ekipte bir ekip başı bulunur.',
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
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF373D52),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.info_outline, color: Colors.orange, size: 20),
                          const SizedBox(width: 8),
                          Text(
                            'İşyerlerinde Acil\nDurumlar Hakkında\nYönetmelik',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 12,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            // Employee Count
            Row(
              children: [
                Text(
                  'Güncel İSG Katip Sisteminde Çalışan Sayısı:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  '105',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            // Teams Grid
            LayoutBuilder(
              builder: (context, constraints) {
                final cardWidth = constraints.maxWidth > 1400
                    ? (constraints.maxWidth - 80) / 5
                    : constraints.maxWidth > 1100
                        ? (constraints.maxWidth - 64) / 4
                        : constraints.maxWidth > 800
                            ? (constraints.maxWidth - 48) / 3
                            : constraints.maxWidth > 600
                                ? (constraints.maxWidth - 32) / 2
                                : constraints.maxWidth;

                return Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: teams
                      .map((team) => SizedBox(
                            width: cardWidth,
                            child: EmergencyTeamCard(
                              teamName: team['name'] as String,
                              teamLead: team['lead'] as String,
                              teamMembers: team['members'] as List<String>,
                              duties: team['duties'] as String,
                            ),
                          ))
                      .toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeamLeadInfo(String title, String name) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.person_outline,
            color: Colors.white,
            size: 16,
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLawSection(String number, String mainText, [List<String>? bulletPoints, String? additionalText]) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.white.withOpacity(0.1),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  '($number)',
                  style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  mainText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
          if (bulletPoints != null) ...[
            const SizedBox(height: 16),
            ...bulletPoints.map((point) => Padding(
                  padding: const EdgeInsets.only(left: 32, bottom: 8),
                  child: Text(
                    point,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                )),
          ],
          if (additionalText != null) ...[
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 32),
              child: Text(
                additionalText,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
} 