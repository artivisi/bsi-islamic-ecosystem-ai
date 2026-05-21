#set document(
  title: "Workshop AI ISE BSI — Track Pengamat (iPad)",
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
    #text(fill: accent, size: 9pt, weight: "bold")[PROMPT (iPad)]\
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

#let flow-block(arah, dari, ke, isi, lewat) = block(
  stroke: 1pt + brand,
  inset: 10pt,
  radius: 4pt,
  width: 100%,
  [
    #text(fill: accent, size: 9pt, weight: "bold")[#upper(arah)]\
    #grid(
      columns: (auto, 1fr),
      column-gutter: 0.8em,
      row-gutter: 0.3em,
      text(weight: "bold", size: 9.5pt)[Dari:], text(size: 9.5pt)[#dari],
      text(weight: "bold", size: 9.5pt)[Ke:], text(size: 9.5pt)[#ke],
      text(weight: "bold", size: 9.5pt)[Isi:], text(size: 9.5pt)[#isi],
      text(weight: "bold", size: 9.5pt)[Lewat:], text(size: 9.5pt)[#lewat],
    )
  ]
)

// ============================================================
// COVER
// ============================================================

#set page(numbering: none, margin: (x: 2.5cm, y: 3cm))

#align(center)[
  #v(1.5cm)
  #image("assets/logo-artivisi.svg", width: 5cm)
  #v(1cm)
  #text(fill: accent, size: 11pt, weight: "bold")[
    #upper[Track Pengamat — iPad]
  ]
  #v(0.5em)
  #text(fill: brand, size: 26pt, weight: "bold")[
    Mini-Workshop\
    untuk Pimpinan / Pengamat
  ]
  #v(1.2em)
  #text(fill: mute, size: 12pt)[
    Pendamping Workshop Penggunaan AI\
    untuk Islamic Ecosystem Business Development
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
    *Endy Muhardin* · PT ArtiVisi Intermedia
  ]
]

#pagebreak()

#set page(numbering: "1 / 1", margin: (x: 2.2cm, top: 2.5cm, bottom: 2cm))
#counter(page).update(1)

// ============================================================
// 1. PENGANTAR
// ============================================================

= Pengantar

Dokumen ini melengkapi *WORKBOOK utama*. Khusus untuk Anda yang ikut workshop sambil pakai *iPad* — biasanya pimpinan atau pengamat yang ingin terlibat aktif tanpa duduk di salah satu kelompok lab.

Bedanya track ini dari workbook utama: di sini, peran Anda *bukan* mengerjakan lab sendiri, melainkan menjadi *kondektur dialog* antara Anda dan kelompok-kelompok lewat *pertukaran artifact yang dihasilkan AI*. Sepanjang hari Anda akan:

- *Mengirim* arahan, pertanyaan, dan insight yang dihasilkan Claude di iPad
- *Menerima* output kelompok (CSV, brief, pitch deck) untuk diolah balik
- *Kirim ulang* hasil olahan agar kelompok menajamkan output mereka

Satu hari workshop punya *4 putaran pertukaran*. Tiap putaran selaras dengan satu lab kelompok. File mengalir lewat *WhatsApp, Telegram, Google Drive, atau email* — pakai channel yang paling natural untuk tim Anda.

== Cara Kerja: Dialog via Artifact

#tip[
  Claude di iPad menghasilkan artifact yang bisa langsung *didownload* sebagai file (DOCX, XLSX, PPTX, PDF, Markdown). File itu yang Anda share ke kelompok. Kelompok yang menerima bisa upload-kan ke Claude di laptop lab mereka — sehingga artifact Anda jadi *konteks tertulis* yang langsung dipakai mereka iterate.
]

Alur tipikal satu putaran:

1. *Anda terima* file dari kelompok (CSV daftar prospek, brief visit, dst) via WA/Drive
2. *Anda upload* ke chat Claude di iPad Project "BSI ISE 23 Mei"
3. *Anda prompt* Claude untuk olah jadi artifact balasan (challenge questions, synthesis, tracker)
4. *Anda download* artifact, *share* balik ke kelompok via channel yang sama
5. Kelompok upload artifact Anda ke Claude lab mereka, iterate output mereka berikutnya

== Diagram Alur 4 Putaran

