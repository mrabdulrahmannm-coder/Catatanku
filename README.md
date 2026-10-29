<<<<<<< HEAD
# CatatanKu

CatatanKu adalah aplikasi pencatatan pribadi berbasis Flutter yang membantu pengguna
menulis, mengelompokkan, mencari, dan mengelola catatan dalam satu tempat.
Aplikasi ini memiliki tampilan yang ringan dan modern dengan fokus pada pengalaman
pengguna yang sederhana.

## Fitur Utama

- **Beranda catatan**
  - Melihat daftar catatan terbaru.
  - Mencari catatan berdasarkan judul.
  - Memfilter catatan berdasarkan kategori.
  - Menandai catatan penting.
- **Tambah catatan**
  - Menulis judul dan isi catatan.
  - Memilih kategori.
  - Memilih warna aksen catatan.
  - Menentukan prioritas.
  - Menampilkan jumlah kata secara langsung.
- **Detail catatan**
  - Membaca isi catatan secara lengkap.
  - Melihat kategori, prioritas, warna, dan tanggal catatan.
- **Arsip**
  - Melihat catatan yang diarsipkan.
  - Memulihkan catatan ke beranda.
  - Menghapus catatan secara permanen.
- **Profil**
  - Melihat ringkasan aktivitas.
  - Mengatur notifikasi dan preferensi aplikasi.
  - Mengaktifkan mode gelap.
  - Keluar dari akun.
- **Tampilan responsif**
  - Menggunakan Material Design.
  - Memakai animasi transisi dan fade pada beberapa halaman.
  - Mendukung font dari Google Fonts.

## Teknologi

- [Flutter](https://flutter.dev/)
- Dart SDK `>=3.0.0 <4.0.0`
- Material Design
- [`google_fonts`](https://pub.dev/packages/google_fonts)

## Struktur Proyek

```text
lib/
├── main.dart
├── models/
│   └── note.dart
├── screens/
│   ├── splash_screen.dart
│   ├── login_screen.dart
│   ├── home_screen.dart
│   ├── add_note_screen.dart
│   ├── detail_note_screen.dart
│   ├── archive_screen.dart
│   └── profile_screen.dart
└── thema/
    └── app_theme.dart

assets/
├── Logo.jpg
└── Gogle.png
```

## Menjalankan Aplikasi

### Prasyarat

Pastikan perangkat sudah memiliki:

- Flutter SDK
- Dart SDK
- Android Studio atau perangkat Android/emulator
- VS Code atau IDE lain yang mendukung Flutter

Periksa instalasi Flutter dengan:

```bash
flutter doctor
```

### Instalasi

1. Masuk ke folder proyek:

   ```bash
   cd D:\ABDUL\xampp\htdocs\catatanku
   ```

2. Unduh dependency:

   ```bash
   flutter pub get
   ```

3. Jalankan aplikasi:

   ```bash
   flutter run
   ```

Untuk menjalankan pada device tertentu:

```bash
flutter devices
flutter run -d <device-id>
```

## Pengujian dan Analisis Kode

Jalankan analisis statis:

```bash
flutter analyze
```

Jalankan pengujian:

```bash
flutter test
```

## Alur Navigasi

Rute utama aplikasi didefinisikan di `lib/main.dart`:

| Rute | Halaman |
| --- | --- |
| `/` | Splash Screen |
| `/login` | Login |
| `/home` | Beranda |
| `/add` | Tambah Catatan |
| `/detail` | Detail Catatan |

Navigasi ke Arsip dan Profil tersedia melalui bottom navigation pada halaman
Beranda.

## Catatan Pengembangan

Saat ini data catatan masih dikelola secara lokal melalui data model dan data
contoh di aplikasi. Integrasi database atau API dapat ditambahkan pada tahap
berikutnya agar catatan tetap tersimpan setelah aplikasi ditutup.

## Lisensi

Proyek ini dibuat untuk kebutuhan pengembangan dan pembelajaran aplikasi
CatatanKu.
=======
# Catatanku
Adalah aplikasi catatan yang saya buat untuk tugas perkuliahan namun saya upgrade menjadi lebih baik
>>>>>>> 53f7d7d33d548c6234854491b09d2e2b47955e94
