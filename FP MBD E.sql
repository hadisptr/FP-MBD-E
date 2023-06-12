-- Ananda Hadi Saputra
-- 5025201148
-- Library Database

-- Membuat Table

CREATE TABLE Tipe_Pengguna (
    ID_Tipe_Pengguna CHAR(4) PRIMARY KEY NOT NULL,
    Nama_Tipe_Pengguna VARCHAR(10) NOT NULL
);

CREATE TABLE Rak (
    ID_Rak CHAR(4) PRIMARY KEY NOT NULL,
    No_Rak CHAR(4) NOT NULL
);

CREATE TABLE Buku (
    ID_Buku CHAR(4) PRIMARY KEY NOT NULL,
    ID_Rak CHAR(4) NOT NULL,
    Judul VARCHAR(100) NOT NULL,
    Pengarang VARCHAR(100) NOT NULL,
    Penerbit VARCHAR(100) NOT NULL,
    Tahun_Terbit DATE NOT NULL,
    FOREIGN KEY (ID_Rak) REFERENCES Rak (ID_Rak)
);

CREATE TABLE Anggota (
    ID_Anggota CHAR(4) PRIMARY KEY NOT NULL,
    Nama VARCHAR(50) NOT NULL,
    Alamat VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    ID_Tipe_Anggota CHAR(4) NOT NULL,
    FOREIGN KEY (ID_Tipe_Anggota) REFERENCES Tipe_Pengguna (ID_Tipe_Pengguna)
);

CREATE TABLE Karyawan (
    ID_Karyawan CHAR(4) PRIMARY KEY NOT NULL,
    Nama VARCHAR(50) NOT NULL,
    Alamat VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    ID_Tipe_Karyawan CHAR(4) NOT NULL,
    FOREIGN KEY (ID_Tipe_Karyawan) REFERENCES Tipe_Pengguna (ID_Tipe_Pengguna)
);

CREATE TABLE Transaksi (
    ID_Transaksi CHAR(4) PRIMARY KEY NOT NULL,
    ID_Buku CHAR(4) NOT NULL,
    ID_Anggota CHAR(4) NOT NULL,
    ID_Karyawan CHAR(4) NOT NULL,
    Tgl_Pinjam DATE NOT NULL,
    Tgl_Kembali DATE NOT NULL,
    FOREIGN KEY (ID_Buku) REFERENCES Buku (ID_Buku),
    FOREIGN KEY (ID_Anggota) REFERENCES Anggota (ID_Anggota),
    FOREIGN KEY (ID_Karyawan) REFERENCES Karyawan (ID_Karyawan)
);

-- INSERT

INSERT INTO Tipe_Pengguna (ID_Tipe_Pengguna, Nama_Tipe_Pengguna)
VALUES ('T001', 'Admin'),
       ('T002', 'Karyawan'),
       ('T003', 'Anggota')
;

INSERT INTO Rak (ID_Rak, No_Rak)
VALUES  ('R001', 'NR01'),
        ('R002', 'NR02'),
        ('R003', 'NR03')
;