#figure(
  image("diagrams/boss-interaction.png", width: 100%),
)

== Apa yang Bisa Anda Lakukan di iPad

#table(
  columns: (1.2fr, 2fr),
  stroke: (x, y) => if y == 0 { (bottom: 1pt + brand) } else { (bottom: 0.5pt + rgb("#e2e8f0")) },
  [*Fitur*], [*Pakai Untuk*],
  [Upload file hingga 30MB], [Terima output kelompok via Files / Photos / share extension],
  [Artifact downloadable], [Generate DOCX / PPTX / XLSX / PDF / Markdown langsung dari chat],
  [Mermaid chart], [Render diagram perbandingan, distribusi, peta ekosistem],
  [Projects], [Organize semua dialog hari ini di satu folder konteks tetap],
  [Voice input], [Dikte prompt sambil tangan sibuk],
  [Split View], [Workbook PDF di kiri, Claude di kanan],
  [Web search bawaan], [Verifikasi data prospek yang muncul di output kelompok],
)

Yang *tidak bisa* di iPad (jangan dicoba di hari workshop): Claude Code CLI, JSON folder-as-database (workbook §8), Playwright (workbook §8). Untuk kapabilitas penuh dari iPad pasca-workshop, pakai *Claude Code on the Web + GitHub* (workbook utama §11).

// ============================================================
// 2. PERSIAPAN
// ============================================================

= Persiapan Sebelum Workshop

1. Install *Claude iOS app* (App Store, search "Claude by Anthropic")
2. Login dengan akun *Pro* atau *Max* (perlu untuk artifacts & file upload besar)
3. Sehari sebelum workshop, buka `claude.ai` di browser — buat satu *Project* bernama "BSI ISE Workshop 23 Mei 2026". Project hanya bisa dibuat dari web, tapi nanti seluruh chat hari ini dilakukan dari iPad di dalam Project ini
4. Pastikan Anda ada di *grup WhatsApp workshop* (atau channel komunikasi yang dipakai BSI hari itu)
5. Optional: download *workbook utama PDF* ke Files app supaya bisa Split View dengan Claude saat butuh referensi

== Channel Putaran File

#table(
  columns: (auto, 1fr),
  stroke: (x, y) => if y == 0 { (bottom: 1pt + brand) } else { (bottom: 0.5pt + rgb("#e2e8f0")) },
  [*Channel*], [*Paling Cocok Untuk*],
  [WhatsApp grup workshop], [Pesan broadcast ke semua kelompok, file ringan (di bawah 100MB)],
  [WhatsApp personal/grup kecil], [Pesan yang spesifik untuk 1 kelompok (challenge questions, dst)],
  [Google Drive / OneDrive], [File besar (PPTX, XLSX), folder per kelompok, akses pasca-workshop],
  [Telegram], [Alternatif WA, lebih lapang untuk file besar],
  [Email], [Komunikasi formal, follow-up pasca-workshop],
)

#tip[
  Sebelum workshop, sepakati dengan instruktur dan kelompok-kelompok: channel mana yang dipakai untuk apa. Misal: WA grup untuk broadcast, Drive untuk file output, email untuk follow-up pasca-workshop.
]

// ============================================================
// 3. PERTUKARAN 1
// ============================================================

= Putaran 1: Anda Buka dengan Brief Strategis

*Waktu:* sebelum Lab 1 dimulai (09:00 – 10:45, selama sesi presentasi konsep + setup)

#flow-block(
  "Anda → Semua Kelompok",
  [Anda (Claude di iPad)],
  [5 kelompok],
  [Brief framing strategis 1 halaman + daftar challenge questions],
  [WhatsApp grup workshop atau shared Drive],
)

== Mengapa Putaran Ini

Kelompok masuk Lab 1 dengan lensa segmen masing-masing. Anda yang punya helicopter view 5 segmen sekaligus + agenda strategis 2026 ISE. Brief Anda sebelum Lab 1 dimulai akan tajamkan fokus mereka — sehingga riset Lab 1 selaras dengan prioritas unit.

== Generate Brief Strategis

#prompt[
Buat brief 1 halaman tentang posisi Islamic Ecosystem BSI saat ini.
Struktur:

