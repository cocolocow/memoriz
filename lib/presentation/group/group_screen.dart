import 'package:flutter/material.dart';

class GroupScreen extends StatelessWidget {
  const GroupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenir la largeur de l'écran
    double screenWidth = MediaQuery.of(context).size.width;
    // Calculer la hauteur en fonction de l'aspect ratio désiré (9/16)
    double imageHeight = screenWidth * 16 / 9 - 200;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Nom du groupe"),
          actions: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dernier memoriz",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: imageHeight,
                width: screenWidth,
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
                        // image: DecorationImage(
                        //     image: AssetImage("assets/IMG_6750.jpg"), //TODO put image
                        //     fit: BoxFit.cover),
                        ),
                    padding: const EdgeInsets.all(16),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.deepOrange,
          onPressed: () {},
          label: const Text(
            'Add a memoriz',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          icon: const Icon(Icons.add, color: Colors.white, size: 25),
        ));
  }
}
