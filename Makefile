BUILD = build

.PHONY: clean watch

default: all

clean:
	rm -rf ./*.pdf

all: cv.pdf cv-en.pdf cv-ru.pdf

cv.pdf: cv.typ
	typst compile --root . cv.typ cv.pdf

cv-en.pdf: cv.typ
	typst compile --root . --input lang=en cv.typ cv-en.pdf

cv-ru.pdf: cv.typ
	typst compile --root . --input lang=ru cv.typ cv-ru.pdf