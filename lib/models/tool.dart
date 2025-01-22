class Tool {
  final String id;
  final String name;
  final String icon;
  final String description;
  final String cautionNotes;
  final String videoUrl;

  const Tool({
    required this.id,
    required this.name,
    required this.icon,
    required this.description,
    required this.cautionNotes,
    required this.videoUrl,
  });
}

// Sample tools data
final List<Tool> tools = [
  Tool(
    id: '1',
    name: 'Taş Makinesi',
    icon: 'assets/icons/stone_machine.png',
    description: '''
Taş makinesini kullanmak için adımlar:
1. Makineyi düz bir zemine yerleştirin
2. Güvenlik ekipmanlarınızı takın (gözlük, eldiven, maske)
3. Makineyi çalıştırmadan önce kontrol edin
4. Taşı düzgün şekilde yerleştirin
5. İşlem bitince makineyi temizleyin
''',
    cautionNotes: '''
Dikkat Edilmesi Gerekenler:
• Her zaman koruyucu gözlük ve eldiven kullanın
• Makineyi ıslak zeminde kullanmayın
• Düzenli bakım yapın
• Arıza durumunda yetkili servise başvurun
• Çalışma alanını temiz ve düzenli tutun
''',
    videoUrl: 'https://example.com/stone_machine_tutorial',
  ),
  Tool(
    id: '2',
    name: 'Kaynak Makinesi',
    icon: 'assets/icons/welding_machine.png',
    description: '''
Kaynak makinesi kullanım adımları:
1. Kaynak yapılacak alanı temizleyin
2. Tüm güvenlik ekipmanlarını takın
3. Kaynak akımını malzemeye göre ayarlayın
4. Kaynak telini kontrol edin
5. İşlem sonrası soğumaya bırakın
''',
    cautionNotes: '''
Güvenlik Uyarıları:
• Kaynak maskesi ZORUNLUDUR
• Yanıcı maddelerden uzak tutun
• Havalandırması olan alanda çalışın
• Elektrik kaçağına karşı dikkatli olun
• Sıcak yüzeylere dikkat edin
''',
    videoUrl: 'https://example.com/welding_tutorial',
  ),
  Tool(
    id: '3',
    name: 'Forklift',
    icon: 'assets/icons/forklift.png',
    description: '''
Forklift kullanım talimatları:
1. Günlük kontrolleri yapın
2. Emniyet kemerini takın
3. Yükü dengeli şekilde kaldırın
4. Hız limitine uyun
5. Görüş açınızı kontrol edin
''',
    cautionNotes: '''
Önemli Uyarılar:
• Ehliyetsiz kullanım YASAKTIR
• Yük kapasitesini aşmayın
• İnsan taşımak YASAKTIR
• Keskin dönüşlerden kaçının
• Park halinde çatalları yere indirin
''',
    videoUrl: 'https://example.com/forklift_safety',
  ),
  Tool(
    id: '4',
    name: 'Matkap',
    icon: 'assets/icons/drill.png',
    description: '''
Matkap kullanım kılavuzu:
1. Doğru ucu seçin
2. Güvenlik ekipmanlarını takın
3. Malzemeye uygun devir seçin
4. Pilot delik açın
5. Düzenli soğutma yapın
''',
    cautionNotes: '''
Güvenlik Notları:
• Koruyucu gözlük kullanın
• Eldiven takın
• Bol kıyafetlerden kaçının
• Kabloyu kontrol edin
• Çalışma alanını temiz tutun
''',
    videoUrl: 'https://example.com/drill_usage',
  ),
  Tool(
    id: '5',
    name: 'Kompresör',
    icon: 'assets/icons/compressor.png',
    description: '''
Kompresör kullanımı:
1. Yağ seviyesini kontrol edin
2. Hava filtrelerini kontrol edin
3. Basınç ayarını yapın
4. Hortum bağlantılarını kontrol edin
5. Nem boşaltma vanasını kontrol edin
''',
    cautionNotes: '''
Dikkat Edilecekler:
• Basınç göstergesini takip edin
• Hortum kaçaklarını kontrol edin
• Aşırı ısınmaya dikkat edin
• Düzenli bakım yaptırın
• Yağ seviyesini kontrol edin
''',
    videoUrl: 'https://example.com/compressor_manual',
  ),
  Tool(
    id: '6',
    name: 'Torna Tezgahı',
    icon: 'assets/icons/lathe.png',
    description: '''
Torna tezgahı kullanım adımları:
1. İş parçasını sağlam şekilde bağlayın
2. Kesici takımı doğru konumlandırın
3. Devir hızını malzemeye göre ayarlayın
4. Soğutma sıvısını kontrol edin
5. Talaş derinliğini ayarlayın
''',
    cautionNotes: '''
Güvenlik Önlemleri:
• Koruyucu gözlük ZORUNLUDUR
• Eldiven kullanımı YASAKTIR
• Bol kıyafet giymeyin
• Talaş sıçramasına dikkat
• Acil stop butonunu öğrenin
''',
    videoUrl: 'https://example.com/lathe_machine_tutorial',
  ),
  Tool(
    id: '7',
    name: 'Vinç',
    icon: 'assets/icons/crane.png',
    description: '''
Vinç kullanım prosedürü:
1. Günlük kontrolleri yapın
2. Kaldırma kapasitesini kontrol edin
3. Halatları ve kancaları inceleyin
4. Yükü dengeli bağlayın
5. İşaretçi ile koordineli çalışın
''',
    cautionNotes: '''
Kritik Uyarılar:
• Operatör belgesi ZORUNLUDUR
• Yük altında durulması YASAKTIR
• Rüzgar hızını kontrol edin
• El işaretlerini öğrenin
• Yük salınımına dikkat edin
''',
    videoUrl: 'https://example.com/crane_safety',
  ),
  Tool(
    id: '8',
    name: 'CNC Freze',
    icon: 'assets/icons/cnc.png',
    description: '''
CNC Freze kullanım talimatları:
1. Programı kontrol edin
2. Takımları doğru bağlayın
3. Sıfır noktasını ayarlayın
4. Simülasyonu çalıştırın
5. Soğutma sıvısını kontrol edin
''',
    cautionNotes: '''
Önemli Güvenlik Kuralları:
• Kapı kapalı çalıştırın
• Acil durum butonunu öğrenin
• Program değişikliği yapmayın
• Yetkisiz müdahale yasaktır
• Bakım talimatlarına uyun
''',
    videoUrl: 'https://example.com/cnc_milling_guide',
  ),
]; 