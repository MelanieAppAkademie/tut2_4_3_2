import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "Melli";

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            spacing: 16,
            children: [
              CircleAvatar(child: Icon(Icons.person)),
              Text("Hello $name"),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            spacing: 16,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Your Balance", style: TextStyle(fontSize: 20)),
                      Text("\$25,000.20", style: TextStyle(fontSize: 40)),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xFFb18deb),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
