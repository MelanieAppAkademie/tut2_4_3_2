import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(child: Icon(Icons.person)),
              Text("Hello User"),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your Balance"),
                      Text(
                        "\$25,000.20",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  FilledButton(onPressed: () {}, child: Icon(Icons.add)),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFa489d6),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start),
              ),
              Row(
                children: [
                  CircularActions(label: "Wallet", icon: Icon(Icons.wallet)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircularActions extends StatelessWidget {
  final String label;
  final Icon icon;
  const CircularActions({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton.filled(
          onPressed: () {},
          icon: icon,
          iconSize: 40,
          padding: EdgeInsets.all(20),
        ),
        Text(label),
      ],
    );
  }
}