INSERT INTO Buku (ID_Buku, ID_Rak, Judul, Pengarang, Penerbit, Tahun_Terbit)
VALUES  ('B001','R001', 'Harry Potter and the Philosophers Stone', 'J.K. Rowling', 'Bloomsbury Publishing', '1997-06-26'),
        ('B002','R001', 'Harry Potter and the Chamber of Secret', 'J.K. Rowling', 'Bloomsbury Publishing', '1998-07-02'),
        ('B003','R001', 'Harry Potter and the Prisoner of Azkaban', 'J.K. Rowling', 'Bloomsbury Publishing', '1999-07-08'),
        ('B004','R001', 'Harry Potter and the Goblet of Fire', 'J.K. Rowling', 'Bloomsbury Publishing', '2000-07-08'),
        ('B005','R001', 'Harry Potter and the Order of the Phoenix', 'J.K. Rowling', 'Bloomsbury Publishing', '2003-06-21'),
        ('B006','R001', 'Harry Potter and the Half-Blood Prince', 'J.K. Rowling', 'Bloomsbury Publishing', '2005-07-16'),
        ('B007','R001', 'Harry Potter and the Deathly Hallows', 'J.K. Rowling', 'Bloomsbury Publishing', '2007-07-21'),
        ('B008','R001', 'Harry Potter and the Cursed Child', 'J.K. Rowling', 'Bloomsbury Publishing', '2016-07-31'),
        ('B009','R001', 'The Maze Runner', 'James Dashner', 'Mizan Fantasi', '2009-10-06'),
        ('B010','R001', 'The Scorch Trials', 'James Dashner', 'Mizan Fantasi', '2010-09-18'),
        ('B011','R002', 'The Death Cure', 'James Dashner', 'Mizan Fantasi', '2011-10-11'),
        ('B012','R002', 'The Hunger Games', 'Suzanne Collins', 'Scholastic Press', '2008-09-14'),
        ('B013','R002', 'Catching Fire', 'Suzanne Collins', 'Scholastic Press', '2009-09-01'),
        ('B014','R002', 'Mockingjay', 'Suzanne Collins', 'Scholastic Press', '2010-08-24'),
        ('B015','R002', 'The Ballad of Songbirds and Snakes', 'Suzanne Collins', 'Scholastic Press', '2020-05-19'),
        ('B016','R002', 'The Lightning Thief', 'Rick Riordan', 'Disney Hyperion', '2005-06-28'),
        ('B017','R002', 'Sea of Monsters', 'Rick Riordan', 'Disney Hyperion', '2006-04-01'),
        ('B018','R002', 'The Titans Curse', 'Rick Riordan', 'Disney Hyperion', '2007-05-01'),
        ('B019','R002', 'The Battle of the Labyrinth', 'Rick Riordan', 'Disney Hyperion', '2008-05-06'),
        ('B020','R002', 'Percy Jackson and the Last Olympian', 'Rick Riordan', 'Disney Hyperion', '2009-05-05'),
        ('B021','R003', 'Percy Jacksons Greek Gods', 'Rick Riordan', 'Disney Hyperion', '2014-08-07'),
        ('B022','R003', 'Percy Jacksons Greek Heroes', 'Rick Riordan', 'Disney Hyperion', '2015-08-06'),
        ('B023','R003', 'The Hobbit', 'J. R. R. Tolkien', 'George Allen & Unwin', '1937-09-21'),
        ('B024','R003', 'The Fellowship of the Ring', 'J. R. R. Tolkien', 'George Allen & Unwin', '1954-07-29'),
        ('B025','R003', 'The Return of the King', 'J. R. R. Tolkien', 'George Allen & Unwin', '1955-10-20'),
        ('B026','R003', 'The Two Towers', 'J. R. R. Tolkien', 'George Allen & Unwin', '1954-11-11'),
        ('B027','R003', 'Alice Adventures in Wonderland', 'Lewis Carroll', 'Macmillan', '1865-11-11'),
        ('B028','R003', 'Negeri 5 Menara', 'Ahmad Fuadi', 'Gramedia', '2009-07-07'),
        ('B029','R003', 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '2005-08-09'),
        ('B030','R003', 'Tenggelamnya Kapal Van der Wijck', 'Prof.dr.hamka', 'Balai Pustaka', '1938-05-07')
;

INSERT INTO Anggota (ID_Anggota, Nama, Alamat, Email, ID_Tipe_Anggota)
VALUES  ('A001', 'Raihan Hidayat', 'Jayamukti Central Cikarang', 'raihanhidayat@gmail.com', 'T003'),
        ('A002', 'John Doe', 'Bekasi Regency Barat', 'Johndoe@gmail.com', 'T003'),
        ('A003', 'Amanda Johnson', 'Pekayon South Side', 'Amandajohnson@gmail.com', 'T003'),
        ('A004', 'Benjamin Martinez', 'Jembatan Suhat', 'Benjaminmartinez@gmail.com', 'T003'),
        ('A005', 'Chloe Davis', 'Tanah Abang', 'Chloedavis@gmail.com', 'T003'),
        ('A006', 'Daniel Thompson', 'Mangga Dua Regency', 'Danielthompson@gmail.com', 'T003'),
        ('A007', 'Emily Rodriguez', 'Tanjung Priok', 'Emilyrodriguez@gmail.com', 'T003'),
        ('A008', 'Gabriel Anderson', 'Cakung Barat', 'Gabrielanderson@gmail.com', 'T003'),
        ('A009', 'Hannah Wilson', 'Kambang Iwak', 'Hannahwilson@gmail.com', 'T003'),
        ('A010', 'Isaac Taylor', 'Kampung Rambutan', 'Isaactaylor@gmail.com', 'T003'),
        ('A011', 'Jasmine Garcia', 'Sentul City', 'Jasminegarcia@gmail.com', 'T003'),
        ('A012', 'Kevin Moore', 'Kemanggisan', 'Kevinmoore@gmail.com', 'T003'),
        ('A013', 'Minami Aizawa', 'Tokyo Dome', 'Minamiaizawa@gmail.com', 'T003'),
        ('A014', 'Lily Hernandez', 'Harapan Indah City', 'Lilyhernandez@gmail.com', 'T003'),
        ('A015', 'Ava Campbell', 'Finland Saga', 'Avacampbell@gmail.com', 'T003')