1. *Konteks 2026* — 3 kalimat tentang ke mana ISE bergerak tahun ini
2. *5 segmen prioritas* (pesantren, sekolah Islam, RS Islam, ZISWAF,
   halal F&B) — ringkas posisi BSI di tiap segmen dalam 2–3 kalimat
3. *3 agenda strategis 2026* untuk unit ISE
4. *Pesan untuk kelompok*: 1 kalimat per segmen tentang apa yang
   harus mereka cari saat riset prospek hari ini

Format: markdown yang bisa di-export ke DOCX atau PDF.
]

Iterasi sampai brief terasa pas dengan pengetahuan Anda. *Download* sebagai DOCX (klik artifact → download → Save to Files).

== Generate Challenge Questions

#prompt[
Berdasar brief di atas, susun 5 challenge questions yang akan saya
broadcast ke kelompok untuk dijawab di akhir Lab 1. Tiap pertanyaan
harus:
- Terbuka, mengundang penjelasan kualitatif
- Menggali kedalaman riset, bukan sekadar verifikasi data
- Connect ke 3 agenda strategis di brief

Format: numbered list, siap di-copy ke pesan WA.
]

== Kirim ke Kelompok

- *Brief DOCX*: upload ke shared Drive folder workshop, broadcast link via WA grup\
- *Challenge questions*: copy text langsung ke WA grup

Instruktur akan minta kelompok membaca brief Anda di awal Lab 1 (5 menit) sebagai konteks strategis sebelum mereka mulai riset.

// ============================================================
// 4. PERTUKARAN 2
// ============================================================

= Putaran 2: Critique Hasil Lab 1, Arahkan Lab 2

*Waktu:* selama Ishoma (11:45 – 12:45)

#flow-block(
  "Kelompok → Anda",
  [5 kelompok],
  [Anda],
  [5 CSV daftar prospek (hasil Lab 1)],
  [Upload ke shared Drive folder per-kelompok, atau kirim via WA personal ke Anda],
)

#v(0.5em)

#flow-block(
  "Anda → Kelompok",
  [Anda (Claude di iPad)],
  [Tiap kelompok individual + grup],
  [5 paket challenge questions per kelompok + 1 catatan prospek lintas-segmen],
  [WA personal untuk per-kelompok, WA grup untuk catatan lintas-segmen],
)

== Tahap 2.1 — Kumpulkan File

Instruksikan via WA grup di awal Ishoma:

#raw(block: true, "Mohon tiap kelompok upload file CSV prospek Lab 1 ke
folder Drive [link] paling lambat jam 12:15. Atau kirim
langsung ke saya via WA. Nama file: prospek-<segmen>.csv")

Buka iPad, ambil semua 5 CSV via Files app, drag ke chat Claude di Project workshop.

== Tahap 2.2 — Sintesis Lintas Kelompok

#prompt[
Saya upload 5 CSV daftar prospek dari 5 kelompok berbeda — masing-masing
segmen ekosistem Islam. Generate:

1. Tabel ringkasan: jumlah prospek per segmen, distribusi skor potensi,
   top 3 prospek lintas segmen
2. *1 catatan lintas-segmen* berisi: prospek yang muncul di 2+ kelompok
   (lembaga yang relevan untuk lebih dari satu segmen), pola yang
   muncul lintas segmen
3. *Mermaid chart* distribusi potensi per segmen

Format: 1 dokumen markdown gabungan, siap di-export PDF.
]

== Tahap 2.3 — Challenge Questions Per Kelompok

#prompt[
Untuk masing-masing dari 5 CSV (per kelompok), generate paket challenge
questions Lab 2:
- 2 kekuatan riset mereka (apa yang dilakukan baik)
- 3 challenge questions (apa yang masih perlu didalami sebelum brief
  visit Lab 2)
- 1 prospek prioritas yang direkomendasikan jadi target Lab 2

Output: 5 paket, satu paket per kelompok. Tiap paket dalam markdown
yang bisa di-copy ke pesan WA personal ke kelompok terkait.
]

== Tahap 2.4 — Kirim Balik

- *Catatan lintas-segmen + chart*: download sebagai PDF, upload ke shared Drive, broadcast link via WA grup ("buka sebelum mulai Lab 2")
- *Challenge questions per kelompok*: copy paket masing-masing dan kirim via WA personal ke ketua kelompok

