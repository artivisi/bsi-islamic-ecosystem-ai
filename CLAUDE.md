# CLAUDE.md — BSI Islamic Ecosystem AI Workshop

Materi training untuk PT Bank Syariah Indonesia (BSI), unit Islamic Ecosystem
Business Development (ISE BD). Workshop satu hari, Sabtu 23 Mei 2026, di
BSI Tower Lantai 10.

## Audiens dan Konteks

- Pegawai Organik ISE BSI — **bukan teknisi IT**, terbiasa office tools
- Tugas mereka: orkestrasi BD lintas segmen ekosistem Islam — pesantren,
  RS Islam, sekolah Islam, perguruan tinggi Islam, masjid, ZISWAF, halal
  F&B/fashion, ormas, travel haji/umrah
- Workshop fokus pada Claude untuk: riset pasar segmen, profiling prospek,
  brief visit nasabah, pitch material, dan coverage event

## Editing Guidance

- Bahasa Indonesia. Hindari jargon software development (parse, deploy,
  framework, repository, commit/push) — peserta bukan developer
- Pakai istilah domain: lembaga, segmen, prospek, BD, visit, pitch, coverage
- Contoh dan studi kasus harus relevan dengan ekosistem syariah Indonesia
  (pesantren, RS Islam, dst — bukan kampus, bukan dosen)
- **Tidak ada konten komersial** (harga, invoice, kontrak) — repo ini publik
- Drop academic titles dari nama instruktur (no S.T., M.E.)

## Format Workshop yang Disepakati

- 1 hari, 08:45 – 15:15 (rundown ada di slide agenda)
- 15–25 peserta, dibagi 3–5 kelompok @ 5 orang
- Setiap kelompok berbagi 1 laptop lab — *bukan* laptop pribadi peserta
- Laptop lab pre-setup oleh ArtiVisi (Claude Code + Pandoc + Whisper + FFmpeg +
  Mermaid CLI + ImageMagick + Tesseract + Playwright, login Claude sudah jadi)
- 4 lab dikerjakan berurutan, semua kelompok memilih SATU segmen di Lab 1 dan
  pakai segmen yang sama sampai Lab 4

## File Map

| Path | Isi |
|------|-----|
| `slides/index.html` | Slide deck instruktur, standalone HTML + embedded CSS/JS |
| `slides/assets/` | Gambar diagram (lanskap, evolusi AI) |
| `workbook/WORKBOOK.typ` | Sumber workbook peserta (Typst) |
| `workbook/WORKBOOK.pdf` | PDF cetak/share. Committed agar HEAD selalu mencerminkan yang dibagikan |
| `workbook/Makefile` | `make` / `make watch` / `make clean` |

## Do Not

- Jangan masukkan data prospek BSI nyata (nama lembaga spesifik dengan kontak
  dst). Contoh boleh pakai lembaga publik yang sudah dikenal luas
- Jangan import struktur/template dari proposal repo — proposal punya format
  komersial yang tidak cocok untuk materi training
