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

#show heading.where(level: 2): it => [
  #v(0.6em)
  #text(fill: brand, size: 14pt, weight: "bold")[#it.body]
  #v(0.2em)
]

#show heading.where(level: 3): it => [
  #v(0.4em)
  #text(fill: accent, size: 11.5pt, weight: "bold")[#it.body]
  #v(0.1em)
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

Workbook ini menemani Anda di empat lab workshop *Workshop Penggunaan AI untuk Islamic Ecosystem Business Development*. Setelah workshop, workbook ini juga dapat dipakai sebagai rujukan ketika Anda mengulang latihan secara mandiri dengan akun Claude Pro pribadi.

== Apa yang Akan Anda Pelajari

- Konsep dasar AI generasi 2026 dan cara berinteraksi yang produktif
- Penggunaan Claude untuk lima area aktivitas BD: riset pasar, profiling prospek, brief visit, pitch material, dan coverage event
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
  [Peserta], [15–25 pegawai organik ISE],
  [Format kerja], [3–5 kelompok @ 5 orang, 1 laptop lab per kelompok],
  [Bahasa], [Bahasa Indonesia],
)

== Rundown

#table(
  columns: (auto, 1fr, auto),
  stroke: (x, y) => if y == 0 { (bottom: 1pt + brand) } else { (bottom: 0.5pt + rgb("#e2e8f0")) },
  [*Waktu*], [*Kegiatan*], [*Durasi*],
  [08:45 – 09:00], [Pembukaan seremonial (Pembukaan, Ayat Suci, Opening Speech)], [15 mnt],
  [09:00 – 09:30], [Lanskap AI 2026], [30 mnt],
  [09:30 – 10:00], [Evolusi penggunaan AI (presentasi + demo)], [30 mnt],
  [10:00 – 10:15], [Coffee break], [15 mnt],
  [10:15 – 10:45], [Setup akun, browser, tool dasar], [30 mnt],
  [10:45 – 11:45], [*Lab 1: Riset Pasar Segmen Ekosistem*], [60 mnt],
  [11:45 – 12:45], [Ishoma], [60 mnt],
  [12:45 – 13:30], [*Lab 2: Profiling Prospek + Brief Visit*], [45 mnt],
  [13:30 – 14:15], [*Lab 3: Pitch Material per Segmen*], [45 mnt],
  [14:15 – 14:30], [Coffee break], [15 mnt],
  [14:30 – 15:00], [*Lab 4: Coverage Event*], [30 mnt],
  [15:00 – 15:15], [Diskusi, Q&A, penutup], [15 mnt],
)

== Format Kerja Kelompok

- 1 laptop lab dipakai bersama oleh 5 orang dalam kelompok
- Pilih ketua tim di awal — yang memegang keyboard pertama kali
- Anggota bergantian mengoperasikan laptop di setiap lab
- Diskusikan setiap output bersama sebelum lanjut ke tahap berikutnya
- Setiap kelompok memilih *satu segmen* di Lab 1 dan menggunakan segmen yang sama sampai Lab 4

#tip[
  Yang memegang keyboard fokus pada eksekusi prompt. Yang lain fokus pada *isi* dan *kualitas output* — mengkritisi, menyarankan iterasi, dan memvalidasi terhadap pengetahuan BD Anda.
]

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

- Mulai dari prompt sederhana, iterasi dari sana. Jangan langsung tulis prompt panjang
- Kalau output kurang pas: katakan secara spesifik *apa* yang kurang dan minta tulis ulang
- Untuk pekerjaan multi-langkah, minta Claude buat *rencana* dulu sebelum eksekusi
- Selalu validasi data — Claude bisa salah, terutama untuk fakta spesifik lembaga
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
  Pastikan satu anggota kelompok mengecek kebenaran data terhadap pengetahuan lapangan. AI bisa salah angka — terutama untuk lembaga yang tidak terlalu prominen di internet.
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

// ============================================================
// 5. LAB 3 — PITCH MATERIAL
// ============================================================

= Lab 3: Pitch Material per Segmen

*Durasi:* 45 menit (13:30 – 14:15)\
*Output:* Pitch deck 8–12 slide dalam format PPTX

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
2. Tentang BSI (1 slide, ringkas, fokus track record di segmen)
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
Outline pitch deck di atas masih terasa generik / korporat.
Sesuaikan dengan profil audiens [SEGMEN]:

