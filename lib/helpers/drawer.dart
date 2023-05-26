import 'package:flutter/material.dart';
import 'package:mycv/Education/education.dart';
import 'package:mycv/ProfessionalExperience/professional_experience.dart';
import 'package:mycv/Projects/projects.dart';
import 'package:mycv/Skills/skills.dart';
import 'package:mycv/utils/style.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 100.0),
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/msj.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/kabag.jpg"),
                radius: 80,
              ),
            ),
          ),
          ListTile(
            title: const Text("Jabatan"),
            leading: const Icon(Icons.work, color: Colors.teal),
            trailing: const Icon(Icons.arrow_right, color: Colors.teal),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProjectsPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Penghargaan"),
            leading: const Icon(Icons.business, color: Colors.teal),
            trailing: const Icon(Icons.arrow_right, color: Colors.teal),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProfessionalExperiencePage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Pendidikan"),
            leading: const Icon(Icons.school, color: Colors.teal),
            trailing: const Icon(Icons.arrow_right, color: Colors.teal),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const EducationPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("Skill"),
            leading: const Icon(Icons.lightbulb, color: Colors.teal),
            trailing: const Icon(Icons.arrow_right, color: Colors.teal),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SkillsPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
