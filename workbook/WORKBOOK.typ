#set document(
  title: "Workshop AI ISE BSI — Workbook Peserta",
  author: "Endy Muhardin",
)

#set page(
  paper: "a4",
  margin: (x: 2.2cm, top: 2.5cm, bottom: 2cm),
  numbering: "1 / 1",
  number-align: center,
)

#set text(
  font: ("Helvetica Neue", "Arial"),
  size: 10.5pt,
  lang: "id",
)

#set par(justify: true, leading: 0.65em)

#let brand = rgb("#2e3192")
#let accent = rgb("#58c034")
#let mute = rgb("#64748b")

#show heading.where(level: 1): it => [
  #pagebreak(weak: true)
  #v(0.5em)
  #text(fill: brand, size: 22pt, weight: "bold")[#it.body]
  #v(0.3em)
  #line(length: 100%, stroke: 1pt + accent)
  #v(0.8em)
]

#show heading.where(level: 2): it => block(
  sticky: true,
  above: 1.5em,
  below: 0.7em,
  breakable: false,
)[
  #text(fill: brand, size: 14pt, weight: "bold")[#it.body]
]

#show heading.where(level: 3): it => block(
  sticky: true,
  above: 1.1em,
  below: 0.5em,
  breakable: false,
)[
  #text(fill: accent, size: 11.5pt, weight: "bold")[#it.body]
]

#show raw.where(block: true): it => block(
  fill: rgb("#f1f5f9"),
  inset: 10pt,
  radius: 4pt,
  width: 100%,
  text(font: ("Menlo", "Courier New"), size: 9pt, it)
)

#show raw.where(block: false): it => box(
  fill: rgb("#f1f5f9"),
  inset: (x: 4pt, y: 1pt),
  outset: (y: 2pt),
  radius: 2pt,
  text(font: ("Menlo", "Courier New"), size: 9.5pt, it)
)

#let prompt(body) = block(
  fill: rgb("#fef3c7"),
  stroke: (left: 3pt + accent),
  inset: 10pt,
  radius: 2pt,
  width: 100%,
  [
    #text(fill: accent, size: 9pt, weight: "bold")[PROMPT]\
    #text(font: ("Menlo", "Courier New"), size: 9.5pt)[#body]
  ]
)

#let tip(body) = block(
  fill: rgb("#dbeafe"),
  stroke: (left: 3pt + rgb("#1e40af")),
  inset: 10pt,
  radius: 2pt,
  width: 100%,
  [
    #text(fill: rgb("#1e40af"), size: 9pt, weight: "bold")[TIPS]\
    #body
  ]
)

#let checkpoint(body) = block(
  fill: rgb("#f0fdf4"),
  stroke: (left: 3pt + accent),
  inset: 10pt,
  radius: 2pt,
  width: 100%,
  [
    #text(fill: accent, size: 9pt, weight: "bold")[CHECKPOINT — KIRIM KE PIMPINAN (OPSIONAL)]\
    #body
  ]
)

// ============================================================
// COVER PAGE
// ============================================================

#set page(numbering: none, margin: (x: 2.5cm, y: 3cm))

#align(center)[
  #v(1.5cm)
  #image("assets/logo-artivisi.svg", width: 5cm)
  #v(1cm)
  #text(fill: accent, size: 11pt, weight: "bold")[
    #upper[Workbook Peserta]
  ]
  #v(0.5em)
  #text(fill: brand, size: 28pt, weight: "bold")[
    Workshop Penggunaan AI
  ]
  #v(0.3em)
  #text(fill: brand, size: 18pt)[
    untuk Islamic Ecosystem\
    Business Development
  ]
  #v(2cm)
  #line(length: 30%, stroke: 1.5pt + accent)
  #v(0.5em)
  #text(fill: mute, size: 11pt)[
    PT Bank Syariah Indonesia, Tbk\
    Sabtu, 23 Mei 2026 · BSI Tower Lantai 10
  ]
  #v(2.5cm)
  #text(fill: mute, size: 10pt)[
    Disusun oleh:\
    *Endy Muhardin* · PT ArtiVisi Intermedia\
    artivisi.com · software.endy.muhardin.com
  ]
]

#pagebreak()

// ============================================================
// Restore page numbering
// ============================================================

#set page(numbering: "1 / 1", margin: (x: 2.2cm, top: 2.5cm, bottom: 2cm))
#counter(page).update(1)

// ============================================================
// DAFTAR ISI
// ============================================================

#text(fill: brand, size: 22pt, weight: "bold")[Daftar Isi]
#v(0.3em)
#line(length: 100%, stroke: 1pt + accent)
#v(1em)

#outline(title: none, indent: auto, depth: 2)

// ============================================================
// 1. CARA PAKAI WORKBOOK
// ============================================================

= Cara Pakai Workbook

Workbook ini menemani Anda di lab workshop *Workshop Penggunaan AI untuk Islamic Ecosystem Business Development*. Setelah workshop, workbook ini juga dapat dipakai sebagai rujukan ketika Anda mengulang latihan secara mandiri dengan akun Claude Pro pribadi.

Workshop dijalankan dalam dua track paralel sesuai unit kerja peserta:

- *Track BD* (3 dept BD pengelola segmen) — Lab 1 sampai Lab 4: riset pasar segmen, profiling prospek + brief visit, pitch material per segmen, coverage event.
- *Track Planning & Portfolio* (Dept Planning & Portfolio Management) — Lab 5 dengan 4 sesi yang berjalan di slot waktu yang sama dengan Lab 1–4: konsolidasi target & anggaran, sintesis insight lintas segmen, materi Radir / checkpoint, monitoring portofolio.

== Apa yang Akan Anda Pelajari

- Konsep dasar AI generasi 2026 dan cara berinteraksi yang produktif
- Untuk Track BD: penggunaan Claude untuk lima area aktivitas BD — riset pasar, profiling prospek, brief visit, pitch material, dan coverage event
- Untuk Track Planning & Portfolio: penggunaan Claude untuk empat area aktivitas planning — konsolidasi target & anggaran lintas segmen, sintesis insight lintas segmen, penyusunan materi Radir / checkpoint, dan monitoring portofolio + early warning
- Format file yang ramah AI dan tool yang dijalankan oleh AI
- Workflow kerja kelompok di laptop lab bersama

== Format Workshop

#table(
  columns: (1fr, 2fr),
  stroke: (x, y) => if y == 0 { (bottom: 1pt + brand) } else { (bottom: 0.5pt + rgb("#e2e8f0")) },
  [*Aspek*], [*Detail*],
  [Tanggal], [Sabtu, 23 Mei 2026],
  [Waktu], [08:45 – 15:15],
  [Tempat], [BSI Tower Lantai 10],
  [Peserta], [20–30 pegawai organik ISE (3 dept BD + 1 dept Planning & Portfolio)],
  [Format kerja], [4–6 kelompok @ 5 orang, 1 laptop lab per kelompok (3–5 kelompok Track BD + 1 kelompok Track Planning)],
  [Bahasa], [Bahasa Indonesia],
)

== Rundown

Sesi pleno (warna abu-abu) diikuti semua peserta bersama. Slot lab (warna putih) berjalan paralel — Track BD mengerjakan Lab 1–4, Track Planning & Portfolio mengerjakan Lab 5.1–5.4 di slot waktu yang sama.

#table(
  columns: (auto, 1.2fr, 1.2fr, auto),
  stroke: (x, y) => if y == 0 { (bottom: 1pt + brand) } else { (bottom: 0.5pt + rgb("#e2e8f0")) },
  [*Waktu*], [*Track BD*], [*Track Planning & Portfolio*], [*Durasi*],
  [08:45 – 09:00], table.cell(colspan: 2, fill: rgb("#f1f5f9"))[Pembukaan seremonial (Pembukaan, Ayat Suci, Opening Speech)], [15 mnt],
  [09:00 – 09:30], table.cell(colspan: 2, fill: rgb("#f1f5f9"))[Lanskap AI 2026], [30 mnt],
  [09:30 – 10:00], table.cell(colspan: 2, fill: rgb("#f1f5f9"))[Evolusi penggunaan AI (presentasi + demo)], [30 mnt],
  [10:00 – 10:15], table.cell(colspan: 2, fill: rgb("#f1f5f9"))[Coffee break], [15 mnt],
  [10:15 – 10:45], table.cell(colspan: 2, fill: rgb("#f1f5f9"))[Setup akun, browser, tool dasar], [30 mnt],
  [10:45 – 11:45], [*Lab 1:* Riset Pasar Segmen Ekosistem], [*Lab 5.1:* Konsolidasi Target & Anggaran Lintas Segmen], [60 mnt],
  [11:45 – 12:45], table.cell(colspan: 2, fill: rgb("#f1f5f9"))[Ishoma], [60 mnt],
  [12:45 – 13:30], [*Lab 2:* Profiling Prospek + Brief Visit], [*Lab 5.2:* Sintesis Insight Lintas Segmen], [45 mnt],
  [13:30 – 14:15], [*Lab 3:* Pitch Material per Segmen], [*Lab 5.3:* Materi Radir / Checkpoint], [45 mnt],
  [14:15 – 14:30], table.cell(colspan: 2, fill: rgb("#f1f5f9"))[Coffee break], [15 mnt],
  [14:30 – 15:00], [*Lab 4:* Coverage Event], [*Lab 5.4:* Monitoring Portofolio & Early Warning], [30 mnt],
  [15:00 – 15:15], table.cell(colspan: 2, fill: rgb("#f1f5f9"))[Diskusi, Q&A, penutup], [15 mnt],
)

