Tugas: 3 (remedial)
Topik: Sesi 3 - Cross-Site Scripting (XSS)
---
Title: Reflected XSS pada fitur form input username
Description: Terdapat vulnerability dengan menggunakan metode XSS pada input untuk username
Step to Reproduce:
1. Daftar pada halaman [http://http://139.59.126.99/user/register.php](http://157.245.194.94/user/register.php)
2. Isi semua form dengan inputan sebagaimana mestinya.
3. Untuk bagian form username, masukan XSS dengan mengetikkan `<script>alert(1)</script>`, sampai dialihkan ke halaman register berhasil dan kembali ke halaman login.
![tugas3_bug1](https://res.cloudinary.com/vigarp/image/upload/v1664891612/CS-assets/remedial/tugas%203/bug%201/procedure_1_sc2vbl.png)
4. Setelah sampai di halaman login, masukan username dengan menggunakan XSS “<script>alert(1)</script>” (tanpa tanda petik) dan password yang sesuai dengan saat register.

![tugas3_bug1](https://res.cloudinary.com/vigarp/image/upload/v1664891621/CS-assets/remedial/tugas%203/bug%201/procedure_2_sx6xrx.png)
![tugas3_bug1](https://res.cloudinary.com/vigarp/image/upload/v1664891611/CS-assets/remedial/tugas%203/bug%201/procedure_3_bkukad.png)

---

Title: Stored XSS pada fitur tambah data/barang.
Description: Terdapat vulnerability dengan menggunakan metode XSS pada fitur tambah data/barang.

1. Setelah login, masuk ke dashboard user di [http://157.245.194.94/user/dashboard.php](http://157.245.194.94/user/dashboard.php)
2. Klik ke button “Tambah Data” berwarna hijau
![tugas3_bug2](https://res.cloudinary.com/vigarp/image/upload/v1664892354/CS-assets/remedial/tugas%203/bug%202/procedure_1_lwcvph.png)
3. Setelah masuk ke halaman tambah data, masukkan script XSS ke form input “<script>alert(document.cookie)</script>” untuk melihat cookie tersimpan di halaman tersebut“<script>alert(1)</script>” (tanpa tanda petik), sampai dialihkan ke halaman register berhasil dan kembali ke halaman login.
![tugas3_bug2](https://res.cloudinary.com/vigarp/image/upload/v1664892353/CS-assets/remedial/tugas%203/bug%202/procedure_2_nsvzbs.png)
4. Masukkan kuantitas dengan angka sembarang.
5. Klik button “Add Data”.
6. Stored XSS terjadi.
![tugas3_bug2](https://res.cloudinary.com/vigarp/image/upload/v1664892353/CS-assets/remedial/tugas%203/bug%202/procedure_3_jmzutl.png)
---