;

INSERT INTO Karyawan (ID_Karyawan, Nama, Alamat, Email, ID_Tipe_Karyawan)
VALUES ('K001', 'Patrick Walker', 'Kemayoran', 'Patrickwalker@gmail.com', 'T001'),
       ('K002', 'Quinn Adams', 'Taliban Lama', 'Quinnadams@gmail.com', 'T001'),
       ('K003', 'Rachel Turner', 'Afganishtan', 'Rachelturner@gmail.com', 'T001'),
       ('K004', 'Samuel Brown', 'Ancol Timur', 'Samuelbrown@gmail.com', 'T002'),
       ('K005', 'Taylor Green', 'Cikampek Kota', 'Taylorgreen@gmail.com', 'T002'),
       ('K006', 'Victoria Hall', 'Banyuwangi Timur', 'Victoriahall@gmail.com', 'T002'),
       ('K007', 'William Mitchell', 'Semarang Temabalang', 'Williammitchell@gmail.com', 'T002'),
       ('K008', 'Xavier Perez', 'Malang Batu', 'Xavierperez@gmail.com', 'T002')
;

INSERT INTO Transaksi (ID_Transaksi, ID_Buku, ID_Anggota, ID_Karyawan, Tgl_Pinjam, Tgl_Kembali)
VALUES ('T001', 'B001', 'A008', 'K002', '2017-01-17', '2017-01-28'),
       ('T002', 'B002', 'A002', 'K004', '2017-02-03', '2017-02-18'),
       ('T003', 'B003', 'A006', 'K006', '2017-03-01', '2017-03-15'),
       ('T004', 'B004', 'A004', 'K008', '2017-03-13', '2017-03-30'),
       ('T005', 'B005', 'A001', 'K001', '2017-04-01', '2017-04-20'),
       ('T006', 'B006', 'A003', 'K003', '2017-05-09', '2017-05-27'),
       ('T007', 'B007', 'A007', 'K007', '2017-05-10', '2017-05-19'),
       ('T008', 'B008', 'A009', 'K005', '2017-07-15', '2017-07-28'),
       ('T009', 'B009', 'A005', 'K002', '2017-07-20', '2017-07-25'),
       ('T010', 'B010', 'A012', 'K004', '2017-07-20', '2017-07-30'),
       ('T011', 'B011', 'A015', 'K006', '2018-03-01', '2018-03-22'),
       ('T012', 'B012', 'A013', 'K008', '2018-05-01', '2018-05-05'),
       ('T013', 'B013', 'A014', 'K001', '2018-05-05', '2018-05-18'),
       ('T014', 'B014', 'A011', 'K003', '2018-05-08', '2018-05-26'),
       ('T015', 'B015', 'A010', 'K007', '2018-08-12', '2018-08-14'),
       ('T016', 'B016', 'A008', 'K005', '2018-08-20', '2018-08-21'),
       ('T017', 'B017', 'A002', 'K002', '2018-08-21', '2018-08-30'),
       ('T018', 'B018', 'A006', 'K004', '2018-10-10', '2018-10-17'),
       ('T019', 'B019', 'A004', 'K006', '2018-10-19', '2018-10-27'),
       ('T020', 'B020', 'A001', 'K008', '2018-12-12', '2018-12-31'),
       ('T021', 'B021', 'A003', 'K001', '2019-02-01', '2019-02-09'),
       ('T022', 'B022', 'A007', 'K003', '2019-02-01', '2019-02-15'),
       ('T023', 'B023', 'A009', 'K007', '2019-02-01', '2019-02-15'),
       ('T024', 'B024', 'A012', 'K005', '2019-02-01', '2019-02-28'),
       ('T025', 'B025', 'A015', 'K002', '2019-06-17', '2019-06-18'),
       ('T026', 'B026', 'A013', 'K004', '2019-06-20', '2019-06-25'),
       ('T027', 'B027', 'A014', 'K006', '2019-06-20', '2019-06-29'),
       ('T028', 'B028', 'A011', 'K008', '2019-06-23', '2019-06-30'),
       ('T029', 'B029', 'A010', 'K001', '2019-09-01', '2019-09-10'),
       ('T030', 'B030', 'A008', 'K003', '2019-09-03', '2019-09-16'),
       ('T031', 'B011', 'A002', 'K007', '2020-01-01', '2020-01-03'),
       ('T032', 'B012', 'A006', 'K005', '2020-01-01', '2020-01-05'),
       ('T033', 'B013', 'A004', 'K002', '2020-01-05', '2020-01-10'),
       ('T034', 'B014', 'A001', 'K004', '2020-07-27', '2020-07-10'),
       ('T035', 'B015', 'A003', 'K006', '2020-08-30', '2020-09-10'),
       ('T036', 'B016', 'A007', 'K008', '2020-11-15', '2020-11-20'),
       ('T037', 'B017', 'A009', 'K001', '2020-11-16', '2020-11-26'),
       ('T038', 'B018', 'A012', 'K003', '2020-11-17', '2020-11-30'),
       ('T039', 'B019', 'A015', 'K007', '2020-12-20', '2020-12-24'),
       ('T040', 'B020', 'A013', 'K005', '2020-12-20', '2020-12-31'),
       ('T041', 'B021', 'A014', 'K002', '2021-01-01', '2021-01-31'),
       ('T042', 'B022', 'A011', 'K004', '2021-06-05', '2021-06-24'),
       ('T043', 'B023', 'A010', 'K006', '2021-06-14', '2021-06-28'),
       ('T044', 'B024', 'A008', 'K008', '2021-06-16', '2021-06-29'),
       ('T045', 'B025', 'A002', 'K001', '2021-11-11', '2021-11-21')