== Format Kerja Kelompok

- 1 laptop lab dipakai bersama oleh 5 orang dalam kelompok
- Pilih ketua tim di awal — yang memegang keyboard pertama kali
- Anggota bergantian mengoperasikan laptop di setiap lab
- Diskusikan setiap output bersama sebelum lanjut ke tahap berikutnya
- *Kelompok Track BD:* memilih *satu segmen* di Lab 1 dan menggunakan segmen yang sama sampai Lab 4
- *Kelompok Track Planning & Portfolio:* tidak memilih segmen — bekerja di level portofolio (lintas segmen) sepanjang Lab 5.1–5.4

#tip[
  Yang memegang keyboard fokus pada menjalankan prompt. Yang lain fokus pada *isi* dan *kualitas output* — mengkritisi, menyarankan perbaikan, dan mencocokkan terhadap pengetahuan BD / planning Anda.
]

== Alur Workshop Hari Ini

#figure(
  image("diagrams/group-workflow.png", width: 95%),
)

== Kalau Pimpinan Ikut di iPad Track

Bila ada pimpinan / pengamat yang bergabung lewat iPad, mereka mengikuti dokumen terpisah `BOSS-TRACK.pdf` — 4 putaran dialog di mana mereka kirim arahan/insight ke kelompok lewat WhatsApp atau Drive, lalu mengolah balik output kelompok jadi tracker konsolidasi di akhir workshop.

Untuk kelompok, ini muncul sebagai *checkpoint hijau* di akhir setiap lab — moment di mana output kelompok dikirim ke pimpinan dan feedback diterima sebelum lab berikutnya. Checkpoint bersifat *opsional*: kalau pimpinan tidak hadir, lakukan self-review saja dan workshop tetap berjalan utuh.

#figure(
  image("diagrams/boss-interaction.png", width: 95%),
)

// ============================================================
// 2. CHEAT SHEET — BERINTERAKSI DENGAN CLAUDE
// ============================================================

= Cheat Sheet: Berinteraksi dengan Claude

== Anatomi Prompt yang Baik

Prompt yang menghasilkan output bagus biasanya punya empat unsur:

#table(
  columns: (auto, 1fr, 1.5fr),
  stroke: (x, y) => if y == 0 { (bottom: 1pt + brand) } else { (bottom: 0.5pt + rgb("#e2e8f0")) },
  [*Unsur*], [*Pertanyaan*], [*Contoh*],
  [Konteks], [Siapa Anda, apa pekerjaan Anda?], [Saya BD di BSI, fokus segmen pesantren],
  [Tugas], [Apa yang harus AI lakukan?], [Buat daftar 20 pesantren terbesar di Jatim],
  [Format], [Output dalam bentuk apa?], [Tabel dengan kolom: nama, kota, santri, unit usaha],
  [Batasan], [Apa yang harus dihindari?], [Hanya pesantren modern (Gontor-style), bukan tradisional salaf],
)

== Pola Prompt yang Sering Dipakai

=== Pola 1: Kompilasi Data

#prompt[
Cari [JUMLAH] [JENIS LEMBAGA] di [WILAYAH]. Buat tabel dengan kolom:
[KOLOM 1], [KOLOM 2], [KOLOM 3]. Sertakan sumber datanya.
]

=== Pola 2: Profiling Mendalam

#prompt[
Buat profil mendalam [NAMA LEMBAGA] dengan struktur:
1. Latar belakang dan tahun berdiri
2. Kepemimpinan dan struktur organisasi
3. Skala (jamaah/santri/pasien/jaringan)
4. Unit usaha dan profil keuangan publik (jika ada)
5. Isu strategis dan agenda terkini
6. Potensi kebutuhan layanan keuangan syariah
]

=== Pola 3: Adaptasi Tone

#prompt[
Saya akan visit ke [NAMA LEMBAGA] minggu depan. Sesuaikan brief
ini agar tone-nya cocok dengan audiens [PROFIL AUDIENS — misal: pengasuh
pesantren tradisional, direktur RS, ketua yayasan]. Hindari jargon
korporat, pakai bahasa yang menghormati struktur lembaga mereka.
]

=== Pola 4: Iterasi & Refinement

#prompt[
Output sebelumnya terlalu [GENERIK / FORMAL / PANJANG / KORPORAT].
Tulis ulang dengan:
- [PERBAIKAN 1]
- [PERBAIKAN 2]
- [PERBAIKAN 3]
]

== Tips Umum

- Mulai dari prompt sederhana, perbaiki bertahap dari sana. Jangan langsung tulis prompt panjang
- Kalau output kurang pas: katakan dengan jelas *apa* yang kurang dan minta tulis ulang
- Untuk pekerjaan banyak tahap, minta Claude buat *rencana* dulu sebelum mulai
- Selalu cek kebenaran data — Claude bisa salah, terutama untuk fakta rinci tentang lembaga
- Simpan prompt yang berhasil untuk dipakai ulang

// ============================================================
// 3. LAB 1 — RISET PASAR SEGMEN
// ============================================================

= Lab 1: Riset Pasar Segmen Ekosistem

*Durasi:* 60 menit (10:45 – 11:45)\
*Output:* Spreadsheet 15–20 prospek dengan profil dasar

== Pilih Segmen Kelompok

Setiap kelompok memilih *satu* segmen dari daftar berikut. Segmen yang sama akan dipakai sampai Lab 4.

#grid(
  columns: 3,
  gutter: 0.8em,
  [- Pesantren],
  [- Sekolah Islam],
  [- RS Islam],
  [- Perguruan Tinggi Islam],
  [- Masjid],
  [- ZISWAF],
  [- Halal F&B / Fashion],
  [- Travel haji / umrah],
  [- Ormas Islam],
)

#tip[
  Pilih segmen yang Anda *sudah punya feeling*-nya — yang sudah pernah Anda tangani sebelumnya. Workshop ini bukan tempat belajar segmen baru, tapi tempat belajar memakai AI di segmen yang Anda kenal.
]

== Tahap 1.1 — Kompilasi Awal Prospek

Tujuan: dapatkan daftar 15–20 lembaga prospek di segmen Anda, dengan profil dasar.

#prompt[
Saya BD di BSI fokus segmen [SEGMEN]. Tolong cari [15–20] lembaga
[SEGMEN] terbesar di [WILAYAH — misal: Jawa Timur / nasional / Jabodetabek].

Buat tabel dengan kolom:
- nama
- kota
- skala (jumlah santri/jamaah/pasien/dst)
- unit usaha / kegiatan utama
- induk ormas atau yayasan (jika ada)
- kontak publik (website, telepon, alamat)

Format output: CSV agar bisa langsung di-import ke Excel.
]

== Tahap 1.2 — Tambah Skor Potensi

#prompt[
Untuk tabel di atas, tambahkan kolom "potensi_bsi" dengan skor 1–5
berdasar faktor berikut:

- Skala lembaga (semakin besar, semakin tinggi skor)
- Kompleksitas keuangan (semakin banyak unit usaha, semakin tinggi)
- Adopsi teknologi (yang sudah punya layanan digital, lebih siap)
- Jaringan / pengaruh (alumni terkenal, jaringan ormas luas)

Jelaskan rationale skor untuk top 5 lembaga.
]

== Tahap 1.3 — Pemetaan Ekosistem

#prompt[
Dari tabel di atas, petakan hubungan antar lembaga:
- Lembaga mana saja yang punya induk ormas yang sama?
- Apakah ada alumni dari satu lembaga yang sekarang pimpin lembaga lain?
- Adakah konsorsium atau federasi yang menaungi beberapa lembaga ini?

Sajikan dalam bentuk diagram (Mermaid format) atau daftar terstruktur.
]

== Output Lab 1

Yang harus disimpan kelompok di akhir Lab 1:

- `output/prospek-[segmen].csv` — daftar prospek dengan skor potensi
- `output/peta-ekosistem-[segmen].md` — pemetaan hubungan antar lembaga
- `output/top-5-rationale-[segmen].md` — penjelasan skor top 5 prospek

#tip[
  Pastikan satu anggota kelompok mengecek kebenaran data terhadap pengetahuan lapangan. AI bisa salah angka — terutama untuk lembaga yang kurang dikenal di internet.
]

#checkpoint[
  Selama Ishoma, upload `prospek-[segmen].csv` ke shared folder workshop atau kirim via WA ke pimpinan yang ikut di iPad track.

  *Jika pimpinan hadir:* Anda akan menerima paket challenge questions di awal Lab 2 — upload file itu ke Claude Anda sebelum mulai brief visit.

  *Jika pimpinan tidak hadir:* lakukan self-review 5 menit dengan tim — apa yang sudah kuat? Apa yang masih perlu didalami? Catat 3 pertanyaan untuk tim sendiri sebelum lanjut Lab 2.
]

// ============================================================
// 4. LAB 2 — BRIEF VISIT NASABAH
// ============================================================

= Lab 2: Profiling Prospek + Brief Visit Nasabah

*Durasi:* 45 menit (12:45 – 13:30)\
*Output:* Brief visit 2–3 halaman untuk 1 prospek prioritas

== Tahap 2.1 — Pilih Prospek Prioritas

Dari top 5 prospek Lab 1, pilih *satu* yang akan dijadikan target latihan brief visit. Pertimbangkan: skala potensi, kelayakan visit dalam 30 hari ke depan, dan kemudahan akses informasi publik.

== Tahap 2.2 — Profil Mendalam

