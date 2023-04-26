import 'package:barberia_parcial/constants.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu, color: kPrimaryColor,),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/profile.jpg"),
              radius: 20,
            ),
          )
        ],
      ),
      body: const Center(
        child: Text("HOLA"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey,),
            label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite,color: Colors.grey,),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add,color: Colors.grey,),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.grey,),
              label: ""
          )
        ],
      ),
    );
  }
}
