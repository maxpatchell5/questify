import 'package:flutter/material.dart';

class QuestsScreen extends StatelessWidget {
  const QuestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Quests")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Card(
            child: ListTile(
              leading: Icon(Icons.flag, color: Colors.green),
              title: Text("Defeat 5 Goblins"),
              subtitle: Text("Reward: 50 XP, 10 Gold"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.flag, color: Colors.blue),
              title: Text("Gather Healing Herbs"),
              subtitle: Text("Reward: 30 XP, 5 Gold"),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.flag, color: Colors.orange),
              title: Text("Explore the Dark Forest"),
              subtitle: Text("Reward: 100 XP, 20 Gold"),
            ),
          ),
        ],
      ),
    );
  }
}