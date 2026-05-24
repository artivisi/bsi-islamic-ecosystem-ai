TYPST_SOURCES := WORKBOOK.typ BOSS-TRACK.typ
PDFS := $(TYPST_SOURCES:.typ=.pdf)

DOCS_DIR := ../docs
DOCS_PDFS := $(addprefix $(DOCS_DIR)/,$(PDFS))

# File sample data peserta yang dipublikasikan ke slide (GitHub Pages).
# Sengaja TIDAK termasuk README.md (kunci jawaban inkonsistensi) dan
# generate.py (build tool) — keduanya tetap ada di repo, tapi tidak dibagikan
# ke peserta agar latihan Sesi 5.1 tidak ter-spoiler.
SAMPLE_FILES := rkap-dept-1.xlsx rkap-dept-2.xlsx rkap-dept-3.xlsx \
	realisasi-q1-2027.csv agenda-radir.md
DOCS_SAMPLE := $(addprefix $(DOCS_DIR)/sample-data/lab5/,$(SAMPLE_FILES))

MMD_SOURCES := $(wildcard diagrams/*.mmd)
PNG_DIAGRAMS := $(MMD_SOURCES:.mmd=.png)

PUPPETEER_CONFIG := diagrams/puppeteer-config.json

.PHONY: all watch clean diagrams

all: $(PDFS) $(DOCS_PDFS) $(DOCS_SAMPLE)

%.pdf: %.typ $(PNG_DIAGRAMS)
	typst compile $<

$(DOCS_DIR)/%.pdf: %.pdf
	cp $< $@

$(DOCS_DIR)/sample-data/lab5/%: sample-data/lab5/%
	@mkdir -p $(dir $@)
	cp $< $@

diagrams: $(PNG_DIAGRAMS)

diagrams/%.png: diagrams/%.mmd $(PUPPETEER_CONFIG)
	mmdc -i $< -o $@ -b white -w 1800 -p $(PUPPETEER_CONFIG)

$(PUPPETEER_CONFIG):
	@echo "==> $(PUPPETEER_CONFIG) belum dibuat."
	@echo "    Diagram Mermaid butuh chrome-headless-shell untuk render via mmdc."
	@echo "    Setup sekali per mesin:"
	@echo "      1. npx puppeteer browsers install chrome-headless-shell"
	@echo "      2. Buat $(PUPPETEER_CONFIG):"
	@echo "         { \"executablePath\": \"<path ke chrome-headless-shell>\" }"
	@exit 1

watch:
	typst watch WORKBOOK.typ

clean:
	rm -f $(PDFS) $(DOCS_PDFS) $(DOCS_SAMPLE)
