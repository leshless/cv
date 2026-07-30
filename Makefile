BUILD = build

.PHONY: clean watch

default: all

clean:
	rm -rf ./*.pdf

all: cv.pdf

cv.pdf: cv.typ
	typst compile --root . cv.typ