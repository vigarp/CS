Tugas: 6 (remedial)
Topik: Sesi 6 - Cross Site Request Forgery (CSRF) attack and Open Redirect
---
Title: CSRF dengan method GET.
Description: Terdapat vulnerability CSRF attack method GET pada fitur hapus barang user.
Step to Reproduce:
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

---

Title: CSRF dengan method POST.
Description: Terdapat vulnerability CSRF attack method GET pada fitur hapus barang user.
Step to Reproduce:
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