;

-- Insert 3 Tipe User

--- Role Admin
CREATE ROLE Admin;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO admin;

--- Role Karyawan
CREATE ROLE Karyawan;
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE anggota TO Karyawan;

--- Role anggota
CREATE ROLE Anggota;
GRANT SELECT ON TABLE anggota TO Anggota;


-- JOIN

--- 1. Query Pencarian Transaksi Berdasarkan Nama Anggota
SELECT T.ID_Transaksi, A.Nama AS Nama_Anggota, B.Judul AS Judul_Buku
FROM Transaksi T
JOIN Anggota A ON T.ID_Anggota = A.ID_Anggota
JOIN Buku B ON T.ID_Buku = B.ID_Buku
WHERE A.Nama LIKE '%John%' 

--- 2. Query Pencarian Transaksi Berdasarkan Tanggal Pinjam:
SELECT T.ID_Transaksi, B.Judul AS Judul_Buku, T.Tgl_Pinjam
FROM Transaksi T
JOIN Buku B ON T.ID_Buku = B.ID_Buku
WHERE T.Tgl_Pinjam BETWEEN '2017-01-01' AND '2022-01-01'


-- View

--- 1. Mencari Anggota berdasarkan alamat
CREATE VIEW View_Anggota AS
SELECT ID_Anggota, Nama, Alamat, Email
FROM Anggota;

SELECT * FROM View_Anggota
WHERE Alamat = 'Tokyo Dome';

--- 2. Mencari Transaksi berdasarkan judul buku
CREATE VIEW View_Transaksi AS
SELECT T.ID_Transaksi, T.ID_Buku, B.Judul, T.ID_Anggota, T.ID_Karyawan, T.Tgl_Pinjam, T.Tgl_Kembali
FROM Transaksi T
JOIN Buku B ON T.ID_Buku = B.ID_Buku;

SELECT * FROM View_Transaksi
WHERE Judul LIKE '%Harry Potter%';


-- TRIGGER

