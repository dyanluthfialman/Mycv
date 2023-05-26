import 'package:flutter/material.dart';
import 'package:mycv/helpers/appScaffold.dart';

class ProfessionalExperiencePage extends StatefulWidget {
  const ProfessionalExperiencePage({Key? key}) : super(key: key);

  @override
  State<ProfessionalExperiencePage> createState() =>
      _ProfessionalExperiencePageState();
}

class _ProfessionalExperiencePageState
    extends State<ProfessionalExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Penghargaan',
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: _buildExperienceSection(
                  ' 21 Desember 2018',
                  'Diklatpim III.',
                  '00655/Diklatpim Tk.III/03/3211/Kemendagri/2018 00005721/DIKLATPIM TK.III/3001/011/LAN-Kemendagri/ 2018',
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: _buildExperienceSection(
                  '14 agustus 2021',
                  'Penghargaan Lencana Pancawarsa 1',
                  'Kwarda Gerakan Pramuka Jawa Barat',
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: _buildExperienceSection(
                  '4 Agustus 2020 ',
                  'Satpalancana Karya Satya X Tahun',
                  'Presiden RI',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceSection(
      String duration, String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(duration,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        const SizedBox(height: 8),
        Text(title,
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        const SizedBox(height: 8),
        Text(description),
      ],
    );
  }
}
