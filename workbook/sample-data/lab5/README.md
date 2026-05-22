# Sample Data Lab 5 — Planning & Portfolio

Paket data fiktif untuk Lab 5 (track Planning & Portfolio Management). Distribusikan ke kelompok Planning lewat shared folder sebelum Sesi 5.1 dimulai.

## File yang Disediakan

| File | Dipakai di | Isi |
|---|---|---|
| `rkap-dept-1.xlsx` | Sesi 5.1 | Draft RKAP 2027 dari Dept BD 1 (Pesantren, Sekolah Islam, PT Islam) |
| `rkap-dept-2.xlsx` | Sesi 5.1 | Draft RKAP 2027 dari Dept BD 2 (RS Islam, Masjid, ZISWAF) |
| `rkap-dept-3.xlsx` | Sesi 5.1 | Draft RKAP 2027 dari Dept BD 3 (Halal F&B, Travel Umrah, Ormas Islam) |
| `realisasi-q1-2027.csv` | Sesi 5.4 | Realisasi vs target Q1 per 9 segmen, sudah ternormalisasi ke Rp Miliar |
| `agenda-radir.md` | Sesi 5.3 | Agenda Radir Direksi bulan berjalan — basis penyusunan deck eksekutif |
| `generate.py` | (instruktur) | Script Python untuk regenerasi semua file di atas |

## Catatan untuk Peserta

Semua nama lembaga di file ini = **lembaga publik yang sudah dikenal luas** (UIN Jakarta, RS Islam Sultan Agung Semarang, NU, Muhammadiyah, Yayasan Pondok Modern Gontor, dst). Tidak ada data prospek BSI nyata.

Angka target & realisasi = **fiktif**, tidak mencerminkan posisi BSI sesungguhnya. Distribusi tier (hijau/kuning/merah) sengaja dibuat bervariasi supaya peserta dapat case yang kaya.

## Catatan untuk Instruktur — Inkonsistensi yang Sengaja Dibuat

Tiga file RKAP **sengaja dirancang inkonsisten** antar dept supaya peserta belajar mendeteksi dan flagging sebelum konsolidasi. Inilah inti pembelajaran Sesi 5.1.

### 1. Unit Mata Uang Berbeda

| Dept | Unit | Contoh angka pembiayaan Pesantren / RS Islam / Halal F&B |
|---|---|---|
| Dept 1 | **Rp Miliar** | 850 (Pesantren) |
| Dept 2 | **Rp Juta** | 1.100.000 (RS Islam) — sama dengan 1.100 miliar |
| Dept 3 | **IDR ribuan** | 320.000.000 (Halal F&B) — sama dengan 320 miliar |

Peserta harus minta Claude *flag* perbedaan unit, bukan langsung agregasi.

### 2. Breakdown Periode Berbeda

- Dept 1: phasing **kuartalan** (Q1%, Q2%, Q3%, Q4%)
- Dept 2: **tahunan saja** (tidak ada phasing)
- Dept 3: phasing **semester** (H1%, H2%)

Konsolidasi ke level portfolio butuh decision: pakai breakdown apa? Asumsi peratan? Atau minta dept revise?

### 3. Struktur Sheet Berbeda

- Dept 1: 1 sheet, semua kolom di satu tabel
- Dept 2: **3 sheet terpisah** (Target / Budget / Asumsi) — joinable by `Segment`
- Dept 3: 1 sheet, kolom `key_assumption` inline

### 4. Bahasa & Penamaan Kolom

- Dept 1: Bahasa Indonesia formal (`Target Pembiayaan 2027 (Rp Miliar)`)
- Dept 2: campuran Eng-Ind (`Lending Target`, `FBI`, `Segment`)
- Dept 3: English `snake_case` (`financing_target_idr_k`)

Mapping kolom ke schema gabungan adalah salah satu output utama Tahap 5.1.1.

### 5. Inkonsistensi Substantif (Bukan Sekadar Format)

Peserta yang teliti akan menemukan ini di Tahap 5.1.3 (gap analysis):

- **Overlap induk ormas** — Dept 1 (Pesantren) dan Dept 3 (Ormas Islam) sama-sama klaim approach lewat NU & Muhammadiyah → resource sama, accounting beda.
- **ZISWAF vs Masjid overlap** — Dept 2 Asumsi sheet sendiri menyebut `"Target overlap dengan Masjid — perlu dikaji ulang"`. Beberapa nazhir/amil terdaftar di dua kategori sekaligus.
- **PT Islam "BSI Mobile bagi mahasiswa"** — capex 620 juta cukup tinggi untuk 45 prospek; rasio anggaran/prospek tinggi vs segmen lain.
- **Yayasan multi-unit** (Sekolah Islam asumsi) — banyak yayasan punya pesantren + sekolah + RS sekaligus. Dept BD beda pegang relationship terpisah dengan unit-unit yang sama. Ini insight cross-segment yang akan muncul lagi di Sesi 5.2 dan agenda Radir poin 7.
- **Travel Umrah financing tinggi (280 miliar)** — segmen umrah historically lebih deposit-heavy (jamaah savings). Financing target 280 miliar = 35% dari total target Travel Umrah, perlu dipertanyakan asumsinya.

## Realisasi Q1 — Variasi Tier untuk Sesi 5.4

| Segmen | Tier | Hook Early Warning |
|---|---|---|
| Pesantren | Hijau | Velocity drop — akuisisi prospek melambat Jan→Feb→Mar |
| Sekolah Islam | Kuning | Pipeline shrinkage — prospek aktif turun 30% vs Q4 |
| PT Islam | Merah | Concentration risk — 1 deal UIN Jakarta pending closing |
| RS Islam | Hijau (mixed) | Funding mix imbalance — pembiayaan 111% tapi DPK 85% |
| Masjid | Kuning | Anchor Masjid Istiqlal belum MoU |
| ZISWAF | Hijau (caveat) | Surge musiman (Ramadan), warning untuk Q2 slowdown |
| Halal F&B | Kuning | External delay — sertifikasi halal MUI tertunda 3 bulan |
| Travel Umrah | Kuning (seasonal) | Q1 seasonal low, bukan red flag |
| Ormas Islam | Merah | MoU induk ormas belum signed, pipeline tidak konversi |

Peserta diharapkan bisa membedakan **real warning** (PT Islam, Sekolah Islam, Ormas Islam) dari **seasonal/expected** (Travel Umrah, ZISWAF) dan dari **systemic** (RS Islam funding mix).

## Regenerasi Data

```
cd workbook/sample-data/lab5
python3 generate.py
```

Butuh `openpyxl`:
```
pip install openpyxl
```

Edit `generate.py` jika ingin tweak angka atau menambah segmen.
