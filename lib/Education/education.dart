import 'package:flutter/material.dart';
import 'package:mycv/helpers/appScaffold.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Pendidikan',
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Pendidikan',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            _buildEducationItem(
              '1985 - 1991',
              'SDN.Kapten Halim II Pwk',
            ),
            const SizedBox(height: 16.0),
            _buildEducationItem(
              '1991 - 1994',
              'Mts Negeri Pwk',
            ),
            const SizedBox(height: 16.0),
            _buildEducationItem(
              '1994- 1997',
              'MAN Pwk',
            ),
            const SizedBox(height: 16.0),
            _buildEducationItem(
              '1997 - 1998',
              'IAIN Sunan Gunung Jati BDNG',
            ),
            const SizedBox(height: 16.0),
            _buildEducationItem(
              '1998 - 2002',
              'STH Purnawarman PWK',
            ),
            const SizedBox(height: 16.0),
            _buildEducationItem(
              '2019-2021',
              'IPDN',
            ),
            const SizedBox(height: 16.0),
            _buildEducationItem(
              '2016- 2019',
              'S2 STIE IPWIJA',
            ),
            const SizedBox(height: 32.0),
            const Text(
              'SPESIALIS',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            _buildSpecialtiesItem(
              'Computer Engineering',
              'Software Engineering, Decisional Informatics, Web Development, Deep Learning, Entrepreneurial Management',
            ),
            const SizedBox(height: 16.0),
            _buildSpecialtiesItem(
              'Applied Mathematics',
              'Image Processing, Signal Processing, Mathematical Morphology, Pattern Recognition, Audiovisual Production, Telecommunication',
            ),
            const SizedBox(height: 16.0),
            _buildSpecialtiesItem(
              'Mathematics',
              'Probability, Statistics, Scientific Computation and Numerical Methods, Numerical Analysis, Linear Algebra, Integration and Differential Equations',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEducationItem(String duration, String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            duration,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            title,
            style: const TextStyle(fontSize: 16.0, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialtiesItem(String title, String specialties) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.teal,
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            specialties,
            style: const TextStyle(fontSize: 16.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
