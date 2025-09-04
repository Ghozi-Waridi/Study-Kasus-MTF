Tentu, ini adalah contoh file `README.md` yang menjelaskan studi kasus tersebut.

-----

# Studi Kasus: Aplikasi Kartu Profil Flutter Sederhana

Proyek ini adalah aplikasi Flutter sederhana yang dibuat sebagai studi kasus untuk mendemonstrasikan konsep-konsep dasar dari bahasa pemrograman Dart dan framework Flutter. Aplikasi ini menampilkan daftar profil pengguna dalam bentuk kartu (cards) vertikal.

## 🎯 Konsep yang Diaplikasikan

Studi kasus ini mengintegrasikan beberapa materi fundamental yang dibahas dalam modul, antara lain:

### Dart

  * [cite\_start]**Null Safety**: Mengelola variabel yang bisa bernilai `null` dengan aman, seperti pada properti `age` yang bersifat opsional[cite: 4, 5, 6, 7].
  * [cite\_start]**Null-Coalescing Operator (`??`)**: Memberikan nilai default untuk variabel yang `null` saat ditampilkan di UI[cite: 12, 13].
  * [cite\_start]**Constructor Parameters**: Menggunakan *named parameters* (`{}`) pada `class` untuk inisialisasi objek yang lebih mudah dibaca dan fleksibel[cite: 18, 25, 26].
  * [cite\_start]**Arrow Function (`=>`)**: Menulis fungsi atau method yang hanya berisi satu baris ekspresi secara lebih ringkas[cite: 27, 28, 29].

### Flutter

  * [cite\_start]**Struktur Dasar Aplikasi**: Menggunakan `MaterialApp` sebagai root widget dan `Scaffold` untuk menyediakan struktur halaman standar[cite: 33, 34, 39, 40].
  * **Widgets**:
      * [cite\_start]`StatelessWidget`: Membangun komponen UI yang tidak memiliki state internal (tidak dapat berubah setelah dibuat)[cite: 50, 53].
      * [cite\_start]`AppBar`: Menampilkan bar di bagian atas layar sebagai judul halaman[cite: 66, 67].
      * [cite\_start]`Text`: Menampilkan teks dengan berbagai gaya[cite: 56, 57].
      * [cite\_start]`Column` & `Row`: Menyusun widget lain secara vertikal dan horizontal[cite: 76, 77].

-----

## ⚙️ Cara Kerja Kode

1.  **`Profile` Class**:

      * Sebuah `class` Dart sederhana dibuat untuk merepresentasikan data profil.
      * [cite\_start]Properti `age` dideklarasikan sebagai `int?` untuk menandakan bahwa nilainya bisa `null` (opsional)[cite: 7].
      * [cite\_start]Constructor menggunakan *named parameter* untuk memudahkan pembuatan objek `Profile`[cite: 25].
      * [cite\_start]Method `getDescription()` ditulis menggunakan *arrow function* untuk mengembalikan status profil secara singkat[cite: 29].

2.  **`MyApp` Widget**:

      * [cite\_start]Ini adalah *root widget* yang menginisialisasi aplikasi menggunakan `MaterialApp`[cite: 33, 36].
      * [cite\_start]`Scaffold` digunakan untuk memberikan struktur dasar halaman, lengkap dengan `AppBar` untuk judul[cite: 39, 44].

3.  **`ProfileList` Widget**:

      * Widget ini bertanggung jawab untuk menampilkan daftar semua kartu profil.
      * [cite\_start]Ia menggunakan `Column` untuk menyusun beberapa `ProfileCard` widget secara vertikal[cite: 77, 79].

4.  **`ProfileCard` Widget**:

      * Ini adalah widget kustom yang dirancang untuk menampilkan informasi satu profil.
      * Widget ini menerima objek `Profile` melalui constructor-nya.
      * Di dalam `build` method, ia menggunakan widget `Column` dan `Text` untuk menampilkan nama, umur, dan status.
      * [cite\_start]Saat menampilkan umur, ia menggunakan *null-coalescing operator (`??`)* untuk menampilkan teks 'Tidak diketahui' jika data `age` ternyata `null`[cite: 13].

-----

## 💻 Kode Sumber Lengkap (`main.dart`)

```dart
import 'package:flutter/material.dart';

// 1. Class Data (Dart)
// Menggunakan null safety dan constructor dengan named parameter
class Profile {
  String name;
  int? age; [cite_start]// Variabel ini bisa bernilai null [cite: 7]
  String status;

  Profile({required this.name, this.age, this.status = 'Active'}); [cite_start]// [cite: 25]

  [cite_start]// Menggunakan arrow function untuk method sederhana [cite: 28, 29]
  String getDescription() => 'Status: $status';
}

// 2. Aplikasi Utama (Flutter)
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    [cite_start]// MaterialApp sebagai widget utama [cite: 33]
    return MaterialApp(
      [cite_start]home: Scaffold( // Scaffold untuk struktur halaman [cite: 39]
        [cite_start]appBar: AppBar( // AppBar untuk judul [cite: 67]
          title: Text('Daftar Profil Pengguna'),
        ),
        body: ProfileList(),
      ),
    );
  }
}

// 3. Widget untuk menampilkan daftar profil
class ProfileList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    [cite_start]// Column untuk menyusun widget secara vertikal [cite: 77]
    return Column(
      children: [
        ProfileCard(profile: Profile(name: 'Alice', age: 30)),
        ProfileCard(profile: Profile(name: 'Bob')), // Contoh dengan data umur null
        ProfileCard(profile: Profile(name: 'Charlie', age: 25, status: 'Inactive')),
      ],
    );
  }
}

// 4. Widget kustom untuk satu kartu profil
class ProfileCard extends StatelessWidget {
  final Profile profile;

  ProfileCard({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        [cite_start]crossAxisAlignment: CrossAxisAlignment.start, // Ratakan teks ke kiri [cite: 83]
        children: [
          Text(
            profile.name,
            [cite_start]style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), // [cite: 62]
          ),
          SizedBox(height: 8), // Memberi sedikit jarak
          [cite_start]// Menggunakan null-coalescing operator (??) [cite: 12, 13]
          Text('Umur: ${profile.age ?? 'Tidak diketahui'}'),
          SizedBox(height: 4),
          Text(profile.getDescription()),
        ],
      ),
    );
  }
}
```

-----

## ▶️ Cara Menjalankan Proyek

1.  Pastikan Anda telah menginstal Flutter SDK.
2.  Salin kode di atas dan simpan dalam sebuah file bernama `main.dart`.
3.  Buka terminal atau command prompt, arahkan ke direktori proyek Anda.
4.  Jalankan perintah: `flutter run`