#prompt[
Saya akan visit ke [NAMA LEMBAGA] dalam 2 minggu. Buat profil
mendalam dengan struktur:

1. *Latar Belakang* (3–5 kalimat) — sejarah, posisi di segmen,
   ciri khas

2. *Kepemimpinan* — siapa pengambil keputusan utama, jalur
   pengaruh, profil singkat tiap nama kunci

3. *Skala dan Operasi* — angka jamaah/santri/staf, lokasi, unit
   usaha, anggaran indikatif jika publik

4. *Agenda Strategis 2026* — apa fokus mereka tahun ini? Ekspansi?
   Digitalisasi? Sertifikasi? Renovasi?

5. *Isu yang Sedang Dihadapi* — apa tantangan publik mereka
   (regulasi, sumber dana, suksesi, dll)?

6. *Layanan Keuangan Saat Ini* — bank yang sudah dipakai,
   produk yang sudah dipakai, mitra strategis
]

== Tahap 2.3 — Talking Points & Pertanyaan Discovery

#prompt[
Berdasar profil di atas, generate 8–10 talking points untuk
visit, dengan fokus produk [PRODUK BSI — misal: pembiayaan
infrastruktur / cash management / BSI Mobile / wakaf produktif].

Untuk setiap talking point:
- Pesan utama (1 kalimat)
- Manfaat konkret untuk lembaga mereka
- Contoh kasus yang relevan dengan profil mereka

Setelah itu, susun 6–8 pertanyaan discovery yang akan saya
ajukan saat visit. Pertanyaan harus terbuka, menggali kebutuhan,
bukan langsung sales.
]

== Tahap 2.4 — Follow-up Plan

#prompt[
Susun follow-up plan pasca-visit untuk 14 hari pertama:

- Hari H+1: action apa?
- Hari H+3: kontak siapa, dengan pesan apa?
- Hari H+7: follow-up materi apa?
- Hari H+14: review progress, next steps

Sertakan draft email follow-up Day-1 (terima kasih + ringkasan
diskusi + commitment timeline next step).
]

== Output Lab 2

- `output/brief-visit-[nama-lembaga].md` — brief lengkap 2–3 halaman
- `output/talking-points-[nama-lembaga].md` — talking points + pertanyaan discovery
- `output/follow-up-plan-[nama-lembaga].md` — rencana 14 hari + draft email

#checkpoint[
  Sebelum coffee break sesi siang (14:15), upload `brief-visit-[lembaga].md` ke shared folder workshop.

  *Jika pimpinan hadir:* Anda akan terima dokumen "Strategic Hooks" di awal Lab 3 — upload ke Claude Anda untuk dipakai saat menyusun pitch deck.

  *Jika pimpinan tidak hadir:* baca ulang brief Anda di awal Lab 3. Pilih 1 angle naratif yang akan jadi benang merah pitch deck.
]

// ============================================================
// 5. LAB 3 — PITCH MATERIAL
// ============================================================

= Lab 3: Pitch Material per Segmen

*Durasi:* 45 menit (13:30 – 14:15)\
*Output:* Pitch deck 8–12 slide dalam format PPTX

#tip[
  *Jika pimpinan ikut di iPad track* dan sudah kirim dokumen "Strategic Hooks" via shared folder atau WA grup — upload dokumen itu ke Claude di laptop Anda *sebelum* Tahap 3.1. Insight lintas-segmen di Strategic Hooks akan membuat pitch deck Anda lebih tajam, bukan generic.
]

== Tahap 3.1 — Pilih Produk BSI

Pilih *satu* produk BSI yang relevan untuk segmen kelompok Anda dan prospek di Lab 2. Pertimbangan:

- Relevansi dengan kebutuhan yang teridentifikasi di brief Lab 2
- Tingkat readiness lembaga prospek untuk produk tersebut
- Ada referensi internal (case study, success story) yang bisa diadaptasi

== Tahap 3.2 — Outline Pitch Deck

#prompt[
Susun outline pitch deck 8–10 slide untuk produk [PRODUK BSI],
yang akan disampaikan ke [NAMA LEMBAGA / PROFIL SEGMEN].

Gunakan struktur Problem → Solution → Proof → Ask:

1. Cover
2. Tentang BSI (1 slide, ringkas, fokus rekam jejak di segmen)
3. Tantangan / kebutuhan [SEGMEN] terkait [TOPIK PRODUK]
4. Solusi: [PRODUK BSI] — apa, untuk apa, untuk siapa
5. Cara kerja (alur layanan, requirement, timeline)
6. Manfaat konkret untuk [SEGMEN] — 3–4 poin
7. Case study / referensi pelanggan serupa (jika ada)
8. Proposal kerjasama awal — pilot, pricing indikatif, timeline
9. Q&A / next steps
10. Cover penutup

Untuk tiap slide, sertakan: judul, 3–5 bullet points, dan
catatan visual yang dibutuhkan (chart, foto, diagram).
]

== Tahap 3.3 — Adaptasi Tone & Bahasa

#prompt[
Outline pitch deck di atas masih terasa terlalu umum / korporat.
Sesuaikan dengan profil audiens [SEGMEN]:

- Gunakan istilah yang akrab bagi mereka (contoh: pakai
  "akad" bukan "kontrak", "jamaah" bukan "nasabah",
  "infaq operasional" bukan "biaya overhead")
- Sertakan dalil syariah singkat di slide yang relevan
- Pakai contoh kasus yang dekat dengan keseharian segmen —
  bukan contoh dari dunia korporat umum
- Gaya bahasa: hormat, kemitraan, bukan jualan
]

== Tahap 3.4 — Generate File PPTX

#prompt[
Buat file PPTX dari outline di atas. Pakai layout yang clean
dan profesional:

- Cover dengan logo BSI dan nama lembaga prospek
- Color scheme: hijau BSI sebagai primary, abu-abu untuk teks
- Font: standar (Calibri / Helvetica) supaya mudah dibuka di komputer lain
- Setiap slide max 5 bullet, prioritas visual hierarchy
- Slide proof dengan space untuk insert foto/chart manual

Setelah generate, simpan ke output/pitch-[produk]-[segmen].pptx
]

== Output Lab 3

- `output/pitch-[produk]-[segmen]-outline.md` — outline final
- `output/pitch-[produk]-[segmen].pptx` — file PPTX siap edit/present
- `output/pitch-notes-[produk].md` — speaker notes per slide

#tip[
  AI biasanya cukup baik di outline & teks slide, tapi kurang di tata letak visual yang halus. Anggap output PPTX sebagai *draft pertama* — polesan visualnya tetap perlu dikerjakan manual di PowerPoint.
]

#checkpoint[
  Upload pitch outline / PPTX ke shared folder kelompok Anda.

  *Jika pimpinan hadir:* output akan masuk ke consolidated tracker yang di-share di akhir workshop.

  *Jika pimpinan tidak hadir:* pastikan ketua kelompok save file ke folder sebagai bagian dari paket output yang akan diserahkan ke unit ISE.
]

// ============================================================
// 6. LAB 4 — COVERAGE EVENT
// ============================================================

= Lab 4: Coverage Event

*Durasi:* 30 menit (14:30 – 15:00)\
*Output:* Paket materi coverage event lengkap

== Tahap 4.1 — Skenario Event

Asumsikan kelompok Anda menangani event peresmian / sosialisasi BSI di lembaga prospek dari Lab 2. Tentukan skenario singkat:

- Jenis event: peresmian / sosialisasi / penandatanganan MoU / talkshow
- Lokasi: di lembaga prospek atau di venue netral
- Audiens: internal lembaga prospek, undangan eksternal, atau hybrid
- Output yang dibutuhkan: caption sosmed, laporan internal, follow-up

== Tahap 4.2 — Caption Sosial Media

#prompt[
Buat 5 variasi caption sosial media untuk event [JENIS EVENT] BSI
di [NAMA LEMBAGA] pada [TANGGAL]:

- Variasi 1: untuk Instagram (max 200 kata, tone hangat)
- Variasi 2: untuk LinkedIn (max 300 kata, tone profesional)
- Variasi 3: untuk Instagram Story / WhatsApp Status (max 50 kata)
- Variasi 4: untuk Twitter/X (max 240 karakter, bisa disambung jadi thread)
- Variasi 5: caption foto kelompok (1–2 kalimat)

Sertakan 5–7 hashtag yang relevan. Tone: ekosistem syariah,
bukan korporat agresif. Hindari kata-kata seperti "launching",
"breakthrough" — pakai "memulai", "menjalin kemitraan".
]

== Tahap 4.3 — Laporan Internal

#prompt[
Susun laporan internal 1 halaman untuk event [JENIS EVENT] di
[NAMA LEMBAGA]. Struktur:

1. Ringkasan Eksekutif (3 kalimat)
2. Tanggal, lokasi, jumlah peserta
3. Agenda yang berjalan
4. Output / kesepakatan yang dicapai
5. Talking points yang muncul dari audiens
6. Follow-up action items dengan PIC dan deadline
7. Estimasi dampak (kualitatif: relasi, awareness; kuantitatif:
   nasabah potensial, dst)

Format: ringkas, bullet point, siap di-forward ke management.
]

== Tahap 4.4 — Follow-up Checklist

#prompt[
Buat checklist follow-up 14 hari pasca-event:

H+1: action segera (thank you note, foto resmi)
H+3: distribusi materi event ke audiens
H+7: pertemuan internal review
H+14: konversi insight ke action plan BD

Untuk setiap item: deskripsi, PIC, deadline, materi pendukung
yang dibutuhkan.
]