- Gunakan istilah yang familiar bagi mereka (contoh: gunakan
  "akad" alih-alih "kontrak", "jamaah" alih-alih "nasabah",
  "infaq operasional" alih-alih "biaya overhead")
- Sertakan dalil syariah singkat di slide yang relevan
- Pakai contoh kasus yang relate dengan segmen — bukan contoh
  dari dunia korporat umum
- Tone: hormat, kemitraan, bukan transaksional
]

== Tahap 3.4 — Generate File PPTX

#prompt[
Buat file PPTX dari outline di atas. Pakai layout yang clean
dan profesional:

- Cover dengan logo BSI dan nama lembaga prospek
- Color scheme: hijau BSI sebagai primary, abu-abu untuk teks
- Font: standar (Calibri / Helvetica) untuk kompatibilitas
- Setiap slide max 5 bullet, prioritas visual hierarchy
- Slide proof dengan space untuk insert foto/chart manual

Setelah generate, simpan ke output/pitch-[produk]-[segmen].pptx
]

== Output Lab 3

- `output/pitch-[produk]-[segmen]-outline.md` — outline final
- `output/pitch-[produk]-[segmen].pptx` — file PPTX siap edit/present
- `output/pitch-notes-[produk].md` — speaker notes per slide

#tip[
  AI biasanya cukup baik di outline & teks slide, tapi kurang di tata letak visual yang halus. Treat output PPTX sebagai *draft pertama* — finishing visual tetap perlu sentuhan manual di PowerPoint.
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
- Variasi 4: untuk Twitter/X (max 240 karakter, threadable)
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

// ============================================================
// 7. LIBRARY PROMPT TEMPLATE
// ============================================================

= Library Prompt Template

Kumpulan prompt template untuk lima area aktivitas BD. Pakai sebagai starting point — isi placeholder dalam `[...]` dengan konteks spesifik Anda.

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
keuangan syariah mereka, tanpa terkesan sales.
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

// ============================================================
// 8. PANDUAN RINGKAS (1 HALAMAN)
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
    *5 Area Penggunaan AI di BD*

    1. Riset pasar segmen
    2. Profiling prospek
    3. Brief visit nasabah
    4. Pitch material
    5. Coverage event & korespondensi
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

    - Sebutkan *spesifik* apa yang kurang
    - Minta tulis ulang dengan perbaikan terdaftar
    - Iterasi 2–3 kali sebelum manual edit
    - Selalu validasi data ke sumber asli
  ]),
)

#v(0.8em)

#block(fill: rgb("#fef3c7"), inset: 12pt, radius: 4pt, width: 100%, [
  *Template Prompt Universal*

  #v(0.3em)

  #text(font: ("Menlo", "Courier New"), size: 9.5pt)[
    Saya \[ROLE\] di BSI, fokus segmen \[SEGMEN\].

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
// 9. GLOSSARY
// ============================================================

= Glossary

#table(
  columns: (auto, 1fr),
  stroke: (x, y) => if y == 0 { (bottom: 1pt + brand) } else { (bottom: 0.5pt + rgb("#e2e8f0")) },
  [*Istilah*], [*Arti*],
  [*Claude*], [AI assistant produksi Anthropic, fokus pada eksekusi tugas multi-langkah],
  [*Claude Code*], [Bentuk Claude yang berjalan sebagai aplikasi terminal (CLI). Bisa baca/tulis file, jalankan tool, akses web],
  [*LLM*], [Large Language Model — jenis AI yang dilatih dengan teks dan menghasilkan teks],
  [*Prompt*], [Instruksi yang kita berikan ke AI, dalam bahasa natural],
  [*Markdown*], [Format teks dengan formatting ringan, mirip yang dipakai di WhatsApp],
  [*CSV*], [Comma-Separated Values — format teks untuk data tabular, kompatibel dengan Excel],
  [*Pandoc*], [Tool konversi dokumen antar-format (DOCX, PDF, Markdown, dll)],
  [*Whisper*], [Tool transkripsi audio ke teks, jalan di laptop, tidak perlu upload ke cloud],
  [*Playwright*], [Tool otomatisasi browser — AI bisa pakai untuk akses situs yang perlu login],
  [*Iterasi*], [Mengulang prompt dengan perbaikan, sampai output sesuai],
  [*Validasi*], [Mengecek kebenaran output AI terhadap sumber terpercaya — *wajib* untuk fakta spesifik],
)

// ============================================================
// 10. LANGKAH LANJUTAN
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