--- 1. Membuat fungsi menambahkan keterangan transaksi baru
---- Buat tabel untuk menyimpan log transaksi
CREATE TABLE Log_Transaksi (
    ID SERIAL PRIMARY KEY,
    ID_Transaksi CHAR(4) NOT NULL,
    Waktu TIMESTAMP NOT NULL,
    Keterangan TEXT
);

---- Buat fungsi trigger
CREATE OR REPLACE FUNCTION tambahkan_log()
RETURNS TRIGGER AS $$
BEGIN
    ---- Masukkan log ke tabel Log_Transaksi
    INSERT INTO Log_Transaksi (ID_Transaksi, Waktu, Keterangan)
    VALUES (NEW.ID_Transaksi, NOW(), 'Transaksi baru ditambahkan');

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

---- Buat trigger pada tabel Transaksi
CREATE TRIGGER transaksi_trigger
AFTER INSERT ON Transaksi
FOR EACH ROW
EXECUTE FUNCTION tambahkan_log();

---- Menambahkan transaksi baru
INSERT INTO Transaksi (ID_Transaksi, ID_Buku, ID_Anggota, ID_Karyawan, Tgl_Pinjam, Tgl_Kembali)
VALUES ('T046', 'B023', 'A013', 'K001', '2023-01-17', '2023-08-20');

---- Menampilkan log transaksi
select * from log_transaksi;

--- 2. Membuat fungsi menambahkan keterangan buku baru
---- Buat tabel untuk menyimpan log buku
CREATE TABLE Log_Buku (
    ID SERIAL PRIMARY KEY,
    ID_Buku CHAR(4) NOT NULL,
    Waktu TIMESTAMP NOT NULL,
    Keterangan TEXT
);

---- Buat fungsi trigger
CREATE OR REPLACE FUNCTION tambahkan_buku()
RETURNS TRIGGER AS $$
BEGIN
    ---- Masukkan log ke tabel Log_Buku
    INSERT INTO Log_Buku (ID_Buku, Waktu, Keterangan)
    VALUES (NEW.ID_Buku, NOW(), 'Buku baru ditambahkan');

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

---- Buat trigger pada tabel Buku
CREATE TRIGGER buku_trigger
AFTER INSERT ON Buku
FOR EACH ROW
EXECUTE FUNCTION tambahkan_buku();

---- Menambahkan buku baru
INSERT INTO Buku (ID_Buku, ID_Rak, Judul, Pengarang, Penerbit, Tahun_Terbit)
VALUES  ('B031', 'R001', 'Shadow and Bone', 'Leigh Bardugo', 'Macmillan Publishers', '2012-05-05');

---- Menampilkan log buku
select * from Log_Buku;


-- FUNCTION

--- 1.  Pencarian anggota berdasarkan nama
CREATE OR REPLACE FUNCTION search_anggota_by_nama(nama_anggota VARCHAR)
    RETURNS TABLE (ID_Anggota CHAR(4), Nama VARCHAR(50), Alamat VARCHAR(50), Email VARCHAR(50), Nama_Tipe_Pengguna VARCHAR(10))
AS $$
BEGIN
    RETURN QUERY
    SELECT A.ID_Anggota, A.Nama, A.Alamat, A.Email, TP.Nama_Tipe_Pengguna
    FROM Anggota A
    JOIN Tipe_Pengguna TP ON A.ID_Tipe_Anggota = TP.ID_Tipe_Pengguna
    WHERE A.Nama ILIKE '%' || nama_anggota || '%';
END;
$$ LANGUAGE PLPGSQL;

SELECT * FROM search_anggota_by_nama('John');

--- 2.  Pencarian buku berdasarkan judul
CREATE OR REPLACE FUNCTION search_buku_by_judul(judul_buku VARCHAR)
    RETURNS TABLE (ID_Buku CHAR(4), Judul VARCHAR(100), Pengarang VARCHAR(100), Penerbit VARCHAR(100), Tahun_Terbit DATE)
AS $$
BEGIN
    RETURN QUERY
    SELECT B.ID_Buku, B.Judul, B.Pengarang, B.Penerbit, B.Tahun_Terbit
    FROM Buku B
    WHERE B.Judul ILIKE '%' || judul_buku || '%';
END;
$$ LANGUAGE PLPGSQL;

SELECT * FROM search_buku_by_judul('Harry Potter');
