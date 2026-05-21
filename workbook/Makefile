TYPST_SOURCES := WORKBOOK.typ BOSS-TRACK.typ
PDFS := $(TYPST_SOURCES:.typ=.pdf)

MMD_SOURCES := $(wildcard diagrams/*.mmd)
SVG_DIAGRAMS := $(MMD_SOURCES:.mmd=.svg)

PUPPETEER_CONFIG := diagrams/puppeteer-config.json

.PHONY: all watch clean diagrams

all: $(PDFS)

%.pdf: %.typ $(SVG_DIAGRAMS)
	typst compile $<

diagrams: $(SVG_DIAGRAMS)

diagrams/%.svg: diagrams/%.mmd $(PUPPETEER_CONFIG)
	mmdc -i $< -o $@ -b white -p $(PUPPETEER_CONFIG)

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