== Output Lab 4

- `output/caption-event-[lembaga].md` — 5 variasi caption + hashtags
- `output/laporan-event-[lembaga].md` — laporan internal 1 halaman
- `output/followup-checklist-[lembaga].md` — checklist 14 hari

#checkpoint[
  Upload paket coverage event ke shared folder kelompok.

  *Jika pimpinan hadir:* paket dipakai untuk closing synthesis di sesi Q&A.

  *Jika pimpinan tidak hadir:* paket otomatis masuk ke shared folder workshop untuk distribusi ke seluruh tim ISE pasca-workshop.
]

// ============================================================
// 7. LAB 5 — PLANNING & PORTFOLIO (TRACK PARALEL)
// ============================================================

= Lab 5: Planning & Portfolio Management

Lab ini dikerjakan oleh kelompok Track Planning & Portfolio sepanjang hari, dengan 4 sesi yang sejajar waktu dengan Lab 1–4 di Track BD:

#table(
  columns: (auto, 1fr, auto),
  stroke: (x, y) => if y == 0 { (bottom: 1pt + brand) } else { (bottom: 0.5pt + rgb("#e2e8f0")) },
  [*Slot*], [*Sesi*], [*Durasi*],
  [10:45 – 11:45], [*Sesi 5.1:* Konsolidasi Target & Anggaran Lintas Segmen], [60 mnt],
  [12:45 – 13:30], [*Sesi 5.2:* Sintesis Insight Lintas Segmen], [45 mnt],
  [13:30 – 14:15], [*Sesi 5.3:* Materi Radir / Checkpoint], [45 mnt],
  [14:30 – 15:00], [*Sesi 5.4:* Monitoring Portofolio & Early Warning], [30 mnt],
)

Berbeda dengan Track BD yang memilih satu segmen, kelompok Planning bekerja di level *portofolio* — lintas seluruh segmen ekosistem (pesantren, RS Islam, sekolah Islam, PT Islam, masjid, ZISWAF, halal F&B, ormas, travel umrah). Dua sesi (5.2 dan 5.3) memanfaatkan output yang sudah dihasilkan kelompok BD di shared folder.

#tip[
  Sebelum Sesi 5.1 dimulai, fasilitator membagikan paket *sample data planning* ke shared folder. Paket berisi:

  - `rkap-dept-1.xlsx`, `rkap-dept-2.xlsx`, `rkap-dept-3.xlsx` — draft RKAP 2027 dari 3 dept BD (format dan unit *sengaja* tidak seragam — bagian dari latihan normalisasi)
  - `realisasi-q1-2027.csv` — data realisasi vs target Q1 2027 per 9 segmen (untuk Sesi 5.4)
  - `agenda-radir.md` — agenda Radir Direksi bulan berjalan (untuk Sesi 5.3)

  Semua nama lembaga di sample data adalah lembaga publik yang sudah dikenal luas — *tidak* memakai data prospek BSI nyata. Angka target & realisasi seluruhnya fiktif.
]

== Sesi 5.1 — Konsolidasi Target & Anggaran Lintas Segmen

*Durasi:* 60 menit (10:45 – 11:45)\
*Output:* Portfolio view RKAP 2027 + gap analysis + draft narrative approval

=== Skenario

Anda baru saja menerima draft RKAP 2027 dari 3 dept BD ekosistem. Tiap dept mengirim file Excel sendiri dengan format sedikit berbeda — kolom yang ada, satuan angka, dan periode breakdown tidak konsisten. Tugas Anda hari ini: kompilasi jadi satu portfolio view yang utuh, identifikasi gap dan inkonsistensi, lalu susun draft narrative untuk dipresentasikan ke Direksi minggu depan.

=== Tahap 5.1.1 — Normalisasi Input Multi-Dept

Upload tiga file draft RKAP ke Claude. Mulai dengan minta kompilasi struktur.

#prompt[
Saya Planning & Portfolio di unit ISE BSI. Saya terima 3 file draft
RKAP 2027 dari 3 dept BD pengelola segmen (file: `rkap-dept-1.xlsx`,
`rkap-dept-2.xlsx`, `rkap-dept-3.xlsx`).

Tolong:
1. Baca ketiga file
2. Identifikasi struktur kolom masing-masing (kemungkinan tidak seragam)
3. Buat satu schema gabungan yang menampung semua informasi
4. Normalisasi data ke schema gabungan tersebut
5. Output: satu CSV `portfolio-rkap-2027.csv` dengan kolom konsisten:
   segmen, dept_pengelola, target_pembiayaan_miliar,
   target_dpk_miliar, target_fee_based_miliar, jumlah_prospek_target,
   alokasi_capex_juta, alokasi_opex_juta, asumsi_kunci

Jika ada kolom yang tidak konsisten antar file, *tandai* di kolom
catatan — jangan diasumsikan.
]

=== Tahap 5.1.2 — Agregasi Portfolio

#prompt[
Dari `portfolio-rkap-2027.csv`, buat ringkasan agregasi portfolio:

- Total target pembiayaan, DPK, dan fee-based di level portfolio
- Breakdown per segmen (% kontribusi tiap segmen ke total)
- Breakdown per dept pengelola
- Total alokasi anggaran (capex + opex) di level portfolio
- Rasio target bisnis vs alokasi anggaran per segmen
  (output per Rupiah anggaran)

Sajikan dalam tabel ringkas + 1 paragraf observasi awal: segmen mana
yang paling agresif targetnya, segmen mana yang paling efisien alokasi
anggarannya.
]

=== Tahap 5.1.3 — Gap Analysis

#prompt[
Lakukan gap analysis terhadap portfolio RKAP 2027:

1. *Gap konsistensi:* segmen mana yang asumsi kuncinya tidak realistis
   atau bertabrakan dengan asumsi segmen lain? (contoh: dua segmen
   sama-sama klaim akuisisi nasabah dari pool yang sama)

2. *Gap kapasitas:* total target jumlah prospek vs kapasitas tim BD
   real (asumsikan tiap BD officer maksimal handle 30 prospek aktif
   per kuartal). Apakah ada dept yang oversubscribed?

3. *Gap alokasi:* segmen dengan target tinggi tapi alokasi anggaran
   minim — atau sebaliknya, segmen dengan alokasi besar tapi target
   modest. Mana yang perlu dipertanyakan?

Output: list gap dengan severity (kritis / penting / minor) dan
rekomendasi tindak lanjut sebelum Direksi review.
]

=== Tahap 5.1.4 — Draft Narrative untuk Direksi

#prompt[
Susun draft narrative 1 halaman untuk approval Direksi RKAP 2027
ISE BD. Tone: eksekutif, ringkas, fokus pada *decision points* yang
butuh persetujuan, bukan deskripsi data.

Struktur:
1. *Ringkasan portfolio* (3 kalimat — total target, growth vs 2026,
   prioritas strategis 2027)
2. *Highlight segmen* (3 segmen paling strategis, 1 paragraf masing-masing)
3. *Gap dan asumsi kunci* (yang sudah ditemukan di Tahap 5.1.3, ringkas)
4. *Permintaan keputusan* (3–4 item: alokasi tambahan, geser target,
   ubah priority segmen, dll)
5. *Risiko utama* (top 3 risiko portfolio yang harus diawasi)
]

=== Output Sesi 5.1

- `output/portfolio-rkap-2027.csv` — RKAP konsolidasi lintas segmen
- `output/agregasi-portfolio.md` — ringkasan agregasi + observasi
- `output/gap-analysis-rkap.md` — list gap + rekomendasi
- `output/narrative-direksi-rkap-2027.md` — draft narrative 1 halaman

#tip[
  Data dari 3 dept BD biasanya punya inkonsistensi kecil (satuan, periode, definisi metrik). *Jangan* minta Claude "samakan saja" — minta Claude *tunjukkan* inkonsistensi dulu, baru putuskan bersama tim mana yang dijadikan standar. Konsolidasi yang dipaksakan tanpa flagging adalah sumber kesalahan Radir.
]

#checkpoint[
  Selama Ishoma, upload `portfolio-rkap-2027.csv` dan `narrative-direksi-rkap-2027.md` ke shared folder workshop.

  *Jika pimpinan hadir:* output Sesi 5.1 dipakai sebagai konteks untuk Strategic Hooks yang akan disusun pimpinan di Putaran 3 BOSS-TRACK.

  *Jika pimpinan tidak hadir:* lakukan self-review 5 menit dengan tim — apakah 3 decision points di narrative sudah cukup tajam? Apa pertanyaan kritis yang mungkin diajukan Direksi?
]

== Sesi 5.2 — Sintesis Insight Lintas Segmen

*Durasi:* 45 menit (12:45 – 13:30)\
*Output:* Insight lintas segmen + rekomendasi prioritas alokasi resource

=== Skenario

3 kelompok BD baru saja selesai Lab 1 — masing-masing punya 15–20 prospek + pemetaan ekosistem untuk segmen mereka. Output mereka (CSV prospek + peta ekosistem + top-5 rationale) sudah ada di shared folder. Tugas Anda: baca semua output, ekstrak tema lintas segmen, dan susun rekomendasi prioritas alokasi resource untuk siklus planning berikutnya.

=== Tahap 5.2.1 — Kumpulkan Output Lab 1 BD

Buka shared folder workshop. Download semua file dengan pola:

- `prospek-[segmen].csv`
- `peta-ekosistem-[segmen].md`
- `top-5-rationale-[segmen].md`

Upload semuanya ke Claude sekaligus.

