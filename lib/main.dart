import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Sederhana',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final _htmlContent = """
  <div style="text-align:center;">
    <h4>Selamat Datang di Universitas Esa Unggul <br>
Program Studi Teknik Informatika - Fakultas Ilmu Komputer</h4>
    <img src='asset:images/farid.jpg' alt="Girl in a jacket"/>
    <p>Nama saya Farid Handoyo.</p>
    <p>NIM saya 20190801256</p>
    <p>Hobby saya bermain futsal</p>
    <p>Pekerjaan saya Pengacara</p>
    <p>Status saya Mahasiswa</p>
  
  </div>
  """;

  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Sederhana'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Html(
            data: _htmlContent,
            style: {
              'h4': Style(color: Colors.black),
              'p': Style(color: Colors.black87, fontSize: FontSize.medium),
            },
          ),
        ),
      ),
    );
  }
}