Kelompok membuka pesan ini di awal Lab 2 — instruksi: upload challenge questions PDF/markdown ke Claude laptop mereka sebelum mulai brief visit, sehingga konteks Anda jadi bagian dari proses Lab 2 mereka.

// ============================================================
// 5. PERTUKARAN 3
// ============================================================

= Putaran 3: Cross-Cutting Insight untuk Pitch Lab 3

*Waktu:* coffee break (14:15 – 14:30) — singkat tapi penting

#flow-block(
  "Kelompok → Anda",
  [5 kelompok],
  [Anda],
  [5 brief visit (output Lab 2, dalam markdown atau PDF)],
  [Shared Drive folder per-kelompok],
)

#v(0.5em)

#flow-block(
  "Anda → Semua Kelompok",
  [Anda (Claude di iPad)],
  [5 kelompok],
  [1 dokumen "Strategic Hooks" — pattern lintas brief untuk dipakai di pitch deck Lab 3],
  [Shared Drive folder workshop + broadcast WA grup],
)

== Tahap 3.1 — Kumpulkan Brief Visit

Akhir Lab 2 (sekitar 13:30), broadcast via WA grup:

#raw(block: true, "Brief visit Lab 2 mohon upload ke folder Drive
[link]/brief-visit/ paling lambat coffee break. Sub-folder
per kelompok. Format: markdown atau PDF.")

== Tahap 3.2 — Generate Strategic Hooks

Saat coffee break, upload semua 5 brief visit ke Claude di iPad.

#prompt[
Saya upload 5 brief visit nasabah dari 5 kelompok (5 segmen berbeda).
Tugas Anda: temukan pattern lintas brief yang akan membuat pitch
deck Lab 3 lebih kuat.

Generate dokumen "Strategic Hooks" berisi:

1. *3 kebutuhan keuangan syariah yang konsisten muncul* lintas
   2+ segmen (misal: cash management muncul di RS Islam dan PT
   Islam) — pitch deck yang mention ini akan resonate lebih luas
2. *2 narrative angle yang bisa dipakai semua kelompok* — frame
   bercerita yang relevan untuk audiens muslim profesional
3. *1 differentiator BSI* yang muncul natural dari brief — apa
   yang BSI bisa offer yang bank lain tidak bisa

Format: PDF 1 halaman, design clean, font besar agar mudah dibaca
saat Lab 3 sambil berdiri di sekitar laptop kelompok.
]

== Tahap 3.3 — Share ke Semua Kelompok

Download PDF, upload ke shared Drive folder workshop. Broadcast link via WA grup:

#raw(block: true, "Strategic Hooks dari saya untuk pitch deck Lab 3
[link]. Mohon kelompok upload ke Claude laptop sebelum
mulai bangun pitch deck — supaya angle pitch Anda lebih
strategis, bukan generic.")

Instruktur memastikan tiap kelompok upload PDF ini ke Claude mereka di awal Lab 3.

// ============================================================
// 6. PERTUKARAN 4
// ============================================================

= Putaran 4: Konsolidasi Tracker & Komitmen Follow-up

*Waktu:* akhir Lab 4 (14:50 – 15:00) sampai sesi penutup (15:00 – 15:15)

#flow-block(
  "Kelompok → Anda",
  [5 kelompok],
  [Anda],
  [5 paket akhir: brief Lab 2 (final), pitch outline Lab 3, paket coverage Lab 4],
  [Shared Drive folder per-kelompok (sudah ada sejak Putaran 2-3)],
)

#v(0.5em)

#flow-block(
  "Anda → Tim ISE (post-workshop)",
  [Anda (Claude di iPad)],
  [Tim ISE BSI keseluruhan],
  [1 tracker XLSX lintas tim + 5 draft email follow-up 30 hari],
  [Shared Drive untuk tracker, email scheduled dikirim 2 hari pasca-workshop],
)

== Tahap 4.1 — Bangun Consolidated Tracker

#prompt[
Saya upload paket akhir dari 5 kelompok: brief visit, pitch outline,
paket coverage event. Buat *tracker-prospek-prioritas.xlsx* dengan
struktur:

Sheet 1 — Tracker Utama:
- nama_lembaga, segmen, kota, kelompok_pic, potensi, produk_bsi_relevan,
  next_action_30hr, owner, deadline (22 Juni 2026)