#prompt[
Saya Planning & Portfolio. Saya upload output Lab 1 dari 3 kelompok
BD — masing-masing punya prospek + pemetaan ekosistem untuk segmen
yang mereka pegang.

Tolong:
1. Baca semua file
2. Sebutkan: tiap kelompok pegang segmen apa, dan berapa prospek
   yang teridentifikasi
3. Buat tabel ringkas: segmen, jumlah prospek, range skor potensi,
   prospek dengan skor tertinggi (nama + alasan)
]

=== Tahap 5.2.2 — Tema Lintas Segmen

#prompt[
Dari ketiga output Lab 1, identifikasi tema *lintas segmen* —
hal-hal yang muncul di lebih dari satu segmen dan menunjukkan
peluang atau risiko sistemik:

1. *Lembaga yang overlap:* ada nama lembaga yang muncul di lebih
   dari satu segmen? (contoh: yayasan yang punya pesantren + RS +
   sekolah sekaligus)

2. *Jaringan / induk ormas yang sama:* induk ormas yang menaungi
   lembaga di banyak segmen sekaligus — potensi MoU di level induk

3. *Tema kebutuhan yang berulang:* kebutuhan keuangan yang muncul
   di banyak segmen (contoh: cash management untuk yayasan multi-unit,
   pembiayaan infrastruktur untuk renovasi)

4. *Bottleneck regulasi/sertifikasi yang sama:* isu regulasi yang
   sama-sama dihadapi banyak segmen di tahun berjalan

Sajikan dalam bentuk narrative singkat per tema, dengan referensi
ke nama lembaga / dept BD yang relevan.
]

=== Tahap 5.2.3 — Rekomendasi Prioritas

#prompt[
Berdasar tema lintas segmen di atas, susun rekomendasi prioritas
alokasi resource untuk siklus planning berikutnya:

1. *Segmen prioritas atas* (1–2 segmen): mana yang harus dapat
   tambahan kapasitas BD officer + budget akuisisi. Alasannya apa?

2. *Cross-segment initiative* (1–2 inisiatif): peluang yang melibatkan
   2+ segmen dan butuh koordinasi antar dept BD. Misal: pendekatan
   level induk ormas, produk paket multi-segmen, event lintas-lembaga.

3. *Segmen yang perlu re-evaluasi* (0–1 segmen): jika ada segmen
   yang prospeknya tipis atau skor potensi rendah secara sistematis,
   bahas perlukah re-evaluasi cakupan.

Format: bullet list singkat per rekomendasi + 2–3 kalimat justifikasi
masing-masing.
]

=== Output Sesi 5.2

- `output/insight-lintas-segmen.md` — tema lintas segmen + referensi
- `output/prioritas-portfolio.md` — rekomendasi prioritas resource
- `output/lembaga-overlap.csv` — daftar lembaga yang muncul di lebih dari 1 segmen (jika ada)

#tip[
  Insight lintas segmen sering kali *tidak terlihat* oleh tiap dept BD sendiri — mereka hanya melihat segmen masing-masing. Justru di sinilah peran Planning paling kuat: melihat pola yang muncul dari agregasi data lintas dept.
]

== Sesi 5.3 — Materi Radir / Checkpoint

*Durasi:* 45 menit (13:30 – 14:15)\
*Output:* Deck eksekutif 8–10 slide untuk Radir / Checkpoint

=== Skenario

Minggu depan ada Radir bulanan ISE BD. Topik agenda: progress vs target Q1 2027, isu kritis lintas segmen, dan 3–4 decision points yang butuh persetujuan Direksi. Tugas Anda: susun deck eksekutif 8–10 slide. Materi diambil dari output Sesi 5.1 (RKAP) + Sesi 5.2 (insight lintas segmen) + data realisasi Q1 fiktif yang disediakan fasilitator.

=== Tahap 5.3.1 — Outline Deck Radir

#prompt[
Susun outline deck Radir bulanan ISE BD untuk minggu depan.
Audiens: Direksi BSI (3–5 orang). Durasi presentasi: 20 menit.

Pakai struktur *Status → Issue → Decision* yang lazim di Radir:

1. *Cover* — judul, periode, nama unit
2. *Executive Summary* (1 slide) — 4 kalimat: status portfolio
   secara agregat vs target, kondisi anggaran, tema lintas segmen
   utama, jumlah decision points
3. *Status Portfolio Q1 2027* (1 slide) — tabel pencapaian per
   segmen + traffic light (hijau/kuning/merah)
4. *Highlight Segmen Strategis* (2 slide) — 2 segmen paling
   strategis: progress, peluang, isu
5. *Tema Lintas Segmen* (1 slide) — 3 insight utama dari
   Sesi 5.2 (overlap induk ormas, cross-segment opportunity,
   bottleneck regulasi)
6. *Risiko & Mitigasi* (1 slide) — top 3 risiko portfolio
7. *Decision Points* (1–2 slide) — 3–4 decision yang butuh
   persetujuan Direksi, format: konteks 1 kalimat → opsi yang
   sudah dipertimbangkan → rekomendasi Planning
8. *Next Steps & Timeline* (1 slide) — milestone berikutnya

Untuk tiap slide, sertakan: judul, 3–5 bullet points, dan
catatan visual (chart / tabel / diagram yang dibutuhkan).
]

=== Tahap 5.3.2 — Tone Eksekutif & Data Visualization

#prompt[
Outline deck di atas masih terlalu *deskriptif*. Untuk audiens
Direksi, tone harus *executive*:

- Kalimat pendek, langsung ke kesimpulan
- Angka harus *terbandingkan* (vs target, vs periode lalu,
  vs segmen lain) — bukan angka mentah
- Setiap slide harus punya *satu pesan utama* yang bisa
  ditangkap dalam 5 detik melihat
- Hindari jargon BD detail (talking points, brief visit, dll) —
  Direksi tertarik di outcome, bukan proses
- Untuk decision points: rekomendasi Planning harus *eksplisit*,
  jangan "perlu didiskusikan lebih lanjut"

Untuk slide yang butuh chart:
- Slide Status Portfolio: traffic light table dengan ikon
  emoji bulat (hijau/kuning/merah) per segmen
- Slide Tema Lintas Segmen: diagram sederhana yang menunjukkan
  overlap antar segmen
- Slide Risiko: matriks 2x2 (likelihood vs impact)

Tulis ulang outline dengan tone eksekutif + spesifikasi visual.
]

=== Tahap 5.3.3 — Generate File PPTX

#prompt[
Buat file PPTX dari outline di atas. Style:

- Cover dengan logo BSI, judul "Radir ISE BD — [Bulan] 2027",
  nama unit Planning & Portfolio
- Color scheme: hijau BSI sebagai primary, abu-abu untuk teks
- Font: standar (Calibri / Helvetica)
- Setiap slide max 5 bullet, prioritas pada visual hierarchy
- Slide chart / tabel: kosongkan dulu, sertakan placeholder
  yang menunjukkan jenis visual + data yang harus diisi
- Slide Decision Points: sediakan space khusus untuk
  catatan keputusan / disposisi Direksi

Setelah generate, simpan ke `output/radir-deck-[bulan].pptx`.
]

=== Output Sesi 5.3

- `output/radir-deck-outline.md` — outline final dengan tone eksekutif
- `output/radir-deck-[bulan].pptx` — file PPTX siap polishing
- `output/speaker-notes-radir.md` — catatan pembicara per slide

#tip[
  Deck Radir berbeda dengan pitch deck eksternal. Di pitch deck (Lab 3), tujuan adalah *meyakinkan* prospek. Di deck Radir, tujuan adalah *mempercepat keputusan* Direksi. Jangan menjual — sajikan opsi, rekomendasi, dan minta keputusan.
]

#checkpoint[
  Upload deck radir ke shared folder kelompok Anda.

  *Jika pimpinan hadir:* output Sesi 5.3 jadi bahan masukan untuk consolidated tracker yang dipresentasikan pimpinan di akhir workshop.

  *Jika pimpinan tidak hadir:* ketua kelompok save file ke folder sebagai bagian dari paket output yang akan diserahkan ke unit ISE.
]

== Sesi 5.4 — Monitoring Portofolio & Early Warning

*Durasi:* 30 menit (14:30 – 15:00)\
*Output:* Monitoring report + early warning signals + action items per dept

=== Skenario

Fasilitator membagikan file `realisasi-q1-2027.csv` ke shared folder — berisi data realisasi target bisnis per segmen sampai akhir Q1 2027. Tugas Anda: deteksi segmen yang underperform, identifikasi early warning signal yang belum kritis tapi tren-nya negatif, dan susun draft action items yang akan dikirim ke masing-masing dept BD.

=== Tahap 5.4.1 — Analisa Gap Realisasi vs Target

#prompt[
Upload file `realisasi-q1-2027.csv`. Lakukan analisa gap:

1. Hitung realisasi vs target Q1 per segmen, per metrik
   (pembiayaan, DPK, fee-based, jumlah prospek aktif)
2. Klasifikasi tiap segmen ke 3 tier:
   - *Hijau* (≥ 90% target Q1)
   - *Kuning* (70–89% target Q1)
   - *Merah* (< 70% target Q1)
3. Untuk segmen kuning dan merah, identifikasi metrik mana
   yang underperform paling tajam
4. Sajikan dalam tabel traffic light + ringkasan 3 kalimat
]

=== Tahap 5.4.2 — Early Warning Signal

#prompt[
Selain gap kuantitatif, identifikasi *early warning signal* —
indikator yang belum mencapai status kritis tapi tren-nya
mengkhawatirkan:

