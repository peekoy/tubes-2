CREATE DATABASE IF NOT EXISTS MyReading;

USE MyReading;

CREATE TABLE IF NOT EXISTS User (
    id INT,
    nama VARCHAR(255) NOT NULL,
    usia INT NOT NULL,
    PRIMARY KEY id
);

CREATE TABLE IF NOT EXISTS Penulis (
    id INT,
    nama VARCHAR(255) NOT NULL,
    PRIMARY KEY id
);

CREATE TABLE IF NOT EXISTS Buku (
    id INT,
    judul VARCHAR(255) NOT NULL,
    tahun_terbit INT NOT NULL,
    tipe ENUM ("Fiksi", "Non Fiksi") NOT NULL,
    genre ENUM ("Fantasi", "Horror", "Romantis", "Historical", "Biografi", "Memoir", "Ensiklopedia", "Sains") NOT NULL,
    PRIMARY KEY id
);
