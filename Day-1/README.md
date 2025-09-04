

# Studi Kasus Widget Dasar Flutter: Kartu Profil Pengguna

Proyek ini adalah implementasi dari studi kasus untuk modul pembelajaran widget dasar Flutter. Tujuannya adalah untuk mendemonstrasikan penggunaan beberapa widget fundamental dalam satu komponen UI yang kohesif dan praktis, yaitu sebuah kartu profil pengguna.

## Visual Preview

Berikut adalah tampilan akhir dari komponen Kartu Profil Pengguna yang akan kita buat.

## Konsep dan Widget yang Digunakan

Studi kasus ini secara spesifik menerapkan widget-widget yang telah dibahas dalam modul, antara lain:

  * [cite\_start]**`Container`**: Digunakan sebagai wadah utama kartu untuk mengatur tata letak, dekorasi (seperti bayangan dan sudut membulat), `margin`, dan `padding`[cite: 3].
  * [cite\_start]**`Image`**: Menampilkan gambar profil pengguna yang dimuat dari aset lokal (`assets`)[cite: 14, 23].
  * [cite\_start]**`GestureDetector`**: Membungkus widget `Image` untuk membuatnya interaktif, khususnya untuk mendeteksi gestur ketukan ganda (`onDoubleTap`)[cite: 82, 88].
  * [cite\_start]**`Button`**: Mengimplementasikan tiga jenis tombol berbeda untuk berbagai aksi pengguna[cite: 28]:
      * [cite\_start]`ElevatedButton`: Tombol utama dengan latar belakang yang terangkat[cite: 38].
      * [cite\_start]`TextButton`: Tombol sekunder yang hanya berupa teks[cite: 40].
      * [cite\_start]`IconButton`: Tombol yang hanya menampilkan ikon[cite: 42].
  * **Layout Widgets**: Menggunakan `Column` untuk menyusun elemen secara vertikal dan `Row` untuk menyusun tombol secara horizontal.

-----

## Struktur File Penting

```
.
├── assets
│   └── images
│       └── profile.png     <-- Aset gambar untuk profil
├── lib
│   └── main.dart           <-- File utama untuk menjalankan aplikasi
│   └── user_profile_card.dart <-- Kode widget untuk kartu profil
└── pubspec.yaml            <-- File konfigurasi, tempat mendaftarkan aset
```

## Cara Menjalankan

1.  [cite\_start]**Pastikan Aset Terdaftar**: Buka file `pubspec.yaml` dan pastikan direktori aset Anda sudah ditambahkan di bawah `flutter:` seperti ini[cite: 25]:

    ```yaml
    flutter:
      assets:
        - assets/images/profile.png
    ```

2.  **Pasang Dependensi**: Jalankan perintah berikut di terminal Anda untuk memastikan semua dependensi terpasang.

    ```sh
    flutter pub get
    ```

3.  **Jalankan Aplikasi**: Hubungkan perangkat atau jalankan emulator, lalu jalankan aplikasi dengan perintah:

    ```sh
    flutter run
    ```

-----

## Penjelasan Kode

Widget `UserProfileCard` disusun dengan beberapa lapisan:

1.  **`Container` Utama**: Ini adalah widget terluar yang berfungsi sebagai "kartu". [cite\_start]Properti `decoration` digunakan untuk memberinya `color`, `borderRadius`, dan `boxShadow` agar terlihat menonjol[cite: 9, 10].
2.  **`Column`**: Semua elemen di dalam kartu (gambar, teks, tombol) disusun secara vertikal dari atas ke bawah menggunakan `Column`.
3.  [cite\_start]**`GestureDetector` & `Image`**: Widget `Image.asset` memuat gambar dari direktori lokal[cite: 26]. [cite\_start]Ini dibungkus oleh `GestureDetector` agar dapat merespons aksi `onDoubleTap`[cite: 88, 89], yang akan mencetak pesan ke konsol saat gambar diketuk dua kali.
4.  **`Row` untuk Tombol**: Tiga widget tombol (`ElevatedButton`, `TextButton`, `IconButton`) ditempatkan di dalam `Row` agar tersusun rapi secara horizontal. [cite\_start]Setiap tombol memiliki `onPressed` yang didefinisikan untuk membuatnya aktif dan dapat diklik[cite: 32].

## Tantangan (Eksplorasi Lebih Lanjut)

Untuk memperdalam pemahaman, Anda dapat mencoba tantangan berikut:

  * [cite\_start]Ubah aksi `GestureDetector` dari `onDoubleTap` menjadi `onLongPress`[cite: 89].
  * [cite\_start]Modifikasi tampilan `ElevatedButton` menggunakan parameter `style` untuk mengubah warna latar belakangnya[cite: 35].
  * [cite\_start]Ganti sumber gambar dari `Image.asset` menjadi `Image.network` dan gunakan URL gambar dari internet[cite: 26].
  * Ubah dekorasi `Container` dengan menambahkan `border` di sekelilingnya.