1. *Velocity drop:* segmen yang Q1 masih hijau tapi laju akuisisi
   melambat dari bulan ke bulan
2. *Concentration risk:* segmen yang realisasinya bagus tapi
   bergantung pada 1–2 deal besar (jika gagal closing, langsung merah)
3. *Pipeline shrinkage:* segmen yang jumlah prospek aktifnya turun
   tanpa kompensasi closing — pipeline tidak terisi ulang
4. *Funding mix imbalance:* segmen yang realisasi pembiayaan tinggi
   tapi DPK rendah — masalah likuiditas relatif

Untuk tiap warning yang terdeteksi, sebutkan: segmen, jenis
warning, severity (mid / high), dan saran tindak lanjut singkat.
]

=== Tahap 5.4.3 — Action Items per Dept BD

#prompt[
Susun draft action items yang akan dikirim ke masing-masing dept
BD pengelola segmen. Format: 1 dokumen per dept, struktur:

*Untuk: Dept BD [N] — Pengelola Segmen [SEGMEN A, B, C]*

1. *Status singkat:* 2 kalimat — segmen mana hijau, kuning, merah
2. *Prioritas Q2:* 2–3 action concrete yang harus dijalankan
   dept ini di Q2 untuk closing gap. Tiap action: deskripsi,
   PIC level dept, target deadline, indikator selesai.
3. *Early warning untuk diawasi:* 1–2 signal dari Sesi 5.4.2
   yang relevan ke dept ini, dengan checkpoint review bulanan
4. *Dukungan dari Planning:* apa yang Planning akan bantu sediakan
   (data, analisa, koordinasi lintas dept)

Tone: kolaboratif (bukan instruksi top-down), spesifik (bukan
generic), dengan deadline jelas.
]

=== Output Sesi 5.4

- `output/monitoring-q1-2027.md` — analisa gap + traffic light
- `output/early-warning-signals.md` — daftar warning + severity
- `output/action-items-dept-1.md`, `output/action-items-dept-2.md`, `output/action-items-dept-3.md` — action items per dept BD

#tip[
  Monitoring yang efektif bukan tentang menemukan siapa yang salah, tapi tentang *memunculkan sinyal lebih awal* sebelum jadi kritis. Tone action items harus kolaboratif — Planning & Portfolio sukses kalau dept BD merasa terbantu, bukan diawasi.
]

#checkpoint[
  Upload paket monitoring & action items ke shared folder kelompok.

  *Jika pimpinan hadir:* paket dipakai untuk closing synthesis di sesi Q&A — pimpinan akan integrasikan dengan output BD groups jadi paket follow-up workshop yang lengkap.

  *Jika pimpinan tidak hadir:* paket otomatis masuk ke shared folder workshop untuk distribusi ke seluruh tim ISE pasca-workshop.
]

// ============================================================
// 8. LIBRARY PROMPT TEMPLATE
// ============================================================

= Library Prompt Template

Kumpulan prompt template untuk lima area aktivitas BD (riset pasar, profiling, brief visit, pitch material, coverage event) plus area Planning & Portfolio (konsolidasi RKAP, sintesis lintas segmen, materi Radir, monitoring). Pakai sebagai titik awal — isi placeholder dalam `[...]` dengan konteks Anda sendiri.

== Riset Pasar

=== R1. Kompilasi Daftar Lembaga

#prompt[
Cari [JUMLAH] [SEGMEN] di [WILAYAH], urutkan berdasar
[KRITERIA — skala/relevansi/dst]. Tabel dengan kolom:
[KOLOM 1], [KOLOM 2], [KOLOM 3]. Format: CSV.
]

=== R2. Pemetaan Ekosistem

#prompt[
Untuk lembaga-lembaga di tabel ini, petakan hubungan
struktural: induk yayasan/ormas, jaringan alumni,
konsorsium, kemitraan publik. Sajikan dalam diagram.
]

=== R3. Benchmark Layanan Syariah Eksisting

#prompt[
Untuk segmen [SEGMEN], apa saja layanan keuangan syariah
yang sudah umum dipakai? Petakan per kategori: pembiayaan,
penghimpunan dana, jasa transaksional, advisory. Sertakan
provider utama untuk tiap kategori.
]

== Profiling Prospek

=== P1. Profil Mendalam

#prompt[
Buat profil mendalam [NAMA LEMBAGA] dengan struktur:
latar belakang, kepemimpinan, skala, agenda strategis,
isu terkini, layanan keuangan eksisting. Sertakan sumber
yang dipakai.
]

=== P2. Pemetaan Pengambil Keputusan

#prompt[
Untuk [NAMA LEMBAGA], petakan struktur pengambilan
keputusan: siapa yang berwenang memutuskan kemitraan
finansial? Apa jalur pendekatan yang umum dipakai
untuk akses ke level itu?
]

=== P3. Riset Isu Strategis Terkini

#prompt[
Apa isu strategis yang sedang dihadapi [NAMA LEMBAGA]
dalam 6 bulan terakhir? Cari dari berita, press release,
publikasi internal yang tersedia publik. Rangkum dengan
sumber.
]

== Brief Visit

=== B1. Brief Visit Lengkap

#prompt[
Saya BD BSI akan visit ke [NAMA LEMBAGA] tanggal [TANGGAL].
Fokus produk [PRODUK]. Susun brief visit 2 halaman dengan:
profil ringkas, talking points (5–7), pertanyaan discovery
(6–8), risk & mitigation (3 risk), follow-up plan.
]

=== B2. Talking Points yang Sesuai Tone

#prompt[
Berdasar profil [NAMA LEMBAGA], generate 8 talking points
untuk produk [PRODUK]. Tone: [PROFIL TONE — pengasuh
pesantren tradisional / direktur RS modern / ketua yayasan
sosial / dst]. Hindari [JARGON YANG TIDAK COCOK].
]

=== B3. Pertanyaan Discovery

#prompt[
Susun 8 pertanyaan discovery yang akan saya tanyakan saat
visit ke [NAMA LEMBAGA]. Tujuan: memahami kebutuhan
keuangan syariah mereka, tanpa terdengar seperti jualan.
Pertanyaan harus terbuka, mengundang cerita, dan menggali
konteks bisnis mereka.
]

== Pitch Material

=== M1. Outline Pitch Deck

#prompt[
Outline pitch deck 8–10 slide untuk produk [PRODUK BSI]
ke [SEGMEN]. Struktur: Problem → Solution → Proof → Ask.
Setiap slide: judul, 3–5 bullet, catatan visual.
]

=== M2. Adaptasi Tone Pitch

#prompt[
Pitch deck di atas terlalu [GENERIK/KORPORAT/FORMAL].
Sesuaikan dengan audiens [SEGMEN]: pakai istilah
[ISTILAH KHAS SEGMEN], tone [TONE TARGET], hindari
[YANG INGIN DIHINDARI].
]

=== M3. Product Brief 1 Halaman

#prompt[
Buat product brief 1 halaman untuk [PRODUK BSI] yang
ditujukan untuk [SEGMEN]. Format: cocok dicetak A4,
1 sisi. Sertakan: positioning singkat, manfaat utama
(3), siapa cocok pakai, alur layanan, contact untuk
follow-up.
]

== Coverage Event

=== C1. Caption Multi-Platform

#prompt[
Buat caption sosial media untuk event [JENIS EVENT] di
[LEMBAGA] tanggal [TANGGAL]. Variasi: Instagram, LinkedIn,
Twitter, Story. Sertakan hashtag relevan ekosistem syariah.
]

=== C2. Laporan Internal Event

#prompt[
Laporan internal 1 halaman untuk event [NAMA EVENT].
Struktur: ringkasan eksekutif, fakta dasar, agenda,
output, talking points yang muncul, follow-up, estimasi
dampak.
]

=== C3. Materi Pra-Event

#prompt[
Untuk event [JENIS EVENT] di [LEMBAGA] tanggal [TANGGAL],
buat: undangan formal, brosur 1 halaman, talking points
untuk MC, briefing internal untuk tim BSI yang hadir.
]

== Korespondensi & Proposal

=== K1. Surat Penawaran Resmi

#prompt[
Susun draft surat penawaran resmi dari BSI ke [LEMBAGA]
untuk produk [PRODUK]. Tone formal, dengan referensi
ke pertemuan/diskusi sebelumnya jika ada. Sertakan
salam pembuka yang sesuai (dengan gelar yang tepat
untuk pimpinan lembaga).
]

=== K2. Email Follow-up

#prompt[
Draft email follow-up untuk [NAMA, JABATAN] di [LEMBAGA]
setelah [PERTEMUAN/EVENT] pada [TANGGAL]. Sertakan:
terima kasih, ringkasan 3 poin diskusi utama, commitment
ke timeline next step, contact person dari BSI.
]

=== K3. Notulen Rapat Internal

#prompt[
Susun notulen rapat internal tim BD BSI tentang [TOPIK]
pada [TANGGAL]. Struktur: peserta, agenda, diskusi per
agenda, keputusan, action items dengan PIC dan deadline.
]

== Planning & Portfolio

=== PP1. Normalisasi Data Multi-Source

#prompt[
Saya terima [N] file [JENIS DATA — RKAP/realisasi/proyeksi]
dari [N] dept BD dengan format tidak konsisten. Baca semua
file, identifikasi struktur kolom masing-masing, buat schema
gabungan yang menampung semua informasi, normalisasi data
ke schema tersebut. Tandai inkonsistensi yang ditemukan —
jangan diasumsikan diam-diam.
]

