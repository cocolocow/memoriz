import 'package:flutter/material.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              GroupCard(),
              GroupCard(),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/create-group');
                },
                child: ClipPath(
                  clipper: ShapeBorderClipper(
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        "Créer un groupe",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
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
}

class GroupCard extends StatelessWidget {
  const GroupCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/group');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            const Icon(Icons.group),
            const SizedBox(
              width: 16,
            ),
            Column(
              children: [
                Text("Nom du groupe"),
                Row(
                  children: [
                    CircleAvatar(
                      child: Text("A"),
                    ),
                    CircleAvatar(
                      child: Text("B"),
                    ),
                    CircleAvatar(
                      child: Text("C"),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
