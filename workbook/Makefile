TYPST_SOURCES := WORKBOOK.typ BOSS-TRACK.typ
PDFS := $(TYPST_SOURCES:.typ=.pdf)

MMD_SOURCES := $(wildcard diagrams/*.mmd)
PNG_DIAGRAMS := $(MMD_SOURCES:.mmd=.png)

PUPPETEER_CONFIG := diagrams/puppeteer-config.json

.PHONY: all watch clean diagrams

all: $(PDFS)

%.pdf: %.typ $(PNG_DIAGRAMS)
	typst compile $<

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
	rm -f $(PDFS)