=== PP2. Agregasi Portfolio

#prompt[
Dari data konsolidasi di atas, buat ringkasan agregasi
level portfolio: total per metrik, breakdown per [DIMENSI 1
— segmen/dept/wilayah], breakdown per [DIMENSI 2], rasio
[METRIK A] vs [METRIK B]. Sajikan tabel ringkas + 1 paragraf
observasi awal.
]

=== PP3. Gap Analysis

#prompt[
Lakukan gap analysis terhadap [DATA PORTFOLIO]: identifikasi
gap konsistensi asumsi antar [SEGMEN/DEPT], gap kapasitas
(target vs resource), gap alokasi (anggaran vs target).
Output: list gap dengan severity (kritis/penting/minor)
dan rekomendasi tindak lanjut.
]

=== PP4. Sintesis Lintas Segmen

#prompt[
Saya upload output [JENIS OUTPUT] dari [N] kelompok BD,
masing-masing pegang segmen berbeda. Ekstrak tema *lintas
segmen*: lembaga yang overlap, induk ormas yang sama,
kebutuhan yang berulang, bottleneck regulasi bersama.
Sajikan per tema dengan referensi ke nama lembaga / dept.
]

=== PP5. Outline Deck Eksekutif (Radir / Checkpoint)

#prompt[
Susun outline deck eksekutif untuk [FORUM — Radir bulanan /
checkpoint kuartalan / review tahunan] tentang [TOPIK].
Audiens: [LEVEL AUDIENS — Direksi / Komisaris / SEVP].
Durasi presentasi: [N] menit.

Struktur Status → Issue → Decision:
1. Cover
2. Executive summary (1 slide)
3. Status portfolio dengan traffic light
4. Highlight 2-3 area strategis
5. Risiko & mitigasi
6. Decision points (3-4 item) dengan rekomendasi eksplisit
7. Next steps & timeline

Setiap slide: judul, 3-5 bullet, catatan visual.
]

=== PP6. Tone Eksekutif

#prompt[
Outline deck di atas masih terlalu deskriptif. Tulis ulang
dengan tone eksekutif: kalimat pendek langsung ke kesimpulan,
angka harus terbandingkan (vs target/periode lalu), satu
pesan utama per slide yang bisa ditangkap dalam 5 detik,
rekomendasi eksplisit di decision points (bukan "perlu
dibahas lebih lanjut"). Hindari jargon operasional.
]

=== PP7. Traffic Light Monitoring

#prompt[
Dari data realisasi vs target [PERIODE] per [SEGMEN/DEPT/
WILAYAH], klasifikasi ke 3 tier:
- Hijau: ≥ [THRESHOLD HIJAU]% target
- Kuning: [THRESHOLD KUNING]-[THRESHOLD HIJAU]% target
- Merah: < [THRESHOLD KUNING]% target

Untuk tier kuning dan merah, identifikasi metrik mana yang
underperform paling tajam. Output: tabel traffic light +
ringkasan 3 kalimat.
]

=== PP8. Early Warning Detection

#prompt[
Selain gap kuantitatif, identifikasi early warning signal:
velocity drop (laju melambat antar periode), concentration
risk (bergantung 1-2 deal besar), pipeline shrinkage
(prospek aktif turun tanpa kompensasi closing), funding mix
imbalance. Untuk tiap warning: [SEGMEN/DEPT], jenis warning,
severity, saran tindak lanjut singkat.
]

=== PP9. Action Items Kolaboratif

#prompt[
Susun draft action items dari [PLANNING] ke [DEPT BD]
pengelola [SEGMEN]. Struktur: status singkat (2 kalimat),
prioritas [PERIODE BERIKUTNYA] (2-3 action concrete dengan
PIC + deadline + indikator selesai), early warning untuk
diawasi, dukungan dari Planning. Tone: kolaboratif (bukan
top-down), spesifik (bukan generic).
]

// ============================================================
// 9. TEKNIK TAMBAHAN
// ============================================================

= Teknik Tambahan

Dua teknik berikut tidak ikut dipraktikkan di workshop hari ini karena keterbatasan waktu, tapi sering berguna ketika Anda mulai memakai AI untuk pekerjaan harian. Pelajari setelah Anda nyaman dengan pola-pola dasar di Lab 1–5.

== JSON sebagai Database Mini

CSV (yang dipakai di Lab 1) cocok untuk daftar sederhana, tapi terbatas — sulit menyimpan profil lembaga yang punya banyak unit usaha, banyak kontak, atau struktur bertingkat. *JSON* adalah format teks yang lebih kaya: bisa menyimpan struktur bertingkat di satu file, dan tetap bisa dibaca langsung oleh AI.

=== Contoh: Profil Pesantren dalam JSON

```json
{
  "nama": "Pesantren Sidogiri",
  "kota": "Pasuruan",
  "berdiri": 1745,
  "santri": 7500,
  "kontak": [
    { "nama": "KH M. Salahuddin", "jabatan": "Pengasuh" },
    { "nama": "Ust. Ahmad", "jabatan": "Sekretaris Yayasan" }
  ],
  "unit_usaha": ["BPRS", "Koperasi", "BMT"],
  "isu_terkini": [
    "rencana pendirian RS pesantren",
    "ekspansi BPRS ke 5 kabupaten"
  ],
  "last_visit": "2026-03-15",
  "notes": "Tertarik produk pembiayaan infrastruktur"
}
```

=== Manfaat untuk BD

Bayangkan Anda punya 50–100 calon prospek pesantren. Tiap pesantren disimpan dalam satu file JSON di folder `prospek/`. Anda bisa minta Claude:

#prompt[
Di folder `prospek/` ada 50 file JSON pesantren. Tampilkan pesantren yang:
- berdiri sebelum tahun 1900
- punya unit usaha BPRS
- santri lebih dari 3000
Susun dalam tabel dengan justifikasi singkat untuk masing-masing.
]

Claude bisa membaca, memfilter, dan merangkum di seluruh file tanpa perlu database server. Cocok untuk dipakai mandiri sebagai "kartu prospek digital".

=== Cara Membangun

#prompt[
Saya punya daftar 30 calon prospek pesantren di file `daftar.csv`.
Buat file JSON untuk masing-masing pesantren dengan struktur seperti
contoh di atas. Isi data dari riset publik yang tersedia. Simpan
satu file per pesantren di folder `prospek/`.
]

#tip[
  Setiap kali ada update visit, follow-up, atau perubahan kepemimpinan, minta Claude update file JSON yang relevan. Lama-lama Anda punya database prospek pribadi yang tumbuh bersama pekerjaan Anda.
]

== Playwright untuk Situs yang Sulit

Beberapa situs tidak bisa diakses dengan cara biasa:

- *Single Page Application (SPA)* — kontennya baru muncul setelah JavaScript jalan di browser, jadi tidak bisa dibaca langsung dari HTML mentah
- *Wajib login* — perlu sesi login aktif untuk membuka halaman dalam
- *Anti-crawler* — situs sengaja blokir akses otomatis biasa

*Playwright* adalah tool yang menjalankan browser sungguhan (Chrome, Firefox, Safari) secara otomatis. AI bisa pakai untuk:

- Login ke portal Kemenag dengan akun Anda → akses data terbaru pesantren
- Buka situs RS Islam yang full SPA → ambil profil pengurus dan kontak
- Buka media yang blokir bot → baca artikel terkini tentang segmen Anda
- Ambil screenshot situs untuk dokumentasi presentasi

=== Cara Kerja

1. AI tulis program kecil yang membuka browser
2. Browser tampil di layar, Anda login manual sekali
3. Sesi login tersimpan
4. Berikutnya AI bisa mengakses halaman-halaman dalam tanpa Anda perlu login lagi

=== Contoh Prompt

#prompt[
Saya butuh akses data pesantren dari portal kemenag.go.id yang
mengharuskan login. Tulis program Playwright yang:

1. Buka browser ke halaman login Kemenag
2. Tunggu saya login manual
3. Setelah login, masuk ke menu pendataan pesantren
4. Ambil data 100 pesantren teratas berdasarkan jumlah santri
5. Simpan ke folder `prospek/` dalam format JSON (satu file per pesantren)
]

#tip[
  Pemakaian Playwright untuk portal pemerintah atau sistem internal harus tetap menghormati ketentuan layanan situs tersebut. Pakai untuk efisiensi pekerjaan yang memang seharusnya bisa Anda lakukan manual, bukan untuk pengumpulan data massal di luar kewenangan.
]

=== Kombinasi: JSON + Playwright

Dua teknik ini paling kuat saat dipakai bersama:

#prompt[
Login ke portal kemenag.go.id dengan akun saya. Ambil data 100 pesantren
teratas. Untuk tiap pesantren, kompilasi profil lengkap mengikuti struktur
JSON di workbook (nama, kota, berdiri, santri, kontak, unit_usaha,
isu_terkini). Simpan ke folder `prospek/`. Setelah semua selesai,
tampilkan ringkasan: berapa pesantren yang punya BPRS, yang santrinya
>5000, yang berdiri sebelum 1900.
]

Hasilnya: database prospek terstruktur yang bisa Anda query terus-menerus untuk berbagai kebutuhan BD.

// ============================================================
// 10. PANDUAN RINGKAS (1 HALAMAN)
// ============================================================

#pagebreak()

= Panduan Ringkas

#text(size: 9pt, fill: mute)[Halaman ini didesain untuk dicetak terpisah dan ditempel di meja kerja sebagai cheat sheet.]

