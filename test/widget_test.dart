// File ini berisi widget test untuk memeriksa tampilan dan alur aplikasi.
//
// Command untuk menjalankan semua test:
// flutter test
//
// Command untuk menjalankan file ini saja:
// flutter test test/widget_test.dart
//
// Command untuk menjalankan test dengan output yang lebih detail:
// flutter test --reporter expanded test/widget_test.dart

// Mengimpor widget Material seperti Text dan aplikasi Flutter.
import 'package:flutter/material.dart';

// Mengimpor API testing Flutter, misalnya testWidgets, expect, dan find.
import 'package:flutter_test/flutter_test.dart';

// Mengimpor widget utama aplikasi dari folder lib.
import 'package:catatanku/main.dart';

// main() adalah titik awal untuk mendefinisikan kumpulan test.
void main() {
  // testWidgets() membuat test yang memiliki akses ke WidgetTester.
  testWidgets('Aplikasi menampilkan splash lalu halaman login',
      (WidgetTester tester) async {
    // pumpWidget() memasang widget CatatanKuApp ke dalam test environment.
    // await digunakan karena Flutter perlu memproses frame secara asynchronous.
    await tester.pumpWidget(const CatatanKuApp());

    // find.text() mencari widget Text berdasarkan isi teksnya.
    // findsOneWidget berarti teks tersebut harus ditemukan tepat satu kali.
    expect(find.text('CatatanKu'), findsOneWidget);

    // Maju 3 detik untuk menjalankan Future.delayed() pada SplashScreen.
    // Setelah durasi ini, aplikasi seharusnya berpindah ke route /login.
    await tester.pump(const Duration(seconds: 3));

    // pump() memproses frame setelah navigasi dilakukan.
    await tester.pump();

    // Memastikan halaman login sudah tampil setelah splash selesai.
    expect(find.text('Selamat Datang !'), findsOneWidget);
    expect(find.text('Masuk ke akun Anda untuk melanjutkan'), findsOneWidget);
  });
}
