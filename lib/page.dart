import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack Grid"),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
          child: GridView.count(
        crossAxisCount: 2,
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.black,
              ),
              Positioned(
                top: 30,
                left: 30,
                height: 150,
                width: 150,
                child: Image.asset('assets/star.jpg'),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: 150,
                width: 150,
                color: Color.fromARGB(255, 2, 2, 2),
              ),
              Positioned(
                top: 30,
                left: 30,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Color.fromARGB(255, 139, 3, 3),
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
