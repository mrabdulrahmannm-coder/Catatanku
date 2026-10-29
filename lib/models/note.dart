import 'package:flutter/material.dart';

// Model ini menyimpan seluruh informasi yang ditampilkan pada sebuah catatan.
class Note {
  // Properti final membuat data catatan tidak berubah setelah objek dibuat.
  final String title;
  final String content;
  final String category;
  final Color accentColor;
  final String colorName;
  final String priority;
  final DateTime createdAt;
  final String date;
  final IconData icon;
  final bool important;

  const Note({
    required this.title,
    this.content = '',
    required this.category,
    required this.accentColor,
    this.colorName = 'Default',
    this.priority = 'Sedang',
    required this.createdAt,
    this.date = '',
    this.icon = Icons.edit_note,
    this.important = false,
  });

  // Getter ini menyediakan nama .color tanpa menggandakan data warna.
  Color get color => accentColor;
}

// Data contoh untuk mengisi tampilan sebelum aplikasi memakai database.
final List<Note> dummyNotes = [
  Note(
    title: 'Ide Aplikasi',
    content: 'Ide untuk membuat aplikasi catatan sederhana dengan fitur kategori, warna, dan prioritas. Aplikasi ini digunakan untuk mencatat ide, rencana, dan hal penting sehari-hari.',
    date: '19 Oktober 2026',
    category: 'Kerja',
    accentColor: const Color(0xFFFBBF24),
    colorName: 'Kuning Surya',
    priority: 'Sedang',
    createdAt: DateTime(2026, 10, 19),
    icon: Icons.lightbulb_outline_rounded,
    important: true,
  ),
  Note(
    title: 'Rencana Mingguan',
    content: 'Mengecek seluruh progress sprint minggu ini.',
    date: '18 Oktober 2026',
    category: 'Kerja',
    accentColor: const Color(0xFF34D399),
    colorName: 'Hijau Mint',
    priority: 'Tinggi',
    createdAt: DateTime(2026, 10, 18),
    icon: Icons.calendar_today_outlined,
  ),
  Note(
    title: 'Catatan Kuliah',
    content: 'Ringkasan materi rekayasa perangkat lunak.',
    date: '17 Oktober 2026',
    category: 'Pribadi',
    accentColor: const Color(0xFFA78BFA),
    colorName: 'Ungu Nocturne',
    priority: 'Sedang',
    createdAt: DateTime(2026, 10, 17),
    icon: Icons.menu_book_outlined,
  ),
  Note(
    title: 'Hal yang Perlu Dibeli',
    content: 'Kopi, perlengkapan kantor, kabel data.',
    date: '16 Oktober 2026',
    category: 'Pribadi',
    accentColor: const Color(0xFFF472B6),
    colorName: 'Merah Muda',
    priority: 'Rendah',
    createdAt: DateTime(2026, 10, 16),
    icon: Icons.shopping_cart_outlined,
  ),
  Note(
    title: 'Jurnal Harian',
    content: 'Evaluasi pencapaian diri hari ini.',
    date: '15 Oktober 2026',
    category: 'Pribadi',
    accentColor: const Color(0xFF60A5FA),
    colorName: 'Biru Langit',
    priority: 'Rendah',
    createdAt: DateTime(2026, 10, 15),
    icon: Icons.favorite_border_rounded,
  ),
];