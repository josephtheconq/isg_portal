import 'package:flutter/material.dart';

class EmergencyTeamCard extends StatefulWidget {
  final String teamName;
  final String teamLead;
  final List<String> teamMembers;
  final String duties;

  const EmergencyTeamCard({
    Key? key,
    required this.teamName,
    required this.teamLead,
    required this.teamMembers,
    required this.duties,
  }) : super(key: key);

  @override
  State<EmergencyTeamCard> createState() => _EmergencyTeamCardState();
}

class _EmergencyTeamCardState extends State<EmergencyTeamCard> {
 

  IconData _getTeamIcon() {
    switch (widget.teamName) {
      case 'SÖNDÜRME EKİBİ':
        return Icons.local_fire_department;
      case 'KURTARMA EKİBİ':
        return Icons.emergency;
      case 'KORUMA EKİBİ':
        return Icons.security;
      case 'İLK YARDIM EKİBİ':
        return Icons.medical_services;
      case 'DÖKÜNTÜ MÜDAHALE EKİBİ':
        return Icons.cleaning_services;
      case 'HABERLEŞME EKİBİ':
        return Icons.connect_without_contact;
      default:
        return Icons.group;
    }
  }

  Color _getTeamColor() {
    switch (widget.teamName) {
      case 'SÖNDÜRME EKİBİ':
        return const Color(0xFF2697FF);
      case 'KURTARMA EKİBİ':
        return const Color(0xFFFFA113);
      case 'KORUMA EKİBİ':
        return const Color(0xFF26E7A6);
      case 'İLK YARDIM EKİBİ':
        return const Color(0xFFEE2727);
      case 'DÖKÜNTÜ MÜDAHALE EKİBİ':
        return const Color(0xFF2697FF);
      case 'HABERLEŞME EKİBİ':
        return const Color(0xFFFFA113);
      default:
        return const Color(0xFF2697FF);
    }
  }

  @override
  Widget build(BuildContext context) {
    final teamColor = _getTeamColor();
    final teamIcon = _getTeamIcon();

    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2D3E),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Team Header
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: teamColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        teamIcon,
                        color: teamColor,
                        size: 16,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      widget.teamName,
                      style: const TextStyle(
                        color: Color(0xFFF9F9FA),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Team Lead
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: Row(
              children: [
                const Text(
                  'Ekip Başı:',
                  style: TextStyle(
                    color: Color(0xFFF9F9FA),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  widget.teamLead,
                  style: const TextStyle(
                    color: Color(0xFFF9F9FA),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),

          // Team Members
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.teamMembers.length,
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFF3C3F4F),
                      width: 1,
                    ),
                  ),
                ),
                child: Text(
                  widget.teamMembers[index],
                  style: const TextStyle(
                    color: Color(0xFFF9F9FA),
                    fontSize: 12,
                  ),
                ),
              );
            },
          ),

          // Duties Button
          InkWell(
            onTap: () {
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
                        // Dialog Header
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: teamColor.withOpacity(0.1),
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
                                  Icon(teamIcon, color: teamColor, size: 20),
                                  const SizedBox(width: 12),
                                  Text(
                                    '${widget.teamName}nin Görevleri',
                                    style: TextStyle(
                                      color: teamColor,
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
                        // Dialog Content
                        Container(
                          constraints: BoxConstraints(
                            maxHeight: MediaQuery.of(context).size.height * 0.6,
                          ),
                          child: SingleChildScrollView(
                            child: Container(
                              padding: const EdgeInsets.all(24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: widget.duties.split('\n').map((paragraph) {
                                  // Skip empty paragraphs
                                  if (paragraph.trim().isEmpty) return const SizedBox.shrink();
                                  
                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 12.0),
                                    child: Text(
                                      paragraph.trim(),
                                      style: const TextStyle(
                                        color: Color(0xFFF9F9FA),
                                        fontSize: 13,
                                        height: 1.6,
                                        letterSpacing: 0.3,
                                      ),
                                    ),
                                  );
                                }).toList(),
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
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              decoration: const BoxDecoration(
                color: Color(0xFF373D52),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${widget.teamName.toLowerCase()}nin Görevleri',
                    style: const TextStyle(
                      color: Color(0xFFF9F9FA),
                      fontSize: 11,
                    ),
                  ),
                  const Icon(
                    Icons.info_outline,
                    color: Color(0xFFF9F9FA),
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
} 