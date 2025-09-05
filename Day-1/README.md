# Study Kasus - Day-1 MTF 2025


<br><br>

## 🧑‍💻 Study Kasus 1
Buatlah aplikasi sederhana dengan struktur:
- **MaterialApp** → root aplikasi
- **Scaffold** → struktur halaman utama
  - **AppBar** → judul `"Study Case Day-1"`
  - **Body** → teks `"Selamat Datang di Flutter!"`
  - **FloatingActionButton** → tombol tambah (+)
<br>

**Hasil:**
- Halaman dengan judul AppBar `"Study Case Day-1"`.
- Body menampilkan teks `"Selamat Datang di Flutter!"`.
- Teks Berada di tengah halaman.
- Tombol `+` di pojok kanan bawah.

<br><br>

## 🧑‍💻 Study Kasus 2
Tambahkan inputan dengan menggunakan widget `TextField` untuk memasukkan nama. Jika user tidak memasukkan nama, tampilkan teks default `"Pengguna"`, di atasnya.



**Hasil (misal input kosong):**
```
Pengguna
```

**Hasil (misal input = "Ghozi"):**
```
Ghozi
```

<br><br>


## 🧑‍💻 Study Kasus 3
Gabungkan dua study case sebelumnya, menjadi 1 File
- AppBar bertuliskan `"Study Case Day-1"`
- Body berisi:
  - Teks `"Selamat Datang di Flutter!"`.
  - TextField
- Jika user memasukan nama maka rubah teks `"Selamat Datang ${inputan_user} di Flutter!"`


**Hasil:**
- Halaman dengan judul AppBar `"Study Case Day-1"`.
- Body menampilkan teks `"Selamat Datang di Flutter!"`.
- Teks Berada di tengah halaman.
- Teks bisa berubah sesuai dengan apa yang user inputkan.



<br><br>

## 🧑‍💻 Study Kasus 4

Tambahkan fitur counter untuk menambah nilai dari `"Day-1"`


**Hasil (awalnya):**
```
"Study Case Day-1"
```

**Hasil (setelah menekan tombol + dua kali):**
```
"Study Case Day-2"
```

---
