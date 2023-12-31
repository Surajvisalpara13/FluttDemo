import 'package:flutter/material.dart';
class homescreen extends StatefulWidget {
  final String emailData;
  final String passworddata;
  const homescreen({super.key, required this.emailData,  required this.passworddata,});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int selectedIndex = 0;
  final widgetOptions = [
     const Column(
      children: [
        Text('Password - '),
        
      ],
    ),
    const Text('Add new beer'),
    const Text('Favourites'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
            },
          ),

        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          widget.emailData.isEmpty?const Text("No Email Found"): Text(widget.emailData),
          widget.passworddata.isEmpty?const Text("No Password Found"): Text(widget.passworddata),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.local_drink), label:"New1"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo),  label:"New2"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label:"New3"),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: onItemTapped,
      ),
    );
  }
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
