// ignore_for_file: deprecated_member_use

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const FinalApp());
}

class FinalApp extends StatelessWidget {
  const FinalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UAS',
      theme: ThemeData(
        colorScheme: ColorScheme(
          primary: Colors.indigo,
          onPrimary: Colors.white,
          secondary: Colors.orangeAccent,
          onSecondary: Colors.black,
          brightness: Brightness.light,
          background: Colors.cyan,
          onBackground: Colors.grey, // Required argument added
          surface: Colors.white, // Required argument added
          onSurface: Colors.black, // Required argument added
          error: Colors.red,
          onError: Colors.white,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16.0),
        ),
      ),
      home: const Homefinal(),
    );
  }
}

class Homefinal extends StatefulWidget {
  const Homefinal({super.key});
  @override
  _Homefin createState() => _Homefin();
}

class _Homefin extends State<Homefinal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas UAS P. Mobile'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => Persegi());
                Navigator.push(context, route); // Add your button 1 action here
              },
              child: const SizedBox(
                width: 300, // Set a fixed width for the button
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Hitung Luas Persegi', textScaleFactor: 1.2),
                    Text(
                      'Klik Untuk menghitung Luas Persegi',
                      textScaleFactor: 0.9,
                    ),
                  ],
                ),
              ),
            ),
            Text(' ', textScaleFactor: 0.2),
            ElevatedButton(
              onPressed: () {
                Route route =
                    MaterialPageRoute(builder: (context) => Lingkaran());
                Navigator.push(context, route);
                // Add your button 2 action here
              },
              child: const SizedBox(
                width: 300, // Set a fixed width for the button
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Hitung Luas Lingkaran', textScaleFactor: 1.2),
                    Text('Klik Untuk menghitung Luas Lingkaran',
                        textScaleFactor: 0.9),
                  ],
                ),
              ),
            ),
            Text(' ', textScaleFactor: 0.2),
            ElevatedButton(
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => saya());
                Navigator.push(context, route); // Add your button 3 action here
              },
              child: const SizedBox(
                width: 300, // Set a fixed width for the button
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Profile Developer', textScaleFactor: 1.2),
                    Text('Klik Untuk Melihat Profile Saya',
                        textScaleFactor: 0.9),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Persegi extends StatefulWidget {
  const Persegi({super.key});

  @override
  _Persegisate createState() => _Persegisate();
}

class _Persegisate extends State<Persegi> {
  TextEditingController lengthController = TextEditingController();
  TextEditingController widthController = TextEditingController();
  String hasil = '';

  void hitungluas() {
    double panjang = double.tryParse(lengthController.text) ?? 0.0;
    double lebar = double.tryParse(widthController.text) ?? 0.0;

    double area = panjang * lebar;

    setState(() {
      hasil = 'Hasil dari perhitungan diatas adalah: $area';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perhitungan Luas Persegi'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              ' ',
              textScaleFactor: 1.2,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: lengthController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Masukkan Panjang'),
              ),
            ),
            Text(
              ' ',
              textScaleFactor: 1.2,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: widthController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Masukkan Lebar',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: hitungluas,
              child: Text('Hitung Luas'),
            ),
            Text(
              hasil,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}

class Lingkaran extends StatefulWidget {
  const Lingkaran({super.key});

  @override
  _Lingkaranstate createState() => _Lingkaranstate();
}

class _Lingkaranstate extends State<Lingkaran> {
  TextEditingController controlluas = TextEditingController();
  String hasil = '';

  void hitunglinkaran() {
    double jari2 = double.tryParse(controlluas.text) ?? 0.0;
    double area = pi * pow(jari2, 2);
    String formatnum = area.toStringAsFixed(3);

    setState(() {
      hasil = 'Luas Lingkaran Dengan Jari-Jari $jari2 adalah: $formatnum';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perhitungan Luas Lingkaran'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              ' ',
              textScaleFactor: 1.2,
            ),
            SizedBox(
              width: 300,
              child: TextField(
                controller: controlluas,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Masukkan Jari-Jari Lingkaran',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: hitunglinkaran,
              child: Text('Hitung Luas Lingkaran'),
            ),
            Text(
              hasil,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}

class saya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Saya'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Text(
              ' ',
              textScaleFactor: 1.5,
            ),
            Text(
              'Tentang Saya',
              textAlign: TextAlign.center,
              textScaleFactor: 1.3,
            ),
            Text(' ', textScaleFactor: 0.8),
            Text('Nama : Muhammad Rizkiannur'),
            Text(' ', textScaleFactor: 0.3),
            Text('NPM : 2310020132'),
            Text(' ', textScaleFactor: 0.3),
            Text('Kelas : 5A Nonreg BJM'),
            Text(' ', textScaleFactor: 0.3),
            Text(
              'e-Mail : muhrizkiannur@gmail.com',
            ),
            Text(' ', textScaleFactor: 0.2),
            Text(
              'Alamat : Jl. Simpang Bali No.16 Rt.8',
            ),
            Text(' ', textScaleFactor: 0.2),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
