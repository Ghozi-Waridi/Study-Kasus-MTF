/*
* Code ini pastinya error karena tidak berada di 
* folder project flutter dan tidak mendapatkan environment flutter
**/

Code ini pastinya error karena tidak berada di folder project flutter dan tidak mendapatkan environment flutter


import 'package:flutter/material.dart';

void main() {
  runApp(const StudyCase1());
}

class StudyCase1 extends StatefulWidget {
  const StudyCase1({super.key});

  @override
  State<StudyCase1> createState() => _StudyCase1State();
}

class _StudyCase1State extends State<StudyCase1> {
  final TextEditingController _controller = TextEditingController();

  String _name = "Pengguna";
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    print("Build Widget");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Study Case Day-${_counter}")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Selamat Datang ${_name} di Flutter!",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukkan Nama Anda',
                ),
                onChanged: (value) {
                  setState(() {
                    _name = value.isEmpty ? "Pengguna" : value;
                  });
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _counter++;
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