#v(0.5em)

#grid(
  columns: (1fr, 1fr),
  gutter: 1em,

  block(stroke: 1pt + brand, inset: 12pt, radius: 4pt, [
    *4 Unsur Prompt yang Baik*

    1. *Konteks* — siapa Anda
    2. *Tugas* — apa yang harus AI lakukan
    3. *Format* — output dalam bentuk apa
    4. *Batasan* — apa yang harus dihindari
  ]),

  block(stroke: 1pt + brand, inset: 12pt, radius: 4pt, [
    *Area Penggunaan AI*

    _Track BD:_ riset pasar segmen, profiling prospek, brief visit, pitch material, coverage event

    _Track Planning:_ konsolidasi RKAP, sintesis lintas segmen, materi Radir, monitoring portofolio
  ]),

  block(stroke: 1pt + brand, inset: 12pt, radius: 4pt, [
    *Format File Favorit Claude*

    - Markdown (.md) untuk dokumen
    - CSV (.csv) untuk daftar / tabel
    - HTML (.html) untuk web/email
    - PPTX / DOCX untuk output final
  ]),

  block(stroke: 1pt + brand, inset: 12pt, radius: 4pt, [
    *Saat Output Kurang Pas*

    - Sebutkan dengan jelas apa yang kurang
    - Minta tulis ulang dengan perbaikan terdaftar
    - Ulang 2–3 kali sebelum edit manual
    - Selalu cek kebenaran data ke sumber asli
  ]),
)

#v(0.8em)

#block(fill: rgb("#fef3c7"), inset: 12pt, radius: 4pt, width: 100%, [
  *Template Prompt Universal*

  #v(0.3em)

  #text(font: ("Menlo", "Courier New"), size: 9.5pt)[
    Saya \[ROLE — BD / Planning\] di BSI, fokus \[SEGMEN / PORTFOLIO\].

    Tolong \[TUGAS SPESIFIK\].

    Output dalam format \[FORMAT — tabel CSV / brief markdown / dst\].

    Hindari \[BATASAN\]. Sertakan sumber bila relevan.
  ]
])

#v(0.5em)

#block(fill: rgb("#dbeafe"), inset: 12pt, radius: 4pt, width: 100%, [
  *Kontak Pasca-Workshop*

  Email: endy.muhardin\@gmail.com\
  Web: software.endy.muhardin.com\
  Konsultasi tanya jawab terbuka 14 hari pasca-workshop.
])

// ============================================================
// 11. GLOSSARY
// ============================================================

= Glossary

#table(
  columns: (auto, 1fr),
  stroke: (x, y) => if y == 0 { (bottom: 1pt + brand) } else { (bottom: 0.5pt + rgb("#e2e8f0")) },
  [*Istilah*], [*Arti*],
  [*Claude*], [AI assistant produksi Anthropic, fokus pada menjalankan tugas bertahap],
  [*Claude Code*], [Bentuk Claude yang berjalan sebagai aplikasi terminal (CLI). Bisa baca/tulis file, jalankan tool, akses web],
  [*LLM*], [Large Language Model — jenis AI yang dilatih dengan teks dan menghasilkan teks],
  [*Prompt*], [Instruksi yang kita berikan ke AI, dalam bahasa natural],
  [*Markdown*], [Format teks dengan formatting ringan, mirip yang dipakai di WhatsApp],
  [*CSV*], [Comma-Separated Values — format teks untuk data tabular, langsung bisa dibuka di Excel],
  [*JSON*], [JavaScript Object Notation — format teks untuk data bertingkat, cocok dipakai sebagai database mini prospek],
  [*Pandoc*], [Tool konversi dokumen antar-format (DOCX, PDF, Markdown, dll)],
  [*Whisper*], [Tool transkripsi audio ke teks, jalan di laptop, tidak perlu upload ke cloud],
  [*Playwright*], [Tool otomatisasi browser — AI pakai untuk akses situs yang perlu login, SPA, atau yang blokir bot biasa],
  [*SPA*], [Single Page Application — situs web yang konten dalamnya baru muncul setelah JavaScript jalan, sulit di-scrape biasa],
  [*Iterasi*], [Mengulang prompt dengan perbaikan, sampai output sesuai],
  [*Validasi*], [Mengecek kebenaran output AI terhadap sumber terpercaya — *wajib* untuk fakta rinci],
  [*RKAP*], [Rencana Kerja & Anggaran Perusahaan — dokumen perencanaan tahunan yang berisi target bisnis dan alokasi anggaran. Sumber input utama Sesi 5.1],
  [*Radir*], [Rapat Direksi — forum pengambilan keputusan strategis di level Direksi BSI. Output Sesi 5.3 ditujukan ke forum ini],
  [*Checkpoint*], [Forum review berkala (bulanan / kuartalan) untuk mengevaluasi progress bisnis. Format presentasi mirip Radir tapi audiens lebih internal],
  [*Portfolio view*], [Konsolidasi data lintas segmen menjadi satu pandangan utuh — yang dilihat oleh Direksi dan unit Planning, bukan oleh dept BD individual],
  [*Traffic light*], [Klasifikasi cepat status segmen / metrik ke 3 tier warna (hijau / kuning / merah) berdasar threshold yang disepakati],
  [*Early warning signal*], [Indikator yang belum kritis tapi trennya mengkhawatirkan — terdeteksi sebelum jadi gap yang nyata],
)

// ============================================================
// 12. LANGKAH LANJUTAN
// ============================================================

= Langkah Lanjutan

== Setelah Workshop

1. *Hari H+1* — Buat akun Claude Pro pribadi di claude.ai. Pakai prompt template di workbook ini sebagai starter
2. *Minggu pertama* — Ulangi salah satu lab di akun pribadi, dengan segmen atau prospek nyata yang sedang Anda tangani
3. *Bulan pertama* — Integrasikan satu area aktivitas ke workflow harian. Mulai dari yang frekuensinya tinggi (misal: brief visit jika sering visit)
4. *Bulan kedua* — Mulai bagikan prompt yang berhasil ke rekan satu tim. Bangun *prompt library* internal ISE

== Tier Langganan Claude untuk Pemakaian Mandiri

#tip[
  Untuk workshop hari ini, akun Claude Pro pada laptop lab disediakan oleh BSI. Setelah workshop, jika Anda ingin melanjutkan latihan secara mandiri di laptop pribadi, Anda perlu langganan sendiri. Tabel berikut sebagai panduan memilih tier.
]

#table(
  columns: (auto, auto, 1fr),
  stroke: (x, y) => if y == 0 { (bottom: 1pt + brand) } else { (bottom: 0.5pt + rgb("#e2e8f0")) },
  [*Tier*], [*Harga*], [*Cocok Untuk*],
  [Free], [Gratis], [Eksplorasi awal, tanya jawab sederhana],
  [Pro], [\$20/bulan], [Pemakaian harian, riset, drafting — rekomendasi untuk BD],
  [Max], [\$100–200/bulan], [Pemakaian intensif, banyak lab paralel, dokumen besar],
)

== Untuk yang Mau Lebih Lanjut: Claude Code on the Web + GitHub

Kalau Anda ingin kapabilitas Claude yang penuh (akses file, jalan multi-step, otomasi besar) tapi tidak punya laptop dengan Claude Code — atau pernah berpikir "andai saya bisa kerja seperti workshop ini dari iPad" — *Claude Code on the Web* adalah jalannya.

=== Cara Kerja

1. Anda hubungkan Claude ke satu GitHub repo Anda
2. Anda beri Claude tugas lewat `claude.ai/code`
3. Anthropic membuat VM cloud yang isolated
4. VM meng-clone repo Anda, Claude mengerjakan tugas di sana
5. Claude push hasil ke branch baru di repo Anda
6. Anda review hasilnya dan merge bila sudah OK

=== Kelebihan

- Berfungsi dari device manapun — laptop, *iPad*, ponsel
- Bisa menjalankan banyak tugas paralel — misal riset 100 prospek sekaligus, ditinggal sambil ngopi
- Hasil otomatis ter-backup di GitHub (ada history versi, tidak hilang)
- Tidak perlu install apa-apa di device Anda

=== Yang Perlu Dipelajari Dulu

- *GitHub dasar* — konsep repository, branch, push, merge. Sekitar 1–2 hari belajar mandiri untuk yang belum pernah pakai
- Cara menghubungkan GitHub ke Claude (ada di dokumentasi Claude)

=== Kapan Tidak Perlu Pakai

- Untuk chat sederhana harian (drafting brief, talking points, caption) — `claude.ai` web saja sudah cukup
- Untuk pekerjaan sekali pakai yang tidak perlu disimpan terstruktur

=== Tautan

- Akses: `claude.ai/code`
- Dokumentasi: `code.claude.com/docs/en/claude-code-on-the-web`

#tip[
  Ini satu-satunya cara mendapat kapabilitas penuh Claude Code dari iPad. Cocok untuk peserta yang sehari-hari lebih banyak pakai iPad (level manajemen, atau yang sering visit lapangan dan jarang buka laptop).
]

== Resource Tambahan

- claude.com/docs — dokumentasi resmi Claude
- software.endy.muhardin.com — materi training dan artikel pendukung
- Konsultasi via email selama 14 hari pasca-workshop (lihat Panduan Ringkas)

#v(2em)

#align(center)[
  #line(length: 30%, stroke: 1pt + accent)
  #v(0.5em)
  #text(fill: mute, size: 10pt, style: "italic")[Selamat berlatih.]
]
