Tugas: 8 (remedial)
Topik: Sesi 8 - Arbitrary File Upload
---
Title: Arbitrary File Upload dengan file PHPInfo().
Description: Terdapat vulnerability Arbitrary File Upload dengan file PHPInfo() di fitur edit user pada form upload gambar.
Step to Reproduce:
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

---