Sheet 2 — Ringkasan:
- Total prospek per segmen
- Distribusi potensi
- Top 5 prospek lintas segmen

Sheet 3 — Notes per Kelompok:
- Catatan kualitatif tentang quality riset, pitch, dan coverage

Generate sebagai file XLSX downloadable.
]

Download XLSX, upload ke shared Drive folder workshop. Broadcast link via WA grup.

== Tahap 4.2 — Draft Email Follow-up Per Kelompok

#prompt[
Susun 5 draft email follow-up — satu per kelompok — yang akan saya
kirim *2 hari pasca-workshop* (Senin 25 Mei 2026). Tiap email berisi:

- Subject yang specific ke kelompok (sebut segmen mereka)
- Apresiasi spesifik (1 paragraf): apa yang mereka lakukan baik
  hari ini, kutip 1 detail dari output mereka sebagai bukti
- Komitmen 3 action items 30 hari (diambil dari brief Lab 2 mereka)
- Tawaran coaching session 1-on-1 di minggu ke-3 (8 Juni) untuk
  review progres
- Signature Anda

Format: 1 file DOCX berisi 5 email berurutan. Tiap email dipersonalisasi
sesuai kelompoknya.
]

Download DOCX. Jadwal kirim email ke kelompok masing-masing pada Senin pagi (25 Mei).

== Tahap 4.3 — Closing di Q&A

Pakai tracker XLSX dan strategic hooks (Putaran 3) saat sesi Q&A:

- *Tunjukkan tracker* — bahwa hari ini menghasilkan database prospek prioritas yang siap di-eksekusi 30 hari ke depan
- *Highlight pattern* — 3 kebutuhan lintas segmen dari Putaran 3 adalah agenda BSI berikutnya
- *Commit follow-up* — coaching session 1-on-1 di minggu ke-3

#tip[
  Output Putaran 4 yang paling berharga bukan tracker-nya sendiri, tapi *gesture*-nya: dalam 30 menit dari workshop selesai, kelompok dapat tracker konsolidasi + email pribadi. Pesannya: "saya benar-benar mengikuti hari ini, output kalian dipakai."
]

// ============================================================
// 7. PASCA-WORKSHOP
// ============================================================

= Setelah Workshop

== Output yang Anda Bawa Pulang

- *Brief strategis ISE 2026* (Putaran 1) — bahan referensi internal
- *Catatan lintas-segmen + chart distribusi* (Putaran 2)
- *Strategic Hooks* (Putaran 3) — narrative angle untuk semua pitch ISE
- *tracker-prospek-prioritas.xlsx* (Putaran 4) — basis follow-up 30 hari
- *5 draft email* (Putaran 4) — siap kirim Senin

== Lanjutkan Pola Dialog Pasca-Workshop

Pola "tim kirim output → Anda olah dengan Claude → Anda kirim balik" yang dijalankan hari ini bisa dilanjutkan di pekerjaan harian:

- *Mingguan*: tim kirim update prospek, Anda generate tracker terbaru + insight pattern
- *Per visit*: BD kirim foto / catatan visit, Anda generate brief / follow-up plan
- *Per pitch*: BD kirim draft pitch, Anda generate critique + variation

Untuk pola yang lebih besar (database 100+ prospek yang tumbuh terus, otomasi riset paralel), pindah ke *Claude Code on the Web + GitHub* — detail di workbook utama §11. Ini cara satu-satunya mendapat kapabilitas Claude Code dari iPad.

#tip[
  Coba lanjutkan tracker Putaran 4 jadi GitHub repo: tiap update follow-up dengan tim, push perubahan via Claude on the Web. Dalam 3 bulan, Anda punya database prospek hidup yang bisa di-query dari iPad kapan saja.
]

== Kontak

Endy Muhardin · PT ArtiVisi Intermedia\
Email: endy.muhardin\@gmail.com\
Konsultasi tanya jawab terbuka selama 14 hari pasca-workshop.

#v(2em)

#align(center)[
  #line(length: 30%, stroke: 1pt + accent)
  #v(0.5em)
  #text(fill: mute, size: 10pt, style: "italic")[Selamat mengamati & mengarahkan.]
]
