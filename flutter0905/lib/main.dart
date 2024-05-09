import 'package:flutter/material.dart';

void main() {
  runApp(const DrawerApp());
}

class DrawerApp extends StatelessWidget {
  const DrawerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const DrawerExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DrawerExample extends StatefulWidget {
  const DrawerExample({super.key});

  @override
  State<DrawerExample> createState() => _DrawerExampleState();
}

class _DrawerExampleState extends State<DrawerExample> {
  String selectedPage = '';
  final TextEditingController email = new TextEditingController();
  final TextEditingController senha = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EventEasy',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 87, 19, 143),
        centerTitle: true,
        toolbarHeight: 85,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 87, 19, 143),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                setState(() {
                  selectedPage = 'Home';
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Ajuda'),
              onTap: () {
                setState(() {
                  selectedPage = 'Ajuda';
                });
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: email,
            decoration: InputDecoration(labelText: "Email: "),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: senha,
            decoration: InputDecoration(labelText: "Senha: "),
            obscureText: true,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: (){
            String e = email.text;
            String s = senha.text;
            print("seu email é: $e, e sua senha é: $s ");
          },
          child: Text("Enviar")),
        ],
      ),
    );
  }
}
