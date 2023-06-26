CREATE DATABASE univ3;

CREATE TABLE mahasiswa (
	nama_awal_mahasiswa VARCHAR (50),
    nama_akhir_mahasiswa VARCHAR (50),
    kelas VARCHAR (1),
    tanggal_lahir TIMESTAMP,
    instagram VARCHAR (50)
);

INSERT INTO mahasiswa
VALUES
	('Amanda', 'Gunawan', 'A', '1998-11-11 13:23:44', 'mandasq'),
    ('Andi', 'Rusanto', 'B', '1999-10-21 11:22:04', 'andiboi89'),
    ('Aruman', 'Budiman', 'C', '2000-01-31 11:03:02', 'rumanzz'),
    ('Ashari', 'Krisna', 'E', '1999-09-22 03:23:43', 'irasha22');

SELECT *,
-- Concat WS (Menggabungkan beberapa string)
-- CONCAT WS('string tambahan ditengah', string awal, string akhir) 
CONCAT_WS(' ', nama_awal_mahasiswa, nama_akhir_mahasiswa) as nama_lengkap_mahasiswa,
CONCAT_WS('/', 'www.instagram.com', instagram) as url_instagram,

-- Substr (Mengambil beberapa karakter pada suatu string)
-- SUBSTR(string yng mau diambil, dimulai dari karakter ke brp, panjang string)
SUBSTR(CONCAT_WS('/', 'www.instagram.com', instagram), 19, 50) as instagram_usernam,

-- Replicate or repeat (Menduplikasi string tertentu)
-- REPEAT(string yang mau diduplikasi, berapa kali duplikasi)
REPEAT(kelas, 10) as replicate,

-- Reverse (membalikkan posisi karakter string)
-- REVERSE(string yng mau direverse)
REVERSE(nama_awal_mahasiswa) as nama_awal_mahasiswa_reversed,

-- Upper (membuat karakter suatu string jadi kapital semua)
-- UPPER(string yg mau diupper)
UPPER(nama_awal_mahasiswa) as nama_awal_mahasiswa_upper,

-- Lower (membuat karakter suatu string jadi huruf kecil semua)
-- LOWER(string yg mau dilower)
LOWER(nama_awal_mahasiswa) as nama_awal_mahasiswa_lower,

-- Trim (menghilangkan spasi pada suatu string)
-- TRIM(String yg mau dihilangkan spasinya)
TRIM(nama_awal_mahasiswa) as nama_awal_mahasiswa_trimmed,

-- Lpad (menambahkan karakter tambahan sebelum suatu string dengan string lainnya)
-- LPAD(String yg mau dilpad, jumlah tambahan karakter, string yng mau ditambahkan)
LPAD(nama_awal_mahasiswa, 20, kelas) as lpad,

-- Rpad (menambahkan karakter tambahan sesudah suatu string dengan string lainnya)
-- RPAD(String yg mau dirpad, jumlah tambahan karakter, string yng mau ditambahkan)
RPAD(nama_awal_mahasiswa, 20, kelas) as rpad,

-- Replace (Mengubah karakter pada suatu string dengan karaker lainnya)
-- REPLACE(String yang mau direplace, 'karakter yang mau diubah', 'karakter pengganti')
REPLACE(CONCAT_WS('/', 'www.instagram.com', instagram), 'instagram', 'tiktok') as url_tiktok
FROM mahasiswa