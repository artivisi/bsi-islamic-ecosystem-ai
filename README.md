# BSI Islamic Ecosystem AI Workshop

Materi training **Workshop Penggunaan AI untuk Islamic Ecosystem Business Development**
yang disampaikan untuk PT Bank Syariah Indonesia, Tbk pada Sabtu, 23 Mei 2026
di BSI Tower Lantai 10.

## Isi Repo

| Path | Untuk Siapa | Format |
|------|-------------|--------|
| `docs/index.html` | Instruktur (proyeksi di kelas) | Standalone HTML — buka di browser, juga dipublikasi via GitHub Pages |
| `workbook/WORKBOOK.typ` + `.pdf` | Peserta kelompok | Typst → PDF, 28 hal. Lab 1–4 + prompt library + checkpoints opsional ke pimpinan |
| `workbook/BOSS-TRACK.typ` + `.pdf` | Pimpinan / pengamat di iPad | Typst → PDF, 14 hal. 4 putaran dialog dengan kelompok lewat WA / Drive |
| `workbook/diagrams/*.mmd` | Alur kerja visual | Mermaid → SVG (via mmdc), embed di workbook |
| `workbook/Makefile` | Build pipeline | `make` |

## Build

### Workbook

Typst ≥ 0.14 (`brew install typst`):

```sh
cd workbook
make             # generate WORKBOOK.pdf dan BOSS-TRACK.pdf
make diagrams    # re-render Mermaid diagram (perlu mmdc + chrome-headless-shell)
make watch       # live recompile WORKBOOK
make clean
```

Diagram alur sudah committed sebagai `.svg`. Cukup jalankan `make diagrams`
kalau Anda mengubah file `.mmd` (butuh sekali setup mmdc + Chrome headless,
detail di Makefile).

### Slides

Tidak perlu build — `docs/index.html` adalah single-file HTML. Buka langsung:

```sh
open docs/index.html
```

Atau akses versi online:
<https://artivisi.com/bsi-islamic-ecosystem-ai/>

Navigasi: tombol panah / spasi (next), arrow kiri (prev), Home/End (loncat ke awal/akhir).

## Format Workshop

- 1 hari · 08:45 – 15:15 onsite
- 15–25 peserta · dibagi 3–5 kelompok @ 5 orang
- Setiap kelompok berbagi 1 laptop lab (pre-setup oleh tim ArtiVisi)
- 4 lab dikerjakan berurutan dengan satu segmen ekosistem pilihan kelompok

Detail rundown ada di `docs/index.html` slide agenda dan di workbook bagian
"Cara Pakai Workbook".

## Instruktur

Endy Muhardin · PT ArtiVisi Intermedia
[software.endy.muhardin.com](https://software.endy.muhardin.com)
