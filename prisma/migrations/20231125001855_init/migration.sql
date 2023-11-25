-- CreateTable
CREATE TABLE "Spp" (
    "id_spp" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "tahun" INTEGER NOT NULL,
    "nominal" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "Kelas" (
    "id_kelas" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nama_kelas" TEXT NOT NULL,
    "kompetensi_keahlian" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Petugas" (
    "id_petugas" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "nama_petugas" TEXT NOT NULL,
    "level" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Siswa" (
    "nisn" TEXT NOT NULL PRIMARY KEY,
    "nis" TEXT NOT NULL,
    "nama" TEXT NOT NULL,
    "id_kelas" INTEGER NOT NULL,
    "alamat" TEXT NOT NULL,
    "no_telp" TEXT NOT NULL,
    "id_spp" INTEGER NOT NULL,
    CONSTRAINT "Siswa_id_kelas_fkey" FOREIGN KEY ("id_kelas") REFERENCES "Kelas" ("id_kelas") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "Siswa_id_spp_fkey" FOREIGN KEY ("id_spp") REFERENCES "Spp" ("id_spp") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Pembayaran" (
    "id_pembayaran" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "id_petugas" INTEGER NOT NULL,
    "nisn" TEXT NOT NULL,
    "tgl_bayar" DATETIME NOT NULL,
    "bulan_dibayar" TEXT NOT NULL,
    "tahun_dibayar" TEXT NOT NULL,
    "id_spp" INTEGER NOT NULL,
    "jumlah_dibayar" INTEGER NOT NULL,
    CONSTRAINT "Pembayaran_id_petugas_fkey" FOREIGN KEY ("id_petugas") REFERENCES "Petugas" ("id_petugas") ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT "Pembayaran_nisn_fkey" FOREIGN KEY ("nisn") REFERENCES "Siswa" ("nisn") ON DELETE CASCADE ON UPDATE CASCADE
);
