
Level 1
Clue: URL
![level1_pertanyaan](https://res.cloudinary.com/vigarp/image/upload/v1662781422/CS-assets/ss/level1_pertanyaan_yizuoe.png)
Vulneratibility:
- memberikan XSS kepada nilai properti "status" dari query string
![level1_jawaban1](https://res.cloudinary.com/vigarp/image/upload/v1662781422/CS-assets/ss/level1_jawaban1_gd017v.png)
---


Level 2
Clue: Form
![level2_pertanyaan](https://res.cloudinary.com/vigarp/image/upload/v1662781422/CS-assets/ss/level2_pertanyaan_wnzyhs.png)
Vulneratibility:
- memberikan XSS kepada input form
![level2_jawaban1](https://res.cloudinary.com/vigarp/image/upload/v1662782161/CS-assets/ss/level2_jawaban1_rt8mw6.png)
---


Level 3
Clue: User-Agent
![level3_pertanyaan1](https://res.cloudinary.com/vigarp/image/upload/v1662781424/CS-assets/ss/level3_pertanyaan_rga9ey.png)
Vulneratibility:
- Menggunakan interceptor Burpsuite untuk menganalisis isi header
![level3_jawaban1](https://res.cloudinary.com/vigarp/image/upload/v1662781422/CS-assets/ss/level3_jawaban1_cgvoz6.png)
- Hasil header dari interceptor pada Burpsuite disimulasikan menggunakan repeater
- Mengubah value dari properti User-Agent pada request dengan XSS kemudian klik send
![level3_jawaban2](https://res.cloudinary.com/vigarp/image/upload/v1662781423/CS-assets/ss/level3_jawaban2_eq1kcv.png)
- Mengimplementasikan XSS tersebut pada bagian interceptor kembali, dan klik forward ![level3_jawaban3](https://res.cloudinary.com/vigarp/image/upload/v1662781423/CS-assets/ss/level3_jawaban2_eq1kcv.png)
![level3_jawaban4](https://res.cloudinary.com/vigarp/image/upload/v1662781424/CS-assets/ss/level3_jawaban4_yntcwu.png)

---

Level 4
Clue: Refferer
![level4_pertanyaan](https://res.cloudinary.com/vigarp/image/upload/v1662781425/CS-assets/ss/level4_pertanyaan_sicyjr.png)
Vulneratibility:
- Menggunakan interceptor Burpsuite untuk menganalisis isi header
![level4_jawaban1](https://res.cloudinary.com/vigarp/image/upload/v1662781424/CS-assets/ss/level4_jawaban1_opo1g1.png)
- Hasil header dari interceptor pada Burpsuite disimulasikan menggunakan repeater
- Mengubah value dari properti Refferer pada request dengan script XSS kemudian klik send
![level4_jawaban2](https://res.cloudinary.com/vigarp/image/upload/v1662781424/CS-assets/ss/level4_jawaban2_x1mbah.png)
- Mengimplementasikan XSS tersebut pada bagian interceptor kembali, dan klik forward
![level4_jawaban3](https://res.cloudinary.com/vigarp/image/upload/v1662781424/CS-assets/ss/level4_jawaban3_mfzkyp.png)
![level4_jawaban4](https://res.cloudinary.com/vigarp/image/upload/v1662781424/CS-assets/ss/level4_jawaban4_omvumt.png)

---
Level 5
Clue: Cookie
![level5_pertanyaan](https://res.cloudinary.com/vigarp/image/upload/v1662781425/CS-assets/ss/level5_pertanyaan_axkhf9.png)
Vulneratibility:
- Menggunakan interceptor Burpsuite untuk menganalisis isi header
![level5_jawaban1](https://res.cloudinary.com/vigarp/image/upload/v1662781425/CS-assets/ss/level5_jawaban1_do4rnh.png)
- Hasil header dari interceptor pada Burpsuite disimulasikan menggunakan repeater
- Mengubah value dari properti Cookie pada request dengan script XSS kemudian klik send
![level5_jawaban2](https://res.cloudinary.com/vigarp/image/upload/v1662781425/CS-assets/ss/level5_jawaban2_tto1w8.png)
- Mengimplementasikan XSS tersebut pada bagian interceptor kembali, dan klik forward
![level5_jawaban3](https://res.cloudinary.com/vigarp/image/upload/v1662781425/CS-assets/ss/level5_jawaban3_b1j0lk.png)
![level5_jawaban4](https://res.cloudinary.com/vigarp/image/upload/v1662781425/CS-assets/ss/level5_jawaban4_tdjwqg.png)


---
Level 7
Clue: Login page
![level7_pertanyaan](https://res.cloudinary.com/vigarp/image/upload/v1662794953/CS-assets/ss/level7_pertanyaan1_m2homt.png)
Vulneratibility:
- Mencoba login dengan menggunakan username & password bebas
![level7_jawaban1](https://res.cloudinary.com/vigarp/image/upload/v1662794953/CS-assets/ss/level7_jawaban1_ajki2h.png)
- Melihat query string dengan properti message berisi sebuah string
- ![level7_jawaban2](https://res.cloudinary.com/vigarp/image/upload/v1662794953/CS-assets/ss/level7_jawaban2_qydbcl.png)
- Merubah string tersebut dengan menggunakan XSS
![level7_jawaban3](https://res.cloudinary.com/vigarp/image/upload/v1662794953/CS-assets/ss/level7_jawaban2_qydbcl.png)![level7_jawaban4](https://res.cloudinary.com/vigarp/image/upload/v1662794953/CS-assets/ss/level7_jawaban4_ggd4ar.png)

---
Level 8
Clue: File Name
![level8_pertanyaan](https://res.cloudinary.com/vigarp/image/upload/v1662794954/CS-assets/ss/level8_pertanyaan_tzloea.png)
Vulneratibility:
- Edit nama file gambar dengan menggunakan <img src=x onerror=alert(1)>
![level8_jawaban1](https://res.cloudinary.com/vigarp/image/upload/v1662794952/CS-assets/ss/level8_jawaban1_xommni.png)
- Upload gambar tersebut
- ![level8_jawaban2](https://res.cloudinary.com/vigarp/image/upload/v1662794953/CS-assets/ss/level8_jawaban2_ajeaio.png)
- Klik upload
![level8_jawaban3](https://res.cloudinary.com/vigarp/image/upload/v1662794954/CS-assets/ss/level8_jawaban3_un5cwb.png)

---
Level 9
Clue: Base64 Encoding
![level9_pertanyaan](https://res.cloudinary.com/vigarp/image/upload/v1662794954/CS-assets/ss/level9_pertanyaan_jrtpvg.png)
Vulneratibility:
- decode hasil token
![level9_jawaban1](https://res.cloudinary.com/vigarp/image/upload/v1662794954/CS-assets/ss/level9_jawaban1_rm8rpf.png)
- encode token dengan XSS script
![level9_jawaban2](https://res.cloudinary.com/vigarp/image/upload/v1662794955/CS-assets/ss/level9_jawaban2_kvwiy8.png)
- paste-kan hasil encode XSS tersebut
![level9_jawaban3](https://res.cloudinary.com/vigarp/image/upload/v1662794954/CS-assets/ss/level9_jawaban3_ntnghv.png)

---
Level 10
Clue: Removes Alert
![level10_pertanyaan](https://res.cloudinary.com/vigarp/image/upload/v1662794954/CS-assets/ss/level9_jawaban3_ntnghv.png)
Vulneratibility:
- menggunakan XSS base on alert();
![level10_jawaban1](https://res.cloudinary.com/vigarp/image/upload/v1662794954/CS-assets/ss/level9_jawaban3_ntnghv.png)
- Melihat page source, bahwa fungsi alert() terindikasi filter
![level10_jawaban2](https://res.cloudinary.com/vigarp/image/upload/v1662794955/CS-assets/ss/level10_jawaban2_vhlvrt.png)
- Menggunakan fungsi prompt()
- ![level10_jawaban3](https://res.cloudinary.com/vigarp/image/upload/v1662794955/CS-assets/ss/level10_jawaban3_inhmiw.png)
