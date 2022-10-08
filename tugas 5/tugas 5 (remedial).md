Tugas: 5 (remedial)
Topik: Sesi 5 - File Inclusion and CRLF injection
---
Title: File Inclusion.
Description: Terdapat vulnerability file inclusion pada dashboard admin
Step to Reproduce:
1. Lakukan reconnaisance aktif dengan memindai website menggunakan tools dirsearch dan ditemukan direktori administrator.
![tugas5_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665219985/CS-assets/remedial/tugas%205/bug%201/procedure_1_htfjlo.png)
2. Login menggunakan akun admin dengan username `administrator2` dan password `administrator 2`.
![tugas5_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665223555/CS-assets/remedial/tugas%205/bug%201/procedure_3_qtnsoc.png)

3. Setelah itu ke halaman list barang seperti gambar di bawah.
![tugas4_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665223717/CS-assets/remedial/tugas%205/bug%201/procedure_4_wq6znv.png)
4. Pada URL, lakukan pergantian payload dengan mengganti value dari parameter `file=list-barang.php` menjadi `file=/etc/passwd`

5. Ditemukan kerentanan dari file inclusion dengan payload `/etc/passwd` menampilkan konfigurasi sensitif pada website.
![tugas4_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665223858/CS-assets/remedial/tugas%205/bug%201/procedure_5_k1vtub.png)

---


