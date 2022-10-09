Tugas: 10 (remedial)
Topik: Sesi 10 - Bug bounty and pen-test report
---
Title: Rangkuman dalam bentuk report bug bounty and pen-test report

Description: Rangkuman report bug bounty dan pen-test report dari website http://139.59.126.99/


Title: Reflected XSS pada fitur form input username

Description: Terdapat vulnerability dengan menggunakan metode XSS pada input untuk username

CVSS Vector and Score: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:C/C:L/I:N/A:N – 4.1 Medium

Steps to Reproduce & Proof of concept:
1. Daftar pada halaman [http://http://139.59.126.99/user/register.php](http://157.245.194.94/user/register.php)
2. Isi semua form dengan inputan sebagaimana mestinya.
3. Untuk bagian form username, masukan XSS dengan mengetikkan `<script>alert(1)</script>`, sampai dialihkan ke halaman register berhasil dan kembali ke halaman login.
![tugas3_bug1](https://res.cloudinary.com/vigarp/image/upload/v1664891612/CS-assets/remedial/tugas%203/bug%201/procedure_1_sc2vbl.png)
4. Setelah sampai di halaman login, masukan username dengan menggunakan XSS “<script>alert(1)</script>” (tanpa tanda petik) dan password yang sesuai dengan saat register.
![tugas3_bug1](https://res.cloudinary.com/vigarp/image/upload/v1664891621/CS-assets/remedial/tugas%203/bug%201/procedure_2_sx6xrx.png)
![tugas3_bug1](https://res.cloudinary.com/vigarp/image/upload/v1664891611/CS-assets/remedial/tugas%203/bug%201/procedure_3_bkukad.png)

OS and Browser: Kali Linux 2022.3 and Firefox versi 102.2.0esr (64-bit)

Impact:
- Penyerang bisa melakukan penyeludupan cookie user dan atau memasukan script berbahaya.

Remediation:
- Memberikan filter pada user input

References:
- https://www.xptch.my.id/2021/08/reflected-xss-dampak-dan-pengujiannya.html

---
Title: Stored XSS pada fitur tambah data/barang.

Description: Terdapat vulnerability dengan menggunakan metode XSS pada fitur tambah data/barang.

CVSS Vector and Score: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:C/C:L/I:N/A:N – 4.1 Medium

Steps to Reproduce & Proof of concept:
1. Setelah login, masuk ke dashboard user di [http://157.245.194.94/user/dashboard.php](http://157.245.194.94/user/dashboard.php)
2. Klik ke button “Tambah Data” berwarna hijau
![tugas3_bug2](https://res.cloudinary.com/vigarp/image/upload/v1664892354/CS-assets/remedial/tugas%203/bug%202/procedure_1_lwcvph.png)
3. Setelah masuk ke halaman tambah data, masukkan script XSS ke form input “<script>alert(document.cookie)</script>” untuk melihat cookie tersimpan di halaman tersebut“<script>alert(1)</script>” (tanpa tanda petik), sampai dialihkan ke halaman register berhasil dan kembali ke halaman login.
![tugas3_bug2](https://res.cloudinary.com/vigarp/image/upload/v1664892353/CS-assets/remedial/tugas%203/bug%202/procedure_2_nsvzbs.png)
4. Masukkan kuantitas dengan angka sembarang.
5. Klik button “Add Data”.
6. Stored XSS terjadi.
![tugas3_bug2](https://res.cloudinary.com/vigarp/image/upload/v1664892353/CS-assets/remedial/tugas%203/bug%202/procedure_3_jmzutl.png)

OS and Browser: Kali Linux 2022.3 and Firefox versi 102.2.0esr (64-bit)

Impact:
- Penyerang bisa melakukan penyeludupan cookie user dan atau memasukan script berbahaya.

Remediation:
- Memberikan filter pada user input

References:
- https://www.dewaweb.com/blog/apa-itu-xss/

---
Title: SQL Injection.

Description: Terdapat vulnerability dengan menggunakan SQL Injection pada fitur tambah barang.

CVSS Vector and Score: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:C/C:H/I:N/A:N – 6.8 Medium

Steps to Reproduce & Proof of concept:
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

OS and Browser: Kali Linux 2022.3 and Firefox versi 102.2.0esr (64-bit)

Impact:
- Penyerang dapat mengetahui isi database server

Remediation:
- Menggunakan package mysql_escape_string di PHP

References:
- https://portswigger.net/web-security/sql-injection

---
Title: File Inclusion.

Description: Terdapat vulnerability file inclusion pada dashboard admin

CVSS Vector and Score: CVSS:3.1/AV:N/AC:H/PR:H/UI:N/S:C/C:L/I:N/A:N - 3.0 (Low)

Steps to Reproduce & Proof of concept:
1. Lakukan reconnaisance aktif dengan memindai website menggunakan tools dirsearch dan ditemukan direktori administrator.
![tugas5_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665219985/CS-assets/remedial/tugas%205/bug%201/procedure_1_htfjlo.png)
2. Login menggunakan akun admin dengan username `administrator2` dan password `administrator 2`.
![tugas5_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665223555/CS-assets/remedial/tugas%205/bug%201/procedure_3_qtnsoc.png)

3. Setelah itu ke halaman list barang seperti gambar di bawah.
![tugas4_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665223717/CS-assets/remedial/tugas%205/bug%201/procedure_4_wq6znv.png)
4. Pada URL, lakukan pergantian payload dengan mengganti value dari parameter `file=list-barang.php` menjadi `file=/etc/passwd`

5. Ditemukan kerentanan dari file inclusion dengan payload `/etc/passwd` menampilkan konfigurasi sensitif pada website.
![tugas4_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665223858/CS-assets/remedial/tugas%205/bug%201/procedure_5_k1vtub.png)

OS and Browser: Kali Linux 2022.3 and Firefox versi 102.2.0esr (64-bit)

Impact:
- konfigurasi privasi website bisa diketahui penyerang dan bisa disalahgunakan.

Remediation:
- Filter user input
- Tidak menggunakan fungsi include file pada php.

References:
- https://harryadinanta.com/exploitasi/2014/08/08/Local-File-Inclusion

---
Title: CSRF dengan method GET.

Description: Terdapat vulnerability CSRF attack method GET pada fitur hapus barang user.

CVSS Vector and Score: CVSS:3.1/AV:N/AC:H/PR:L/UI:R/S:C/C:L/I:H/A:N - 6.5 (Medium)

Steps to Reproduce & Proof of concept:
1. Login ke halaman user di URL `http://139.59.126.99/user/`
![tugas6_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665227805/CS-assets/remedial/tugas%206/bug%201/procedure_1_kosxpa.png)
2. Jika belum ada barang yang terdaftar, silakan tambah 1 barang yang sesuai dengan fitur tambah data, kemudian kita akan gunakan fitur edit ke salah satu barang/barang yang barusan dibuat.
![tugas6_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665227804/CS-assets/remedial/tugas%206/bug%201/procedure_2_fxfr0t.png)

3. Setelah itu, jangan dahulu mengklik button edit (pada gambar diatas), pertama-tama, toggle intercept on pada aplikasi Burpsuite, kemudian klik button edit pada halaman, dan setelah itu kembali lihat isi payload pada aplikasi Burpsuite.
![tugas6_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665227804/CS-assets/remedial/tugas%206/bug%201/procedure_3_isx9ak.png)
4. Buat sebuah file HTML berisi payload seperti pada gambar.
![tugas6_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665227804/CS-assets/remedial/tugas%206/bug%201/procedure_4_oocg31.png)
5.  Klik button pada payload HTML yang barusan dibuat, dan arahkan kembali ke halaman dashboard user. Maka dengan payload tersebut secara tidak langsung sudah memberi request ke server untuk menghapus barang dengan `id=4` dimana barang tersebut adalah bernama Tas Original.
![tugas6_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665227804/CS-assets/remedial/tugas%206/bug%201/procedure_5_e8iaxr.png)
7. Pada gambar dashboard user diatas, item Tas Ori sudah terhapus dengan file HTML payload tadi.

OS and Browser: Kali Linux 2022.3 and Firefox versi 102.2.0esr (64-bit)

Impact:
- Payload HTML yang dibuat penyerang bisa menghapus data user/korban secara tidak langsung

Remediation:
- Memberikan token CSRF disetiap fungsi website

References:
- https://gudangssl.id/blog/csrf-adalah/
---

Title: CSRF dengan method POST.
Description: Terdapat vulnerability CSRF attack method GET pada fitur hapus barang user.
CVSS Vector and Score: CVSS:3.1/AV:N/AC:H/PR:L/UI:R/S:C/C:L/I:H/A:N - 6.5 (Medium)

Steps to Reproduce & Proof of concept:
1. Login ke halaman `139.59.126.99/administrator/` dan login menggunakan username `administrator2` dan password `administrator2`
![tugas6_bug2](https://res.cloudinary.com/vigarp/image/upload/v1665226279/CS-assets/remedial/tugas%206/bug%202/procedure_1_ztjebq.png)
2. Setelah berada di dashboard administrator, kemudian arahkan ke halaman List News di `http://139.59.126.99/administrator/tables.php?file=list-news.php`
![tugas6_bug2](https://res.cloudinary.com/vigarp/image/upload/v1665226277/CS-assets/remedial/tugas%206/bug%202/procedure_2_bomaew.png)
3. Kemudian buatlah sebuah contoh judul dan deskripsi berita sembarang yang sesuai, namun aktifkan terlebih dahulu intercept pada aplikasi Burpsuite
![tugas6_bug2](https://res.cloudinary.com/vigarp/image/upload/v1665226279/CS-assets/remedial/tugas%206/bug%202/procedure_3_fyytji.png)
4. Klik `Add Data`, lalu lihat kembali ke aplikasi Burpsuite untuk melihat payload request dengan method POST
5. Gunakan tools untuk membuat payload otomatis menggunakan `https://tools.nakanosec.com/csrf/` dan masukan payload request dari aplikasi Burpsuite ke tools tersebut, kemudian beri opsi HTTP dan generate payload tersebut, opsional untuk merubah properti dan value dari `name` dan `value` pada masing-masing input payload.
![tugas6_bug2](https://res.cloudinary.com/vigarp/image/upload/v1665226278/CS-assets/remedial/tugas%206/bug%202/procedure_4_gd6svz.png)
6. Buat file HTML dengan isi dari generate tools yang dibuat dan jalankan.
![tugas6_bug2](https://res.cloudinary.com/vigarp/image/upload/v1665226278/CS-assets/remedial/tugas%206/bug%202/procedure_5_pn6jab.png)
7. Secara tidak langsung, berita otomatis terbuat, dengan judul `Admin` dan deskripsi `Hacked` tanpa ketidaksadaran dari administrator.
![tugas6_bug2](https://res.cloudinary.com/vigarp/image/upload/v1665226279/CS-assets/remedial/tugas%206/bug%202/procedure_6_ol4qqp.png)
![tugas6_bug2](https://res.cloudinary.com/vigarp/image/upload/v1665226278/CS-assets/remedial/tugas%206/bug%202/procedure_7_ouple6.png)

OS and Browser: Kali Linux 2022.3 and Firefox versi 102.2.0esr (64-bit)

Impact:
- Payload HTML yang dibuat penyerang bisa membuat data berita admin secara tidak langsung
- Bisa menyebabkan kesalahpahaman/fitnah terkait berita palsu, bohong dll

Remediation:
- Memberikan token CSRF disetiap fungsi website

References:
- https://gudangssl.id/blog/csrf-adalah/

---
Title: IDOR dengan index barang.

Description: Terdapat vulnerability IDOR di fitur edit barang (user) pada URL website.

CVSS Vector and Score: CVSS:3.1/AV:N/AC:H/PR:L/UI:R/S:C/C:L/I:H/A:N - 6.5 (Medium)

Steps to Reproduce & Proof of concept:
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

OS and Browser: Kali Linux 2022.3 and Firefox versi 102.2.0esr (64-bit)

Impact:
- user bisa mengubah dan bahkan memanipulasi identitas barang milik user lain

Remediation:
- memberikan fungsi pengecekkan kembali otoritas user di fungsi edit barang atau lihat barang (berdasarkan edit barang)

References:
- https://ridhomarhaban2000.medium.com/memahami-idor-insecure-direct-object-references-ab176af79cb1
---

Title: Arbitrary File Upload dengan file PHPInfo()

Description: Terdapat vulnerability Arbitrary File Upload dengan file PHPInfo() di fitur edit user pada form upload gambar.

CVSS Vector and Score: CVSS:3.1/AV:N/AC:H/PR:L/UI:R/S:C/C:H/I:N/A:N - 5.8 (Medium)

Steps to Reproduce & Proof of concept:
1. Login ke halaman user di URL `http://139.59.126.99/user/` menggunakan username `ridone` dan password `password`
![tugas8_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665298860/CS-assets/remedial/tugas%208/bug%201/procedure_1_ihsrlt.png)
![tugas8_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665298856/CS-assets/remedial/tugas%208/bug%201/procedure_2_okp9g1.png)

2. Setelah login, arahkan ke fitur edit profile, kemudian pilih edit gambar profile
![tugas8_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665298856/CS-assets/remedial/tugas%208/bug%201/procedure_3_eihbrh.png)

3. Sebelum itu, buatkan payload file ekstensi .php yang berisi fungsi phpinfo()
4. Pilih file payload yang barusan dibuat sebagai pengganti gambar foto profile
![tugas8_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665298856/CS-assets/remedial/tugas%208/bug%201/procedure_4_f513lb.png)

5. Setelah sukses terupload, maka icon gambar akan muncul seperti icon image pecah, abaikan
6. Pada halaman dashboard, arahkan kursor ke icon image pecah tersebut, klik kanan dan pilih `Open Image in New Tab`
![tugas8_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665298856/CS-assets/remedial/tugas%208/bug%201/procedure_5_h27xmd.png)
7. Payload sukses tereksekusi dan memberitahu isi dari konfig phpinfo pada website.
![tugas8_bug1](https://res.cloudinary.com/vigarp/image/upload/v1665298856/CS-assets/remedial/tugas%208/bug%201/procedure_6_sxpalw.png)

OS and Browser: Kali Linux 2022.3 and Firefox versi 102.2.0esr (64-bit)

Impact:
- Penyerang bisa mengetahui konfigurasi PHP website dengan mudah

Remediation:
- Membuat validasi file pada saat upload ke server

References:
- https://www.logique.co.id/blog/2019/05/28/web-security-unrestricted-file-upload/

---

