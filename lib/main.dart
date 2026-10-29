import 'package:flutter/material.dart';
import 'thema/app_theme.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/add_note_screen.dart';
import 'screens/detail_note_screen.dart';

void main() {
  // Menyiapkan binding Flutter sebelum aplikasi dijalankan.
  WidgetsFlutterBinding.ensureInitialized();
  // runApp memasang widget utama sebagai akar dari seluruh tampilan aplikasi.
  runApp(const CatatanKuApp());
}

class CatatanKuApp extends StatelessWidget {
  const CatatanKuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CatatanKu',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: '/',
      // Named route memudahkan perpindahan halaman menggunakan nama tujuan.
      routes: {
        '/': (_) => const SplashScreen(),
        '/login': (_) => const LoginScreen(),
        '/home': (_) => const HomeScreen(),
        '/add': (_) => const AddNoteScreen(),
        '/detail': (_) => const DetailNoteScreen(),
      },
    );
  }
}