Tugas: 7 (remedial)
Topik: Sesi 7 - Insecure Direct Object References (IDOR) and Host Header Injection
---
Title: IDOR dengan index barang.
Description: Terdapat vulnerability IDOR di fitur edit barang (user) pada URL website.

Step to Reproduce:
1. Login ke halaman user di URL `http://139.59.126.99/user/` menggunakan username `ridone` dan password `password`
![tugas7_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665299540/CS-assets/remedial/tugas%207/bug%201/procedure_1_stqkiv.png)
2. Jika belum ada barang, tambahkan barang dengan fitur `Add Data`, kemudian lihat `id` barang tersebut, di gambar terlihat bahwa dengan ID 10 dan nama barang ialah `tas_ridone`
![tugas7_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665299538/CS-assets/remedial/tugas%207/bug%201/procedure_2_uangpl.png)
3. Logout dari akun `ridone` dan login dengan username `nico` dan password `123456`
![tugas7_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665299539/CS-assets/remedial/tugas%207/bug%201/procedure_3_eskoml.png)
4. Kemudian, jika pada akun Nico belum ada barang, silakan tambahkan barang, pada gambar dibawah bawah, id barang 7 akan diedit dengan fitur edit.
![tugas7_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665299537/CS-assets/remedial/tugas%207/bug%201/procedure_4_zkgpmt.png)
![tugas7_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665299537/CS-assets/remedial/tugas%207/bug%201/procedure_5_cellte.png)
5. Ubah parameter edit barang dari `id=7` menjadi `id=10`, dimana id 10 tersebut merupakan id punya akun `ridone`. Sampai disini terlihat bahwa tidak ada filter otorisasi barang antar user.
![tugas7_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665299537/CS-assets/remedial/tugas%207/bug%201/procedure_6_qhvmzx.png)
6. Ubah barang dengan id 10 tersebut sembarang namun sesuai, dan klik button `Edit Data`
![tugas7_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665299537/CS-assets/remedial/tugas%207/bug%201/procedure_7_t17lpy.png)
7. Login kembali menggunakan akun `ridone`, dan lihat barang dengan id 10 sudah diubah dari akun `nico`
![tugas7_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665299537/CS-assets/remedial/tugas%207/bug%201/procedure_8_xvrcrh.png)
---
