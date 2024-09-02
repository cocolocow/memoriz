import 'package:flutter/material.dart';
import 'package:memoriz/presentation/create-group/create_group_screen.dart';
import 'package:memoriz/presentation/group/group_screen.dart';
import 'package:memoriz/presentation/groups/groups_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: GroupsScreen(),
        routes: {
          '/create-group': (context) => const CreateGroupScreen(),
          '/group': (context) => const GroupScreen(),
        });
  }
}
