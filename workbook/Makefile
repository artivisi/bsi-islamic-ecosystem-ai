SOURCE := WORKBOOK.typ
OUTPUT := $(SOURCE:.typ=.pdf)

.PHONY: all watch clean

all: $(OUTPUT)

$(OUTPUT): $(SOURCE)
	typst compile $(SOURCE)

watch:
	typst watch $(SOURCE)

clean:
	rm -f $(OUTPUT)
