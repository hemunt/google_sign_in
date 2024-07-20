import 'package:flutter/material.dart';

class Dashboardscreen extends StatelessWidget {

  final String? name;
  final String? email;

  Dashboardscreen({super.key,this.email,this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: const SizedBox(),
        leadingWidth: 0,
        title: const Text("Welcome!",style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(name ?? "",style: const TextStyle(fontSize: 22,)),
            Text("hemunt@gmail.com" ?? "")
          ],
        ),
      ),
    );
  }
}
