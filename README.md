# Praktikum 1 Probstat
Nama  : Richard Ryan  
NRP   : 5025211141  
Kelas : C  

# No 1  
Probabilitas seorang bayi lahir laki-laki = 0.488
Terdapat 10 kelahiran
## 1a  
### Apakah distribusi yang sesuai?  
Distribusi yang digunakan adalah distribusi bernoulli, sebab dalam suatu kelahiran hanya terdapat 2 kemungkinan yaitu laki-laki dan bukan laki-laki (perempuan)  
Adapun rumus yang dapat digunakan adalah C(10, x) * 0.488^x * (1-0.488)^(10-x) untuk 0 <= x <= 10
## 1b
### Berapa probabilitas terdapat tepat 3 bayi laki-laki?
Kemungkinan terdapat tepat 3 bayi laki-laki adalah C(10,3) * 0.488^3 * (1-0.488)^7 = 0.1286265  
Dalam notasi bahasa R : dbinom(3, 10, 0.488) = 0.1286265  
## 1c
### Berapa probabilitas terdapat kurang dari 3 bayi laki-laki?
Terdapat kurang dari 3 bayi laki-laki artinya terdapat 0, 1, atau 2 bayi laki laki  
Probabilitasnya dapat didapat dengan mensubstitusikan nilai x pada rumus dengan 0, 1, dan 2 kemudian hasil ketiganya dijumlahkan  
Dalam notasi bahasa R dapat digunakan : sum(dbinom(0:2, 10, 0.488)) = 0.0636442  
## 1d
### Berapa probabilitas terdapat 3 atau lebih bayi laki-laki?
Terdapat 3 atau lebih bayi laki-laki artinya terdapat 3, 4, 5, 6, 7, 8, 9, atau 10 bayi laki-laki  
Probabilitasnya dapat didapat dengan mensubstitusikan nilai x pada rumus dengan 3, 4, 5, 6, 7, 8, 9, atau 10 kemudian hasil ketiganya dijumlahkan  
Dalam notasi bahasa R dapat digunakan : sum(dbinom(3:10, 10, 0.488)) = 0.9363558  
## 1e
### Berapa nilai harapannya?
Nilai harapan / ekspektasi dari suatu distribusi binomial adalah perkalian jumlah percobaan dengan kemungkinan suksesnya  
Dalam soal ini, jumlah percobaan adalah 10 dan kemungkinan sukses adalah 0.488  
Maka nilai harapannya adalah 10 * 0.488 = 4.88  
### Berapa nilai simpangan bakunya?
Nilai simpangan baku / standar deviasi dari suatu distribusi binomial adalah akar dari variannya  
Nilai varian dari distribusi binomial adalah perkalian antara jumlah percobaan, kemungkinan sukses, dan kemungkinan gagal  
Maka nilai simpangan bakunya adalah sqrt(10 * 0.488 * (1-0.488)) = 1.580683  
## 1f
![1f](./image/1f.jpeg)
## Foto & Output
![1](./image/1_foto.jpeg)


# No 2
Rentang waktu = 20 tahun  
Rata-rata kejadian = 1.8
## 2a
### Apakah distribusi yang sesuai?
Distribusi yang digunakan adalah distribusi poisson sebab data yang diberikan berupa rata-rata kejadian (1.8 kematian oleh kanker) dalam rentang waktu tertentu (20 tahun)  
Adapun rumus yang dapat digunakan adalah e^(-1.8) * 1.8^k / k!
## 2b
### Terdapat 4 kematian yang terjadi, berapa probabilitasnya? Apakah itu tidak wajar?
Dapat disubstitusikan nilai k=4 ke rumus yang kita miliki untuk menghasilkan hasil sebesar 0.07230173 atau sekitar 7.23%  
Dalam bahasa R : dpois(4, 1.8)  
Menurut saya data tersebut menunjukkan bahwa kejadian tersebut relatif tidak wajar sebab nilai probabilitas cukup rendah dan jumlah kematiannya bahkan lebih dari 2 kali rata-rata  
## 2c
### Berapa peluang terdapat paling banyak 4 kematian?
Dapat disubstitusikan nilai k=0, 1, 2, 3, dan 4 ke rumus yang kita miliki kemudian nilainya kita jumlahkan dan nantinya akan didapat nilai probabilitas 0.9635933 atau sekitar 96.36%  
Dalam bahasa R : sum(dpois(0:4, lambda=lambda))
## 2d
### Berapa pelurang terdapat lebih dari 4 kematian?
Karena distribusi yang digunakan adalah distribusi poisson maka sayangnya tidak terdapat batasan atas untuk nilai k  
Sehingga kita harus berpikir dari sisi komplemen  
Komplemen dari pertanyaan ini adalah berapakah peluang bahwa paling banyak terdapat 4 kematian? Dari soal sebelumnya telah didapatkan nilai 0.9635933  
Maka untuk menjawab soal ini kita kurangkan probabilitas penuh (1) dengan probabilitas komplemen (0.9635933) sehingga didapat bahwa peluangnya adalah 0.03640666 atau sekitar 3.64%
## 2e
### Berapakah nilai harapannya?
Nilai harapan dari distribusi poisson adalah nilai rata rata kejadian  
Maka nilai harapan = 1.8 
### Berapakah standar deviasinya?
Nilai standar deviasi dari distribusi poisson adalah akar dari variannya  
Nilai varian dari distribusi poisson adalah nilai rata-rata kejadian  
Maka nilai standar deviasi = sqrt(1.8) = 1.341641 
## 2f
![2f](./image/2f.jpeg)
## 2g
### Lakukan simulasi
Untuk melakukan simulasi distribusi poisson pada bahasa R, dapat digunakan fungsi rpois(n, lambda) dimana n menyatakan jumlah percobaan dan lambda menyatakan rata-rata kejadian  
Kali-ini saya menggunakan 100.000 percobaan demi kepastian data
## 2h
### Bandingkan hasil simulasi dengan 2d
Dari 100.000 percobaan didapatkan data sebagai berikut :  
Rata-rata = 1.80435  
Median = 2  
Varian = 1.805489  
Standar Deviasi = 1.343685  
Jumlah kematian > 4 = 3696  

Berdasarkan jawaban 2d, seharusnya terdapat 0.03640666 * 100000 = 3640.666 ~ 3641 percobaan dengan kematian > 4  
Terdapat selisih 55 percobaan antara simulasi dengan nilai statistik, angka tersebut sangatlah kecil dan wajar untuk didapatkan melalui simulasi
## Foto & Output
![2](./image/2_foto.jpeg)


# No 3
x = 3  
df = 10
## 3a
### Fungsi probabilitas dari distribusi chi-square
![image](https://user-images.githubusercontent.com/114993335/235296693-d22bb3ab-5847-494b-9d71-db8ba49f76d3.png)  
Apabila kita masukkan nilai x=3 dan k=10, maka akan didapatkan nilai probabilitas sebesar 0.02353326  
Dalam bahasa R : dchisq(3,10)
## 3b
![3b](./image/3b.jpeg)
## 3c
### Rataan dan varian
Nilai rata-rata dari distribusi chi-square adalah nilai kebebasannya, maka mean = 10  
Nilai varian dari distribusi chi-square adalah 2 * nilai kebebasannya, maka varian = 2 * 10 = 20
## Foto & Output
![3](./image/3_foto.jpeg)
