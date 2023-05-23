CREATE DATABASE IF NOT EXISTS MyReading;

USE MyReading;

DROP TABLE IF EXISTS User;

CREATE TABLE User (
    id INT,
    nama VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    usia INT UNSIGNED NOT NULL,
    genre_buku_minat ENUM ("Fantasi", "Horror", "Romantis", "Historical", "Biografi", "Memoir", "Ensiklopedia", "Sains"),
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS Penulis;

CREATE TABLE Penulis (
    id INT,
    nama VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS Buku;

CREATE TABLE Buku (
    id INT,
    judul VARCHAR(255) NOT NULL,
    tahun_terbit INT NOT NULL,
    tipe ENUM ("Fiksi", "Non Fiksi") NOT NULL,
    genre ENUM ("Fantasi", "Horror", "Romantis", "Historical", "Biografi", "Memoir", "Ensiklopedia", "Sains") NOT NULL,
    chapter TINYINT,
    halaman SMALLINT,
    rating SMALLINT(5)
    PRIMARY KEY (id)
);
