Tugas: 4 (remedial)
Topik: Sesi 4 - SQL Injection (SQLi)
---
Title: SQL Injection.
Description: Terdapat vulnerability dengan menggunakan SQL Injection pada fitur tambah barang.
Step to Reproduce:
1. Login dengan menggunakan user yang sudah terdaftar
2. IPada halaman dashboard.php, pilih menu/button tambah data dan isikan data barang yang sesuai.
![tugas4_bug1](https://res.cloudinary.com/vigarp/image/upload/v1664893827/CS-assets/remedial/tugas%204/bug%201/procedure_1_xwavow.png)
![tugas4_bug1](https://res.cloudinary.com/vigarp/image/upload/v1664893827/CS-assets/remedial/tugas%204/bug%201/procedure_2_hsp6t4.png)
3. Setelah data barang baru berhasil ditambahkan, edit data barang tersebut sehingga dialihkan ke halaman `edit-data.php?id=x`
![tugas4_bug1](https://res.cloudinary.com/vigarp/image/upload/v1664893827/CS-assets/remedial/tugas%204/bug%201/procedure_3_w8wggg.png)
![tugas4_bug1](https://res.cloudinary.com/vigarp/image/upload/v1664893827/CS-assets/remedial/tugas%204/bug%201/procedure_4_zews7x.png)
4. Pada URL, lakukan balancing SQL dengan sintaks `ORDER BY x` lakukan `ORDER BY` sampai halaman menjadi menjadi putih
![tugas4_bug1](https://res.cloudinary.com/vigarp/image/upload/v1664893827/CS-assets/remedial/tugas%204/bug%201/procedure_5_bzthv9.png)
5. Ditemukan kerentanan SQL balancing dengan sintaks `/user/edit-data.php?id='ORDER by 4-- -` (bahwa hanya terdapat 4 table saja).
![tugas4_bug1](https://res.cloudinary.com/vigarp/image/upload/v1664893827/CS-assets/remedial/tugas%204/bug%201/procedure_6_ickegg.png)
6. Gunakan sintaks `UNION SELECT 1,2,3,4`, dan gunakan di table ke 2 untuk melihat versi database host.
![tugas4_bug1](https://res.cloudinary.com/vigarp/image/upload/v1664893828/CS-assets/remedial/tugas%204/bug%201/procedure_7_vj9je6.png)
7. Concat table-table tersebut untuk melihat isi nama-nama table.
8. Concat kembali berdasarkan field untuk salah satu table saja, seperti user.
![tugas4_bug1](https://res.cloudinary.com/vigarp/image/upload/v1664893828/CS-assets/remedial/tugas%204/bug%201/procedure_8_rvj4t2.png)
---

