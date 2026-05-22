# CLAUDE.md — BSI Islamic Ecosystem AI Workshop

Materi training untuk PT Bank Syariah Indonesia (BSI), unit Islamic Ecosystem
Business Development (ISE BD). Workshop satu hari, Sabtu 23 Mei 2026, di
BSI Tower Lantai 10.

## Audiens dan Konteks

- Pegawai Organik ISE BSI — **bukan teknisi IT**, terbiasa office tools
- Empat unit ikut workshop:
  - **3 Dept BD pengelola segmen** — bagi-bagi segmen di antara: pesantren,
    RS Islam, sekolah Islam, perguruan tinggi Islam, masjid, ZISWAF, halal
    F&B/fashion, ormas, travel haji/umrah. Workshop fokus pada Claude untuk:
    riset pasar segmen, profiling prospek, brief visit nasabah, pitch
    material, dan coverage event (Lab 1–4).
  - **1 Dept Planning & Portfolio Management** — bukan pengelola segmen.
    Tugas: perencanaan bisnis (target & anggaran), monitoring portofolio &
    realisasi, penyusunan materi Radir / checkpoint / dll. Workshop fokus
    pada Claude untuk: konsolidasi target & budget lintas segmen, sintesis
    insight lintas segmen, draft deck Radir, monitoring & early warning
    (Lab 5 — berjalan paralel dengan Lab 1–4)

## Editing Guidance

Bahasa Indonesia di seluruh materi. Audiens BD non-teknis — hindari jargon
software development. Pakai istilah domain BD dan syariah.

### Substitusi Istilah

| Hindari            | Pakai                                       |
|--------------------|---------------------------------------------|
| parse, parsing     | analisa, baca, kompilasi                    |
| deploy             | jalankan, terapkan, distribusikan           |
| framework          | kerangka, struktur                          |
| repository, repo   | folder kerja, kumpulan dokumen              |
| commit, push, pull | simpan, kirim, ambil versi terbaru          |
| API, endpoint      | layanan, akses data                         |
| script             | program kecil, otomasi                      |
| debug              | telusuri masalah, cek error                 |
| iterate, iteration | ulang, perbaiki bertahap                    |
| workflow           | alur kerja                                  |
| stakeholder        | pemangku kepentingan, pihak terkait         |
| user / client      | pengguna, pemakai, lembaga                  |
| customer           | nasabah, prospek                            |
| onboarding         | pengenalan awal, orientasi                  |

### Konteks Domain

- Contoh dan studi kasus harus relevan dengan ekosistem syariah Indonesia
  (pesantren, RS Islam, sekolah Islam, ZISWAF, masjid, halal F&B, ormas,
  travel umrah, PT Islam) — *bukan* kampus, *bukan* dosen
- Pakai istilah domain BD: lembaga, segmen, prospek, visit, pitch, coverage,
  brief, follow-up
- Pakai istilah syariah yang tepat: akad (bukan kontrak), jamaah / santri /
  pasien (bukan customer), infaq operasional (bukan biaya overhead)

### Lain-lain

- **Tidak ada konten komersial** (harga, invoice, kontrak) — repo ini publik
- Drop academic titles dari nama instruktur (no S.T., M.E.)
- Subscription Claude untuk workshop ini disediakan oleh **BSI** (bukan
  ArtiVisi, bukan "organizer" generik). ArtiVisi hanya membantu instalasi
  Claude Code + tools di laptop lab

## Format Workshop yang Disepakati

- 1 hari, 08:45 – 15:15 (rundown ada di slide agenda)
- 20–30 peserta, dibagi 4–6 kelompok @ 5 orang
- Setiap kelompok berbagi 1 laptop lab — *bukan* laptop pribadi peserta
- Laptop lab pre-setup oleh ArtiVisi (Claude Code + Pandoc + Whisper + FFmpeg +
  Mermaid CLI + ImageMagick + Tesseract + Playwright, login Claude sudah jadi)
- Dua track lab paralel di slot waktu yang sama:
  - Track BD (3–5 kelompok): 4 lab berurutan, tiap kelompok pilih SATU segmen
    di Lab 1 dan pakai segmen yang sama sampai Lab 4
  - Track Planning & Portfolio (1 kelompok): Lab 5 dengan 4 sesi yang sejajar
    waktu dengan Lab 1–4 BD (konsolidasi RKAP, sintesis lintas segmen,
    materi Radir, monitoring portofolio)

## File Map

| Path | Isi |
|------|-----|
| `docs/index.html` | Slide deck instruktur, standalone HTML + embedded CSS/JS. Disajikan via GitHub Pages dari folder ini |
| `docs/assets/` | Gambar diagram (lanskap, evolusi AI) |
| `workbook/WORKBOOK.typ` | Sumber workbook peserta (Typst) |
| `workbook/WORKBOOK.pdf` | PDF cetak/share. Committed agar HEAD selalu mencerminkan yang dibagikan |
| `workbook/BOSS-TRACK.typ` | Track terpisah untuk pimpinan / pengamat di iPad |
| `workbook/Makefile` | `make` / `make watch` / `make clean` |
| `workbook/diagrams/` | Source `.mmd` Mermaid + PNG hasil render |
| `workbook/sample-data/lab5/` | Data fiktif untuk Track Planning & Portfolio (3 RKAP XLSX, realisasi CSV, agenda Radir, generator Python). README di folder menjelaskan inkonsistensi yang sengaja dibuat |

## Do Not

- Jangan masukkan data prospek BSI nyata (nama lembaga spesifik dengan kontak
  dst). Contoh boleh pakai lembaga publik yang sudah dikenal luas
- Jangan import struktur/template dari proposal repo — proposal punya format
  komersial yang tidak cocok untuk materi training
